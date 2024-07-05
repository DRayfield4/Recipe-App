using System;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace RecipeRedux
{
    public partial class RecipeDetailsForm : Form
    {
        private int recipeId;
        private int currentUserId;
        private HomepageForm homepageForm;

        private Label uxRecipeNameLabel;
        private Label uxCookTimeLabel;
        private Label uxIngredientsLabel;
        private TextBox uxInstructionsText;
        private Button uxFavoriteButton;

        public RecipeDetailsForm(int recipeId, int userId, HomepageForm homepage)
        {
            InitializeComponent();
            this.recipeId = recipeId;
            this.currentUserId = userId;
            this.homepageForm = homepage;
            InitializeCustomComponents();
            AdjustFormSize();
            LoadRecipeDetails(recipeId);
        }

        private void InitializeCustomComponents()
        {
            this.AutoScroll = true;
            this.Padding = new Padding(30);

            uxRecipeNameLabel = new Label
            {
                Font = new Font("Arial", 24, FontStyle.Bold | FontStyle.Underline),
                Dock = DockStyle.Top,
                AutoSize = true,
                MaximumSize = new Size(this.Width - 60, 0),
                MinimumSize = new Size(this.Width - 60, 0)
            };

            uxCookTimeLabel = new Label
            {
                Font = new Font("Arial", 12, FontStyle.Regular),
                Dock = DockStyle.Top,
                AutoSize = true,
                Padding = new Padding(0, 10, 0, 0)
            };

            uxIngredientsLabel = new Label
            {
                Font = new Font("Arial", 12, FontStyle.Regular),
                Dock = DockStyle.Top,
                AutoSize = true,
                Padding = new Padding(0, 10, 0, 0)
            };

            uxInstructionsText = new TextBox
            {
                Multiline = true,
                ReadOnly = true,
                ScrollBars = ScrollBars.Vertical,
                Font = new Font("Arial", 12, FontStyle.Regular),
                Dock = DockStyle.Fill,
                Padding = new Padding(0, 10, 0, 0)
            };

            uxFavoriteButton = new Button
            {
                Text = "Favorite Recipe",
                Font = new Font("Arial", 12, FontStyle.Bold),
                Dock = DockStyle.Bottom,
                Height = 40,
                Padding = new Padding(5)
            };
            uxFavoriteButton.Click += uxFavoriteButton_Click;

            this.Controls.Add(uxRecipeNameLabel);
            this.Controls.Add(uxCookTimeLabel);
            this.Controls.Add(uxIngredientsLabel);
            this.Controls.Add(uxInstructionsText);
            this.Controls.Add(uxFavoriteButton);
        }

        private void AdjustFormSize()
        {
            int requiredWidth = uxRecipeNameLabel.PreferredWidth + 60;
            int minWidth = 600;
            this.Width = Math.Max(requiredWidth, minWidth);
            this.Height = 600;
        }

        private void LoadRecipeDetails(int recipeId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"
                    SELECT R.Name, R.Minutes, R.Steps,
                           STRING_AGG(I.Name, ', ') WITHIN GROUP (ORDER BY I.Name) AS Ingredients
                    FROM Recipe R
                    JOIN RecipeIngredient RI ON R.RecipeID = RI.RecipeID
                    JOIN Ingredient I ON RI.IngredientID = I.IngredientID
                    WHERE R.RecipeID = @RecipeID
                    GROUP BY R.RecipeID, R.Name, R.Minutes, R.Steps";

                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@RecipeID", recipeId);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            uxRecipeNameLabel.Text = reader.GetString(0);
                            uxCookTimeLabel.Text = $"\r\nCook time: {reader.GetInt32(1)} minutes";
                            string ingredientsText = reader.GetString(3);
                            uxIngredientsLabel.Text = "\r\nIngredients:\r\n- " + string.Join("\r\n- ", ingredientsText.Split(',').Select(i => i.Trim())) + "\r\n\r\n";

                            string stepsText = reader.GetString(2);
                            var stepsList = stepsText.Split(new string[] { ", " }, StringSplitOptions.RemoveEmptyEntries).Select((step, index) => $"{index + 1}. {step.Trim()}");
                            uxInstructionsText.Text = "Instructions:\r\n" + string.Join("\r\n", stepsList);

                            uxInstructionsText.SelectionStart = 0;
                            uxInstructionsText.SelectionLength = 0;
                        }
                        else
                        {
                            MessageBox.Show("Recipe details not found.");
                        }
                    }
                }

                var checkQuery = "SELECT COUNT(*) FROM FavoriteRecipes WHERE UserID = @UserID AND RecipeID = @RecipeID";
                using (var checkCommand = new SqlCommand(checkQuery, connection))
                {
                    checkCommand.Parameters.AddWithValue("@UserID", currentUserId);
                    checkCommand.Parameters.AddWithValue("@RecipeID", recipeId);
                    int count = (int)checkCommand.ExecuteScalar();
                    if (count > 0)
                    {
                        uxFavoriteButton.Text = "Unfavorite Recipe";
                    }
                    else
                    {
                        uxFavoriteButton.Text = "Favorite Recipe";
                    }
                }
            }
        }

        private void uxFavoriteButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                var checkQuery = "SELECT COUNT(*) FROM FavoriteRecipes WHERE UserID = @UserID AND RecipeID = @RecipeID";
                using (var checkCommand = new SqlCommand(checkQuery, connection))
                {
                    checkCommand.Parameters.AddWithValue("@UserID", currentUserId);
                    checkCommand.Parameters.AddWithValue("@RecipeID", recipeId);
                    int count = (int)checkCommand.ExecuteScalar();

                    if (count > 0)
                    {
                        // Recipe is already a favorite, remove it
                        var deleteQuery = "DELETE FROM FavoriteRecipes WHERE UserID = @UserID AND RecipeID = @RecipeID";
                        using (var deleteCommand = new SqlCommand(deleteQuery, connection))
                        {
                            deleteCommand.Parameters.AddWithValue("@UserID", currentUserId);
                            deleteCommand.Parameters.AddWithValue("@RecipeID", recipeId);
                            deleteCommand.ExecuteNonQuery();
                            uxFavoriteButton.Text = "Favorite Recipe";
                        }
                    }
                    else
                    {
                        // Recipe is not a favorite, add it
                        var insertQuery = "INSERT INTO FavoriteRecipes (UserID, RecipeID) VALUES (@UserID, @RecipeID)";
                        using (var insertCommand = new SqlCommand(insertQuery, connection))
                        {
                            insertCommand.Parameters.AddWithValue("@UserID", currentUserId);
                            insertCommand.Parameters.AddWithValue("@RecipeID", recipeId);
                            insertCommand.ExecuteNonQuery();
                            uxFavoriteButton.Text = "Unfavorite Recipe";
                        }
                    }

                    homepageForm.LoadFavorites();
                }
            }
        }
    }
}