USE RecipeRedux;
GO

INSERT INTO Category (Name) VALUES
('Essential Ingredients'),
('Vegetables & Greens'),
('Dairy & Eggs'),
('Fruits'),
('Mushrooms'),
('Berries'),
('Nuts & Seeds'),
('Cheeses'),
('Dairy-Free & Meat Substitutes'),
('Meats'),
('Poultry'),
('Fish'),
('Seafood & Seaweed'),
('Herbs & Spices'),
('Sugar & Sweeteners'),
('Seasonings & Spice Blends'),
('Baking'),
('Pre-Made Doughs & Wrappers'),
('Grains & Cereals'),
('Legumes'),
('Pasta'),
('Bread & Salty Snacks'),
('Oils & Fats'),
('Dressings & Vinegars'),
('Condiments'),
('Canned Food'),
('Sauces, Spreads & Dips'),
('Soups, Stews & Stocks'),
('Desserts & Sweet Snacks'),
('Wine, Beer & Spirits'),
('Beverages'),
('Supplements & Extracts');




INSERT INTO Users (Email, FirstName, LastName, PasswordHash, IsAdmin) VALUES
('drayfield@ksu.edu', 'Devin', 'Rayfield', 'password', 1);




INSERT INTO Ingredient (Name) VALUES
('Salt'),
('Water'),
('Butter'),
('Milk'),
('Egg'),
('Garlic'),
('Onion'),
('Sugar'),
('Flour'),
('Olive Oil'),
('Garlic Powder'),
('White Rice'),
('Cinnamon'),
('Ketchup'),
('Soy Sauce'),
('Mayonnaise'),
('Vegetable Oil'),
('Bread'),
('Baking Powder'),
('Baking Soda'),
('Oregano'),
('Potato'),
('Honey'),
('Paprika'),
('Vanilla'),
('Spaghetti'),
('Peanut Butter'),
('Chili Powder'),
('Cumin'),
('Mustard'),
('Chicken Breast'),
('Cheddar'),
('Onion Powder'),
('Carrot'),
('Tomato'),
('Basil'),
('Parsley'),
('Parmesan'),
('Italian Seasoning'),
('Thyme'),
('Bell Pepper');




INSERT INTO IngredientCategory (IngredientID, CategoryID) VALUES
(1, 1), -- Salt in Essential Ingredients
(2, 1), -- Water in Essential Ingredients
(3, 1), -- Butter in Essential Ingredients
(3, 3), -- Butter in Dairy & Eggs
(4, 1), -- Milk in Essential Ingredients
(4, 3), -- Milk in Dairy & Eggs
(5, 1), -- Egg in Essential Ingredients
(5, 3), -- Egg in Dairy & Eggs
(6, 1), -- Garlic in Essential Ingredients
(6, 14), -- Garlic in Herbs & Spices
(7, 1), -- Onion in Essential Ingredients
(7, 14), -- Onion in Herbs & Spices
(8, 1), -- Sugar in Essential Ingredients
(8, 15), -- Sugar in Sugar & Sweeteners
(8, 17), -- Sugar in Baking
(9, 1), -- Flour in Essential Ingredients
(9, 17), -- Flour in Baking
(9, 19), -- Flour in Grains & Cereals
(10, 1), -- Olive Oil in Essential Ingredients
(10, 23), -- Olive Oil in Oils & Fats
(11, 1), -- Garlic Powder in Essential Ingredients
(11, 16), -- Garlic Powder in Seasonings & Spice Blends
(12, 1), -- White Rice in Essential Ingredients
(12, 19), -- White Rice in Grains & Cereals
(13, 1), -- Cinnamon in Essential Ingredients
(13, 16), -- Cinnamon in Seasonings & Spice Blends
(14, 1), -- Ketchup in Essential Ingredients
(14, 25), -- Ketchup in Condiments
(15, 1), -- Soy Sauce in Essential Ingredients
(15, 25), -- Soy Sauce in Condiments
(16, 1), -- Mayonnaise in Essential Ingredients
(16, 25), -- Mayonnaise in Condiments
(17, 1), -- Vegetable Oil in Essential Ingredients
(17, 23), -- Vegetable Oil in Oils & Fats
(18, 1), -- Bread in Essential Ingredients
(18, 22), -- Bread in Bread & Salty Snacks
(19, 1), -- Baking Powder in Essential Ingredients
(19, 17), -- Baking Powder in Baking
(20, 1), -- Baking Soda in Essential Ingredients
(20, 17), -- Baking Soda in Baking
(21, 1), -- Oregano in Essential Ingredients
(21, 14), -- Oregano in Herbs & Spices
(22, 1), -- Potato in Essential Ingredients
(22, 2), -- Potato in Vegetables & Greens
(23, 1), -- Honey in Essential Ingredients
(23, 15), -- Honey in Sugar & Sweeteners
(23, 17), -- Honey in Baking
(24, 1), -- Paprika in Essential Ingredients
(24, 16), -- Paprika in Seasonings & Spice Blends
(25, 1), -- Vanilla in Essential Ingredients
(25, 17), -- Vanilla in Baking
(25, 29), -- Vanilla in Desserts & Sweet Snacks
(26, 1), -- Spaghetti in Essential Ingredients
(26, 21), -- Spaghetti in Pasta
(27, 1), -- Peanut Butter in Essential Ingredients
(27, 7), -- Peanut Butter in Nuts & Seeds
(28, 1), -- Chili Powder in Essential Ingredients
(28, 16), -- Chili Powder in Seasonings & Spice Blends
(29, 1), -- Cumin in Essential Ingredients
(29, 16), -- Cumin in Seasonings & Spice Blends
(30, 1), -- Mustard in Essential Ingredients
(30, 25), -- Mustard in Condiments
(31, 1), -- Chicken Breast in Essential Ingredients
(31, 10), -- Chicken Breast in Meats
(32, 1), -- Cheddar in Essential Ingredients
(32, 8), -- Cheddar in Cheeses
(33, 1), -- Onion Powder in Essential Ingredients
(33, 16), -- Onion Powder in Seasonings & Spice Blends
(34, 1), -- Carrot in Essential Ingredients
(34, 2), -- Carrot in Vegetables & Greens
(35, 1), -- Tomato in Essential Ingredients
(35, 4), -- Tomato in Fruits
(36, 1), -- Basil in Essential Ingredients
(36, 14), -- Basil in Herbs & Spices
(37, 1), -- Parsley in Essential Ingredients
(37, 14), -- Parsley in Herbs & Spices
(38, 1), -- Parmesan in Essential Ingredients
(38, 8), -- Parmesan in Cheeses
(39, 1), -- Italian Seasoning in Essential Ingredients
(39, 16), -- Italian Seasoning in Seasonings & Spice Blends
(40, 1), -- Thyme in Essential Ingredients
(40, 14), -- Thyme in Herbs & Spices
(41, 1), -- Bell Pepper in Essential Ingredients
(41, 2), -- Bell Pepper in Vegetables & Greens
(41, 14), -- Bell Pepper in Herbs & Spices
(41, 17); -- Bell Pepper in Baking