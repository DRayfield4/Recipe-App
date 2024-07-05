using System;
using System.Collections.Generic;
using System.Drawing;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace RecipeRedux
{
    public partial class HomepageForm : Form
    {
        private int currentUserId;
        private HashSet<int> displayedIngredients = new HashSet<int>();
        private Dictionary<int, List<Button>> ingredientButtons = new Dictionary<int, List<Button>>();
        private List<int> pantry = new List<int>();

        private ListView pantryListView;
        private ComboBox searchBox;
        private string currentCookTimeFilter = "Cook Time";
        private string currentNumberOfIngredientsFilter = "Number of Ingredients";
        private ListView favoritesListView;

        public HomepageForm(int userId)
        {
            InitializeComponent();
            this.Shown += HomepageForm_Shown;
            currentUserId = userId;
            uxRecipeCountLabel.Visible = false;
            ingredientsTab.Controls.Add(ingredientsPanel);
            ingredientsPanel.Dock = DockStyle.Fill;
            LoadCategoriesAndIngredients();
            uxFindRecipesButton_Click(this, EventArgs.Empty);
            PopulateFilters();
            InitializePantryListView();
            InitializeSearchComponents();
            InitializeFavoritesTab();
            uxRecipeDisplay.DoubleClick += uxRecipeDisplay_DoubleClick;
            LoadFavorites();
            this.FormClosed += HomepageForm_FormClosed;
        }

        private void HomepageForm_Shown(object sender, EventArgs e)
        {
            LoadPantryItemsFromDb();
        }

        private void LoadPantryItemsFromDb()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT IngredientID FROM Pantry WHERE UserID = @UserID";
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserID", currentUserId);
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int ingredientId = reader.GetInt32(0);
                            pantry.Add(ingredientId);
                            SetButtonColor(ingredientId, Color.Green);
                        }
                    }
                }
            }
            UpdatePantryListView();
        }

        private void SetButtonColor(int ingredientId, Color color)
        {
            // Check if the ingredient has a button and update its color
            if (ingredientButtons.TryGetValue(ingredientId, out List<Button> buttons))
            {
                foreach (Button button in buttons)
                {
                    button.BackColor = color;
                }
            }
        }

        private void UpdatePantryListView()
        {
            pantryListView.Items.Clear();
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                foreach (int ingredientId in pantry)
                {
                    string query = "SELECT Name FROM Ingredient WHERE IngredientID = @IngredientID";
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@IngredientID", ingredientId);
                        using (var reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string ingredientName = reader.GetString(0);
                                pantryListView.Items.Add(new ListViewItem(ingredientName));
                            }
                        }
                    }
                }
            }
        }

        private async void LoadCategoriesAndIngredients()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                await connection.OpenAsync();
                string query = @"
                    SELECT c.CategoryID, c.Name AS CategoryName, i.IngredientID, i.Name AS IngredientName 
                    FROM Category c
                    JOIN IngredientCategory ic ON c.CategoryID = ic.CategoryID
                    JOIN Ingredient i ON ic.IngredientID = i.IngredientID
                    ORDER BY c.CategoryID, i.Name";

                using (var command = new SqlCommand(query, connection))
                {
                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        int currentCategory = 0;
                        FlowLayoutPanel currentPanel = null;
                        int ingredientCount = 0;
                        while (reader.Read())
                        {
                            string categoryName = reader.GetString(1);
                            if (categoryName == "Miscellaneous")
                            {
                                continue; // Skips adding buttons for Miscellaneous since they're added in combo box
                            }
                            if (currentCategory != reader.GetInt32(0) || currentPanel == null)
                            {
                                ingredientCount = 0;
                            }
                            BuildCategoryPanel(ref currentCategory, ref currentPanel, reader, ingredientCount);
                            ingredientCount++;
                        }
                        if (currentPanel != null)
                        {
                            this.ingredientsPanel.Controls.Add(currentPanel);
                        }
                    }
                }
            }
            LoadMiscellaneousIngredients();
        }

        private void BuildCategoryPanel(ref int currentCategory, ref FlowLayoutPanel currentPanel, SqlDataReader reader, int count)
        {
            int categoryId = reader.GetInt32(0);
            string categoryName = reader.GetString(1);
            int ingredientId = reader.GetInt32(2);
            string ingredientName = reader.GetString(3);

            if (currentCategory != categoryId)
            {
                if (currentPanel != null)
                {
                    this.ingredientsPanel.Controls.Add(currentPanel);
                }

                Label label = new Label {
                    Text = categoryName, AutoSize = true
                };
                this.ingredientsPanel.Controls.Add(label);

                currentPanel = new FlowLayoutPanel
                {
                    FlowDirection = FlowDirection.LeftToRight,
                    AutoSize = true,
                    AutoSizeMode = AutoSizeMode.GrowAndShrink,
                    WrapContents = true,
                    Width = this.ingredientsPanel.ClientSize.Width - 20
                };
                currentCategory = categoryId;
            }

            if (!displayedIngredients.Contains(ingredientId))
            {
                if (count < 15)
                {
                    Button button = new Button
                    {
                        Text = ingredientName,
                        Tag = ingredientId,
                        Size = new Size(100, 30),
                        Margin = new Padding(2)
                    };
                    button.Click += IngredientButton_Click;
                    if (!ingredientButtons.ContainsKey(ingredientId))
                    {
                        ingredientButtons[ingredientId] = new List<Button>();
                    }
                    ingredientButtons[ingredientId].Add(button);
                    currentPanel.Controls.Add(button);
                    displayedIngredients.Add(ingredientId);
                }
                else if (count == 15)
                {
                    Button moreButton = new Button
                    {
                        Text = "+ Show More",
                        Tag = categoryId,
                        Size = new Size(100, 30),
                        Margin = new Padding(2),
                        BackColor = Color.LightGray
                    };
                    moreButton.Click += MoreButton_Click;
                    currentPanel.Controls.Add(moreButton);
                }
            }
        }

        private async void LoadMiscellaneousIngredients()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                await connection.OpenAsync();
                string query = @"
                    SELECT i.IngredientID, i.Name 
                    FROM Ingredient i
                    JOIN IngredientCategory ic ON i.IngredientID = ic.IngredientID
                    WHERE ic.CategoryID = (SELECT CategoryID FROM Category WHERE Name = 'Miscellaneous')";

                using (var command = new SqlCommand(query, connection))
                {
                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        while (reader.Read())
                        {
                            int ingredientId = reader.GetInt32(0);
                            string ingredientName = reader.GetString(1);
                            uxMiscComboBox.Items.Add(new {
                                Id = ingredientId, Name = ingredientName
                            });
                        }
                    }
                }
            }
            uxMiscComboBox.DisplayMember = "Name";
            uxMiscComboBox.ValueMember = "Id";
        }

        private async void MoreButton_Click(object sender, EventArgs e)
        {
            Button moreButton = (Button)sender;
            int categoryId = (int)moreButton.Tag;
            FlowLayoutPanel parentPanel = (FlowLayoutPanel)moreButton.Parent;
            parentPanel.Controls.Remove(moreButton);

            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                await connection.OpenAsync();
                string query = $@"
                    SELECT i.IngredientID, i.Name 
                    FROM Ingredient i
                    JOIN IngredientCategory ic ON i.IngredientID = ic.IngredientID
                    WHERE ic.CategoryID = {categoryId}
                    ORDER BY i.Name
                    OFFSET 15 ROWS";  // Skip the first 15 rows

                using (var command = new SqlCommand(query, connection))
                {
                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        while (reader.Read())
                        {
                            int ingredientId = reader.GetInt32(0);
                            string ingredientName = reader.GetString(1);

                            // No duplicate buttons
                            if (!displayedIngredients.Contains(ingredientId))
                            {
                                Button button = new Button
                                {
                                    Text = ingredientName,
                                    Tag = ingredientId,
                                    Size = new Size(100, 30),
                                    Margin = new Padding(2)
                                };
                                button.Click += IngredientButton_Click;
                                if (!ingredientButtons.ContainsKey(ingredientId))
                                {
                                    ingredientButtons[ingredientId] = new List<Button>();
                                }
                                ingredientButtons[ingredientId].Add(button);
                                parentPanel.Controls.Add(button);
                                displayedIngredients.Add(ingredientId);
                            }
                        }
                    }
                }
            }
        }

        private void IngredientButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            int ingredientId = (int)clickedButton.Tag;
            TogglePantryItem(ingredientId);
            UpdatePantryListView();
            uxFindRecipesButton_Click(this, EventArgs.Empty);
        }

        private void TogglePantryItem(int ingredientId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                if (pantry.Contains(ingredientId))
                {
                    pantry.Remove(ingredientId);
                    SetButtonColor(ingredientId, SystemColors.Control);

                    // Delete ingredient from the pantry
                    using (var command = new SqlCommand("DELETE FROM Pantry WHERE UserID = @UserID AND IngredientID = @IngredientID", connection))
                    {
                        command.Parameters.AddWithValue("@UserID", currentUserId);
                        command.Parameters.AddWithValue("@IngredientID", ingredientId);
                        command.ExecuteNonQuery();
                    }
                }
                else
                {
                    pantry.Add(ingredientId);
                    SetButtonColor(ingredientId, Color.Green);

                    // Insert ingredient into pantry if it isn't already there
                    using (var command = new SqlCommand("INSERT INTO Pantry (UserID, IngredientID) SELECT @UserID, @IngredientID WHERE NOT EXISTS (SELECT 1 FROM Pantry WHERE UserID = @UserID AND IngredientID = @IngredientID)", connection))
                    {
                        command.Parameters.AddWithValue("@UserID", currentUserId);
                        command.Parameters.AddWithValue("@IngredientID", ingredientId);
                        command.ExecuteNonQuery();
                    }
                }
            }
            UpdatePantryListView();
        }

        private async void uxFindRecipesButton_Click(object sender, EventArgs e)
        {
            uxRecipeDisplay.Items.Clear();
            await LoadRecipesBasedOnFilters();
        }

        private async Task LoadRecipesBasedOnFilters()
        {
            int maxMinutes = ConvertCookTimeToMinutes(currentCookTimeFilter);
            string numberOfIngredientsCondition = GetNumberOfIngredientsCondition(currentNumberOfIngredientsFilter);

            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                await connection.OpenAsync();
                string additionalConditions = "";

                if (maxMinutes > 0)
                {
                    additionalConditions += $" AND R.Minutes <= {maxMinutes}";
                }

                additionalConditions += numberOfIngredientsCondition;

                string query = $@"
                    SELECT R.RecipeID, R.Name
                    FROM Recipe R
                    WHERE NOT EXISTS (
                        SELECT 1
                        FROM RecipeIngredient RI
                        WHERE RI.RecipeID = R.RecipeID
                        AND RI.IngredientID NOT IN (
                            SELECT IngredientID FROM Pantry WHERE UserID = @UserID
                        )
                    ){additionalConditions}";

                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserID", currentUserId);
                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        List<string> recipes = new List<string>();
                        while (reader.Read())
                        {
                            string recipeName = reader.GetString(1);
                            recipes.Add(recipeName);
                        }
                        uxRecipeDisplay.Items.Clear();
                        foreach (string recipe in recipes)
                        {
                            uxRecipeDisplay.Items.Add(recipe);
                        }
                        uxRecipeCountLabel.Visible = true;
                        uxRecipeCountLabel.Text = $"You can make {recipes.Count} recipes";
                    }
                }
            }
        }

        private void PopulateFilters()
        {
            PopulateCookTimeFilter();
            PopulateNumberOfIngredientsFilter();
        }

        private void PopulateCookTimeFilter()
        {
            var cookTimes = new[] {
                "Cook Time", "5 minutes or less", "15 minutes or less", "30 minutes or less", "60 minutes or less", "1-2 hours", "2-3 hours", "4+ hours"
            };
            uxCookTimeFilter.Items.AddRange(cookTimes);
            uxCookTimeFilter.SelectedIndex = 0;
        }

        private void PopulateNumberOfIngredientsFilter()
        {
            var numIngredients = new[] {
                "Number of Ingredients", "3 or less", "5 or less", "10 or less", "10-20 or more"
            };
            uxNumberOfIngredientsFilter.Items.AddRange(numIngredients);
            uxNumberOfIngredientsFilter.SelectedIndex = 0;
        }

        private int ConvertCookTimeToMinutes(string filter)
        {
            switch (filter)
            {
                case "5 minutes or less":
                    return 5;
                case "15 minutes or less":
                    return 15;
                case "30 minutes or less":
                    return 30;
                case "60 minutes or less":
                    return 60;
                case "1-2 hours":
                    return 120;
                case "2-3 hours":
                    return 180;
                case "4+ hours":
                    return 240;
                default:
                    return 0;
            }
        }

        private string GetNumberOfIngredientsCondition(string filter)
        {
            switch (filter)
            {
                case "3 or less":
                    return " AND (SELECT COUNT(*) FROM RecipeIngredient WHERE RecipeID = R.RecipeID) <= 3";
                case "5 or less":
                    return " AND (SELECT COUNT(*) FROM RecipeIngredient WHERE RecipeID = R.RecipeID) <= 5";
                case "10 or less":
                    return " AND (SELECT COUNT(*) FROM RecipeIngredient WHERE RecipeID = R.RecipeID) <= 10";
                case "10-20 or more":
                    return " AND (SELECT COUNT(*) FROM RecipeIngredient WHERE RecipeID = R.RecipeID) >= 10";
                default:
                    return "";
            }
        }

        private async void uxCookTimeFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            currentCookTimeFilter = uxCookTimeFilter.SelectedItem.ToString();
            await LoadRecipesBasedOnFilters();
        }

        private async void uxNumberOfIngredientsFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            currentNumberOfIngredientsFilter = uxNumberOfIngredientsFilter.SelectedItem.ToString();
            await LoadRecipesBasedOnFilters();
        }

        private void InitializePantryListView()
        {
            pantryListView = new ListView
            {
                Dock = DockStyle.Fill,
                View = View.Details,
                FullRowSelect = true,
                Columns = { { "Ingredient", 150 } }
            };
            pantryTab.Controls.Add(pantryListView);
            pantryListView.DoubleClick += PantryListView_DoubleClick;
            UpdatePantryListView();
        }

        private void PantryListView_DoubleClick(object sender, EventArgs e)
        {
            if (pantryListView.SelectedItems.Count == 1)
            {
                string ingredientName = pantryListView.SelectedItems[0].Text;
                int ingredientId = GetIngredientIdByName(ingredientName);
                if (ingredientId != -1)
                {
                    RemoveIngredientFromPantry(ingredientId);
                }
            }
        }

        private int GetIngredientIdByName(string ingredientName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT IngredientID FROM Ingredient WHERE Name = @Name";
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", ingredientName);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return reader.GetInt32(0);
                        }
                    }
                }
            }
            return -1;
        }

        private void RemoveIngredientFromPantry(int ingredientId)
        {
            if (pantry.Contains(ingredientId))
            {
                pantry.Remove(ingredientId);
                SetButtonColor(ingredientId, SystemColors.Control);
                string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand("DELETE FROM Pantry WHERE UserID = @UserID AND IngredientID = @IngredientID", connection))
                    {
                        command.Parameters.AddWithValue("@UserID", currentUserId);
                        command.Parameters.AddWithValue("@IngredientID", ingredientId);
                        command.ExecuteNonQuery();
                    }
                }
                UpdatePantryListView();
                uxFindRecipesButton_Click(this, EventArgs.Empty);
            }
        }

        private void HomepageForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            SavePantryItems();
            Application.Exit();
        }

        private void SavePantryItems()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string deleteQuery = "DELETE FROM Pantry WHERE UserID = @UserID";
                using (var deleteCommand = new SqlCommand(deleteQuery, connection))
                {
                    deleteCommand.Parameters.AddWithValue("@UserID", currentUserId);
                    deleteCommand.ExecuteNonQuery();
                }

                string insertQuery = "INSERT INTO Pantry (UserID, IngredientID) VALUES (@UserID, @IngredientID)";
                foreach (int ingredientId in pantry)
                {
                    using (var insertCommand = new SqlCommand(insertQuery, connection))
                    {
                        insertCommand.Parameters.AddWithValue("@UserID", currentUserId);
                        insertCommand.Parameters.AddWithValue("@IngredientID", ingredientId);
                        insertCommand.ExecuteNonQuery();
                    }
                }
            }
        }

        private void uxMiscComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (uxMiscComboBox.SelectedItem != null)
            {
                var selectedItem = (dynamic)uxMiscComboBox.SelectedItem;
                int ingredientId = selectedItem.Id;

                TogglePantryItem(ingredientId);
                UpdatePantryListView();
                uxFindRecipesButton_Click(this, EventArgs.Empty);
                uxMiscComboBox.SelectedIndex = -1;
            }
        }

        private void uxRecipeDisplay_DoubleClick(object sender, EventArgs e)
        {
            if (uxRecipeDisplay.SelectedItems.Count > 0)
            {
                string recipeName = uxRecipeDisplay.SelectedItems[0].Text;
                int recipeId = GetRecipeIdByName(recipeName);
                var detailsForm = new RecipeDetailsForm(recipeId, currentUserId, this);
                detailsForm.Show();
            }
        }

        private int GetRecipeIdByName(string recipeName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT RecipeID FROM Recipe WHERE Name = @Name";
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", recipeName);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return reader.GetInt32(0);
                        }
                    }
                }
            }
            return -1;
        }

        private void InitializeSearchComponents()
        {
            TableLayoutPanel searchPanel = new TableLayoutPanel
            {
                Dock = DockStyle.Top,
                AutoSize = true,
                AutoSizeMode = AutoSizeMode.GrowAndShrink,
                RowCount = 1,
                ColumnCount = 2,
                Height = 30
            };
            searchPanel.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 70F));
            searchPanel.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 30F));

            searchBox = new ComboBox
            {
                Dock = DockStyle.Fill,
                DropDownStyle = ComboBoxStyle.DropDown
            };
            searchBox.Items.AddRange(GetAllIngredientNamesSortedByCategory().ToArray());
            searchBox.AutoCompleteMode = AutoCompleteMode.None;

            Button selectButton = new Button
            {
                Text = "Select Ingredient",
                Dock = DockStyle.Fill
            };
            selectButton.Click += SelectButton_Click;

            searchPanel.Controls.Add(searchBox, 0, 0);
            searchPanel.Controls.Add(selectButton, 1, 0);

            ingredientsTab.Controls.Add(searchPanel);
            ingredientsPanel.Dock = DockStyle.Fill;
            ingredientsTab.Controls.Add(ingredientsPanel);
            ingredientsPanel.BringToFront();
        }

        private List<string> GetAllIngredientNamesSortedByCategory()
        {
            List<string> names = new List<string>();
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT i.Name FROM Ingredient i JOIN IngredientCategory ic ON i.IngredientID = ic.IngredientID ORDER BY ic.CategoryID, i.Name";
                using (var command = new SqlCommand(query, connection))
                {
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            names.Add(reader.GetString(0));
                        }
                    }
                }
            }
            return names;
        }

        private void SelectButton_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(searchBox.Text))
            {
                string ingredientName = searchBox.Text;
                int? ingredientId = GetIngredientIdByName(ingredientName);

                if (ingredientId.HasValue)
                {
                    TogglePantryItem(ingredientId.Value);
                    UpdatePantryListView();
                    UpdateButtonColor(ingredientId.Value);
                }
                else
                {
                    MessageBox.Show("Ingredient not found.");
                }
            }
            else
            {
                MessageBox.Show("Enter an ingredient to search.");
            }
        }


        private void UpdateButtonColor(int ingredientId)
        {
            if (ingredientButtons.TryGetValue(ingredientId, out List<Button> buttons))
            {
                bool isInPantry = pantry.Contains(ingredientId);
                foreach (Button button in buttons)
                {
                    button.BackColor = isInPantry ? Color.Green : SystemColors.Control;
                }
            }
            else
            {
                MessageBox.Show($"No buttons found for ingredient ID: {ingredientId}");
            }
        }

        private void InitializeFavoritesTab()
        {
            favoritesListView = new ListView
            {
                Dock = DockStyle.Fill,
                View = View.Details,
                FullRowSelect = true
            };
            favoritesListView.Columns.Add("Recipe Name", -2, HorizontalAlignment.Left);
            favoritesListView.DoubleClick += FavoritesListView_DoubleClick;
            favoritesTab.Controls.Add(favoritesListView);
            LoadFavorites();
        }

        private void FavoritesListView_DoubleClick(object sender, EventArgs e)
        {
            if (favoritesListView.SelectedItems.Count > 0)
            {
                int recipeId = (int)favoritesListView.SelectedItems[0].Tag;
                var detailsForm = new RecipeDetailsForm(recipeId, currentUserId, this);
                detailsForm.Show();
            }
        }

        public void LoadFavorites()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RecipeReduxDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                var query = "SELECT R.RecipeID, R.Name FROM Recipe R JOIN FavoriteRecipes FR ON R.RecipeID = FR.RecipeID WHERE FR.UserID = @UserID";
                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserID", currentUserId);
                    using (var reader = command.ExecuteReader())
                    {
                        favoritesListView.Items.Clear();
                        while (reader.Read())
                        {
                            var listViewItem = new ListViewItem(reader.GetString(1))
                            {
                                Tag = reader.GetInt32(0)
                            };
                            favoritesListView.Items.Add(listViewItem);
                        }
                    }
                }
            }
        }
    }
}