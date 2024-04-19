using Microsoft.EntityFrameworkCore;
using RecipeRedux.Models;

// Add Youtube link here

namespace RecipeRedux.Data
{
    public class RecipeReduxContext : DbContext
    {
        public RecipeReduxContext(DbContextOptions<RecipeReduxContext> options) : base(options) { }

        public DbSet<Ingredient>? Ingredients { get; set; }
        public DbSet<Category>? Categories { get; set; }
        public DbSet<IngredientCategory> IngredientCategories { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<IngredientCategory>()
                .HasKey(ic => new { ic.IngredientId, ic.CategoryId });

            modelBuilder.Entity<IngredientCategory>()
                .HasOne(ic => ic.Ingredient)
                .WithMany(i => i.IngredientCategories)
                .HasForeignKey(ic => ic.IngredientId);

            modelBuilder.Entity<IngredientCategory>()
                .HasOne(ic => ic.Category)
                .WithMany(c => c.IngredientCategories)
                .HasForeignKey(ic => ic.CategoryId);

            // Add categories to Database
            modelBuilder.Entity<Category>().HasData(
                new Category { CategoryId = 1, Name = "Essential Ingredients" },
                new Category { CategoryId = 2, Name = "Vegetables & Greens" },
                new Category { CategoryId = 3, Name = "Dairy & Eggs" },
                new Category { CategoryId = 4, Name = "Fruits" },
                new Category { CategoryId = 5, Name = "Mushrooms" },
                new Category { CategoryId = 6, Name = "Berries" },
                new Category { CategoryId = 7, Name = "Nuts & Seeds" },
                new Category { CategoryId = 8, Name = "Cheeses" },
                new Category { CategoryId = 9, Name = "Dairy-Free & Meat Substitutes" },
                new Category { CategoryId = 10, Name = "Meats" },
                new Category { CategoryId = 11, Name = "Poultry" },
                new Category { CategoryId = 12, Name = "Fish" },
                new Category { CategoryId = 13, Name = "Seafood & Seaweed" },
                new Category { CategoryId = 14, Name = "Herbs & Spices" },
                new Category { CategoryId = 15, Name = "Sugar & Sweeteners" },
                new Category { CategoryId = 16, Name = "Seasonings & Spice Blends" },
                new Category { CategoryId = 17, Name = "Baking" },
                new Category { CategoryId = 18, Name = "Pre-Made Doughs & Wrappers" },
                new Category { CategoryId = 19, Name = "Grains & Cereals" },
                new Category { CategoryId = 20, Name = "Legumes" },
                new Category { CategoryId = 21, Name = "Pasta" },
                new Category { CategoryId = 22, Name = "Bread & Salty Snacks" },
                new Category { CategoryId = 23, Name = "Oils & Fats" },
                new Category { CategoryId = 24, Name = "Dressings & Vinegars" },
                new Category { CategoryId = 25, Name = "Condiments" },
                new Category { CategoryId = 26, Name = "Canned Food" },
                new Category { CategoryId = 27, Name = "Sauces, Spreads & Dips" },
                new Category { CategoryId = 28, Name = "Soups, Stews & Stocks" },
                new Category { CategoryId = 29, Name = "Desserts & Sweet Snacks" },
                new Category { CategoryId = 30, Name = "Wine, Beer & Spirits" },
                new Category { CategoryId = 31, Name = "Beverages" },
                new Category { CategoryId = 32, Name = "Supplements & Extracts" }
            );

            // Add ingredients to Database
            modelBuilder.Entity<Ingredient>().HasData(
                new Ingredient { IngredientId = 1, Name = "Salt"},
                new Ingredient { IngredientId = 2, Name = "Water" },
                new Ingredient { IngredientId = 3, Name = "Butter" },
                new Ingredient { IngredientId = 4, Name = "Milk" },
                new Ingredient { IngredientId = 5, Name = "Egg" },
                new Ingredient { IngredientId = 6, Name = "Garlic" },
                new Ingredient { IngredientId = 7, Name = "Onion" },
                new Ingredient { IngredientId = 8, Name = "Sugar" },
                new Ingredient { IngredientId = 9, Name = "Flour" },
                new Ingredient { IngredientId = 10, Name = "Olive Oil" },
                new Ingredient { IngredientId = 11, Name = "Garlic Powder" },
                new Ingredient { IngredientId = 12, Name = "White Rice" },
                new Ingredient { IngredientId = 13, Name = "Cinnamon" },
                new Ingredient { IngredientId = 14, Name = "Ketchup" },
                new Ingredient { IngredientId = 15, Name = "Soy Sauce" },
                new Ingredient { IngredientId = 16, Name = "Mayonnaise" },
                new Ingredient { IngredientId = 17, Name = "Vegetable Oil" },
                new Ingredient { IngredientId = 18, Name = "Bread" },
                new Ingredient { IngredientId = 19, Name = "Baking Powder" },
                new Ingredient { IngredientId = 20, Name = "Baking Soda" },
                new Ingredient { IngredientId = 21, Name = "Oregano" },
                new Ingredient { IngredientId = 22, Name = "Potato" },
                new Ingredient { IngredientId = 23, Name = "Honey" },
                new Ingredient { IngredientId = 24, Name = "Paprika" },
                new Ingredient { IngredientId = 25, Name = "Vanilla" },
                new Ingredient { IngredientId = 26, Name = "Spaghetti" },
                new Ingredient { IngredientId = 27, Name = "Peanut Butter" },
                new Ingredient { IngredientId = 28, Name = "Chili Powder" },
                new Ingredient { IngredientId = 29, Name = "Cumin" },
                new Ingredient { IngredientId = 30, Name = "Mustard" },
                new Ingredient { IngredientId = 31, Name = "Chicken Breast" },
                new Ingredient { IngredientId = 32, Name = "Cheddar" },
                new Ingredient { IngredientId = 33, Name = "Onion Powder" },
                new Ingredient { IngredientId = 34, Name = "Carrot" },
                new Ingredient { IngredientId = 35, Name = "Tomato" },
                new Ingredient { IngredientId = 36, Name = "Basil" },
                new Ingredient { IngredientId = 37, Name = "Parsley" },
                new Ingredient { IngredientId = 38, Name = "Parmesan" },
                new Ingredient { IngredientId = 39, Name = "Italian Seasoning" },
                new Ingredient { IngredientId = 40, Name = "Thyme" },
                new Ingredient { IngredientId = 41, Name = "Bell Pepper" }
            );

            // Add ingredients to ingredient categories
            modelBuilder.Entity<IngredientCategory>().HasData(
                new IngredientCategory { IngredientId = 1, CategoryId = 1 }, // Salt in Essential Ingredients
                new IngredientCategory { IngredientId = 2, CategoryId = 1 }, // Water in Essential Ingredients
                new IngredientCategory { IngredientId = 3, CategoryId = 1 }, // Butter in Essential Ingredients
                new IngredientCategory { IngredientId = 3, CategoryId = 3 }, // Butter in Dairy & Eggs
                new IngredientCategory { IngredientId = 4, CategoryId = 1 }, // Milk in Essential Ingredients
                new IngredientCategory { IngredientId = 4, CategoryId = 3 }, // Milk in Dairy & Eggs
                new IngredientCategory { IngredientId = 5, CategoryId = 1 }, // Egg in Essential Ingredients
                new IngredientCategory { IngredientId = 5, CategoryId = 3 }, // Egg in Dairy & Eggs
                new IngredientCategory { IngredientId = 6, CategoryId = 1 }, // Garlic in Essential Ingredients
                new IngredientCategory { IngredientId = 6, CategoryId = 14 }, // Garlic in Herbs & Spices
                new IngredientCategory { IngredientId = 7, CategoryId = 1 }, // Onion in Essential Ingredients
                new IngredientCategory { IngredientId = 7, CategoryId = 14 }, // Onion in Herbs & Spices
                new IngredientCategory { IngredientId = 8, CategoryId = 1 }, // Sugar in Essential Ingredients
                new IngredientCategory { IngredientId = 8, CategoryId = 15 }, // Sugar in Sugar & Sweeteners
                new IngredientCategory { IngredientId = 8, CategoryId = 17 }, // Sugar in Baking
                new IngredientCategory { IngredientId = 9, CategoryId = 1 }, // Flour in Essential Ingredients
                new IngredientCategory { IngredientId = 9, CategoryId = 17 }, // Flour in Baking
                new IngredientCategory { IngredientId = 9, CategoryId = 19 }, // Flour in Grains & Cereals
                new IngredientCategory { IngredientId = 10, CategoryId = 1 }, // Olive Oil in Essential Ingredients
                new IngredientCategory { IngredientId = 10, CategoryId = 23 }, // Olive Oil in Oils & Fats
                new IngredientCategory { IngredientId = 11, CategoryId = 1 }, // Garlic Powder in Essential Ingredients
                new IngredientCategory { IngredientId = 11, CategoryId = 16 }, // Garlic Powder in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 12, CategoryId = 1 }, // White Rice in Essential Ingredients
                new IngredientCategory { IngredientId = 12, CategoryId = 19 }, // White Rice in Grains & Cereals
                new IngredientCategory { IngredientId = 13, CategoryId = 1 }, // Cinnamon in Essential Ingredients
                new IngredientCategory { IngredientId = 13, CategoryId = 16 }, // Cinnamon in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 14, CategoryId = 1 }, // Ketchup in Essential Ingredients
                new IngredientCategory { IngredientId = 14, CategoryId = 25 }, // Ketchup in Condiments
                new IngredientCategory { IngredientId = 15, CategoryId = 1 }, // Soy Sauce in Essential Ingredients
                new IngredientCategory { IngredientId = 15, CategoryId = 25 }, // Soy Sauce in Condiments
                new IngredientCategory { IngredientId = 16, CategoryId = 1 }, // Mayonnaise in Essential Ingredients
                new IngredientCategory { IngredientId = 16, CategoryId = 25 }, // Mayonnaise in Condiments
                new IngredientCategory { IngredientId = 17, CategoryId = 1 }, // Vegetable Oil in Essential Ingredients
                new IngredientCategory { IngredientId = 17, CategoryId = 23 }, // Vegetable Oil in Oils & Fats
                new IngredientCategory { IngredientId = 18, CategoryId = 1 }, // Bread in Essential Ingredients
                new IngredientCategory { IngredientId = 18, CategoryId = 22 }, // Bread in Bread & Salty Snacks
                new IngredientCategory { IngredientId = 19, CategoryId = 1 }, // Baking Powder in Essential Ingredients
                new IngredientCategory { IngredientId = 19, CategoryId = 17 }, // Baking Powder in Baking
                new IngredientCategory { IngredientId = 20, CategoryId = 1 }, // Baking Soda in Essential Ingredients
                new IngredientCategory { IngredientId = 20, CategoryId = 17 }, // Baking Soda in Baking
                new IngredientCategory { IngredientId = 21, CategoryId = 1 }, // Oregano in Essential Ingredients
                new IngredientCategory { IngredientId = 21, CategoryId = 14 }, // Oregano in Herbs & Spices
                new IngredientCategory { IngredientId = 22, CategoryId = 1 }, // Potato in Essential Ingredients
                new IngredientCategory { IngredientId = 22, CategoryId = 2 }, // Potato in Vegetables & Greens
                new IngredientCategory { IngredientId = 23, CategoryId = 1 }, // Honey in Essential Ingredients
                new IngredientCategory { IngredientId = 23, CategoryId = 15 }, // Honey in Sugar & Sweeteners
                new IngredientCategory { IngredientId = 23, CategoryId = 17 }, // Honey in Baking
                new IngredientCategory { IngredientId = 24, CategoryId = 1 }, // Paprika in Essential Ingredients
                new IngredientCategory { IngredientId = 24, CategoryId = 16 }, // Paprika in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 25, CategoryId = 1 }, // Vanilla in Essential Ingredients
                new IngredientCategory { IngredientId = 25, CategoryId = 17 }, // Vanilla in Baking
                new IngredientCategory { IngredientId = 25, CategoryId = 29 }, // Vanilla in Desserts & Sweet Snacks
                new IngredientCategory { IngredientId = 26, CategoryId = 1 }, // Spaghetti in Essential Ingredients
                new IngredientCategory { IngredientId = 26, CategoryId = 21 }, // Spaghetti in Pasta
                new IngredientCategory { IngredientId = 27, CategoryId = 1 }, // Peanut Butter in Essential Ingredients
                new IngredientCategory { IngredientId = 27, CategoryId = 7 }, // Peanut Butter in Nuts & Seeds
                new IngredientCategory { IngredientId = 28, CategoryId = 1 }, // Chili Powder in Essential Ingredients
                new IngredientCategory { IngredientId = 28, CategoryId = 16 }, // Chili Powder in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 29, CategoryId = 1 }, // Cumin in Essential Ingredients
                new IngredientCategory { IngredientId = 29, CategoryId = 16 }, // Cumin in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 30, CategoryId = 1 }, // Mustard in Essential Ingredients
                new IngredientCategory { IngredientId = 30, CategoryId = 25 }, // Mustard in Condiments
                new IngredientCategory { IngredientId = 31, CategoryId = 1 }, // Chicken Breast in Essential Ingredients
                new IngredientCategory { IngredientId = 31, CategoryId = 10 }, // Chicken Breast in Meats
                new IngredientCategory { IngredientId = 32, CategoryId = 1 }, // Cheddar in Essential Ingredients
                new IngredientCategory { IngredientId = 32, CategoryId = 8 }, // Cheddar in Cheeses
                new IngredientCategory { IngredientId = 33, CategoryId = 1 }, // Onion Powder in Essential Ingredients
                new IngredientCategory { IngredientId = 33, CategoryId = 16 }, // Onion Powder in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 34, CategoryId = 1 }, // Carrot in Essential Ingredients
                new IngredientCategory { IngredientId = 34, CategoryId = 2 }, // Carrot in Vegetables & Greens
                new IngredientCategory { IngredientId = 35, CategoryId = 1 }, // Tomato in Essential Ingredients
                new IngredientCategory { IngredientId = 35, CategoryId = 4 }, // Tomato in Fruits
                new IngredientCategory { IngredientId = 36, CategoryId = 1 }, // Basil in Essential Ingredients
                new IngredientCategory { IngredientId = 36, CategoryId = 14 }, // Basil in Herbs & Spices
                new IngredientCategory { IngredientId = 37, CategoryId = 1 }, // Parsley in Essential Ingredients
                new IngredientCategory { IngredientId = 37, CategoryId = 14 }, // Parsley in Herbs & Spices
                new IngredientCategory { IngredientId = 38, CategoryId = 1 }, // Parmesan in Essential Ingredients
                new IngredientCategory { IngredientId = 38, CategoryId = 8 }, // Parmesan in Cheeses
                new IngredientCategory { IngredientId = 39, CategoryId = 1 }, // Italian Seasoning in Essential Ingredients
                new IngredientCategory { IngredientId = 39, CategoryId = 16 }, // Italian Seasoning in Seasonings & Spice Blends
                new IngredientCategory { IngredientId = 40, CategoryId = 1 }, // Thyme in Essential Ingredients
                new IngredientCategory { IngredientId = 40, CategoryId = 14 }, // Thyme in Herbs & Spices
                new IngredientCategory { IngredientId = 41, CategoryId = 1 }, // Bell Pepper in Essential Ingredients
                new IngredientCategory { IngredientId = 41, CategoryId = 2 }, // Bell Pepper in Vegetables & Greens
                new IngredientCategory { IngredientId = 41, CategoryId = 14 }, // Bell Pepper in Herbs & Spices
                new IngredientCategory { IngredientId = 41, CategoryId = 17 } // Bell Pepper in Baking
            );
        }
    }
}
