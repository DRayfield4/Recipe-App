using System;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace RecipeRedux
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void uxSignInButton_Click(object sender, EventArgs e)
        {
            string email = uxEXEmailTextbox.Text;
            string password = uxEXPasswordTextbox.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Please enter an email and password.");
                return;
            }

            int userId = GetUserIdIfValid(email, password);
            if (userId > 0) // User ID found and password is correct
            {
                HomepageForm homeForm = new HomepageForm(userId);
                homeForm.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Incorrect email or password.");
            }
        }

        private int GetUserIdIfValid(string email, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            string query = "SELECT UserID, PasswordHash FROM Users WHERE Email = @Email";
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string storedHash = reader["PasswordHash"].ToString();
                            int userId = Convert.ToInt32(reader["UserID"]);
                            if (BCrypt.Net.BCrypt.Verify(password, storedHash))
                            {
                                return userId;
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private void uxCreateAccountButton_Click(object sender, EventArgs e)
        {
            string firstName = uxFTFirstNameTextbox.Text;
            string lastName = uxFTLastNameTextbox.Text;
            string email = uxFTEmailTextbox.Text;
            string password = uxFTPasswordTextbox.Text;
            string confirmPassword = uxFTPasswordCheckTextbox.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                MessageBox.Show("Please fill in all fields!");
                return;
            }

            if (password != confirmPassword)
            {
                MessageBox.Show("Passwords do not match. Please try again.");
                return;
            }

            if (UserExists(email))
            {
                MessageBox.Show("An account with this email already exists.");
                return;
            }

            string hashedPassword = HashPassword(password);
            if (CreateUser(email, firstName, lastName, hashedPassword))
            {
                MessageBox.Show("Account created successfully.");
            }
            else
            {
                MessageBox.Show("Failed to create an account.");
            }
        }

        private bool UserExists(string email)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            string query = "SELECT COUNT(1) FROM Users WHERE Email = @Email";
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    int result = (int) command.ExecuteScalar();
                    return result > 0;
                }
            }
        }

        private string HashPassword(string password)
        {
            return BCrypt.Net.BCrypt.HashPassword(password);
        }

        private bool CreateUser(string email, string firstName, string lastName, string passwordHash)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            string query = "INSERT INTO Users (Email, FirstName, LastName, PasswordHash) VALUES (@Email, @FirstName, @LastName, @PasswordHash)";
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@PasswordHash", passwordHash);
                    try
                    {
                        command.ExecuteNonQuery();
                        return true;
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show(ex.ToString());
                        return false;
                    }
                }
            }
        }
    }
}
