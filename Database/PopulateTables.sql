USE RecipeRedux;
GO

INSERT INTO Category (Name) VALUES
('Essential Ingredients'),
('Vegetables and Greens'),
('Dairy and Eggs'),
('Fruits'),
('Mushrooms'),
('Berries'),
('Nuts and Seeds'),
('Cheeses'),
('Dairy-Free and Meat Substitutes'),
('Meats'),
('Poultry'),
('Fish'),
('Seafood and Seaweed'),
('Herbs and Spices'),
('Sugar and Sweeteners'),
('Seasonings and Spice Blends'),
('Baking'),
('Pre-Made Doughs and Wrappers'),
('Grains and Cereals'),
('Legumes'),
('Pasta'),
('Bread and Salty Snacks'),
('Oils & Fats'),
('Dressings and Vinegars'),
('Condiments'),
('Canned Food'),
('Sauces, Spreads and Dips'),
('Soups, Stews and Stocks'),
('Desserts and Sweet Snacks'),
('Wine, Beer and Spirits'),
('Beverages'),
('Supplements and Extracts');

INSERT INTO Category (Name)
VALUES ('Miscellaneous');




INSERT INTO Users (Email, FirstName, LastName, PasswordHash) VALUES
('drayfield@ksu.edu', 'Devin', 'Rayfield', 'password');




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



















SELECT * FROM Category ORDER BY CategoryID ASC;

-- Insert ingredients into their respective categories
DECLARE @EssentialIngredients INT, @VegetablesAndGreens INT, @DairyAndEggs INT, @Fruits INT, @Mushrooms INT, @Berries INT, @NutsAndSeeds INT, @Cheeses INT, @DairyFreeAndMeatSubstitutes INT, @Meats INT, @Poultry INT, @Fish INT, @SeafoodAndSeaweed INT, @HerbsAndSpices INT, @SugarAndSweeteners INT, @SeasoningsAndSpiceBlends INT, @Baking INT, @PreMadeDoughsAndWrappers INT, @GrainsAndCereals INT, @Legumes INT, @Pasta INT, @BreadAndSaltySnacks INT, @OilsAndFats INT, @DressingsAndVinegars INT, @Condiments INT, @CannedFood INT, @SaucesSpreadsAndDips INT, @SoupsStewsAndStocks INT, @DessertsAndSweetSnacks INT, @WineBeerAndSpirits INT, @Beverages INT, @SupplementsAndExtracts INT;

SELECT @EssentialIngredients = CategoryID FROM Category WHERE Name = 'Essential Ingredients';
SELECT @VegetablesAndGreens = CategoryID FROM Category WHERE Name = 'Vegetables and Greens';
SELECT @DairyAndEggs = CategoryID FROM Category WHERE Name = 'Dairy and Eggs';
SELECT @Fruits = CategoryID FROM Category WHERE Name = 'Fruits';
SELECT @Mushrooms = CategoryID FROM Category WHERE Name = 'Mushrooms';
SELECT @Berries = CategoryID FROM Category WHERE Name = 'Berries';
SELECT @NutsAndSeeds = CategoryID FROM Category WHERE Name = 'Nuts and Seeds';
SELECT @Cheeses = CategoryID FROM Category WHERE Name = 'Cheeses';
SELECT @DairyFreeAndMeatSubstitutes = CategoryID FROM Category WHERE Name = 'Dairy-Free and Meat Substitutes';
SELECT @Meats = CategoryID FROM Category WHERE Name = 'Meats';
SELECT @Poultry = CategoryID FROM Category WHERE Name = 'Poultry';
SELECT @Fish = CategoryID FROM Category WHERE Name = 'Fish';
SELECT @SeafoodAndSeaweed = CategoryID FROM Category WHERE Name = 'Seafood and Seaweed';
SELECT @HerbsAndSpices = CategoryID FROM Category WHERE Name = 'Herbs and Spices';
SELECT @SugarAndSweeteners = CategoryID FROM Category WHERE Name = 'Sugar and Sweeteners';
SELECT @SeasoningsAndSpiceBlends = CategoryID FROM Category WHERE Name = 'Seasonings and Spice Blends';
SELECT @Baking = CategoryID FROM Category WHERE Name = 'Baking';
SELECT @PreMadeDoughsAndWrappers = CategoryID FROM Category WHERE Name = 'Pre-Made Doughs and Wrappers';
SELECT @GrainsAndCereals = CategoryID FROM Category WHERE Name = 'Grains and Cereals';
SELECT @Legumes = CategoryID FROM Category WHERE Name = 'Legumes';
SELECT @Pasta = CategoryID FROM Category WHERE Name = 'Pasta';
SELECT @BreadAndSaltySnacks = CategoryID FROM Category WHERE Name = 'Bread and Salty Snacks';
SELECT @OilsAndFats = CategoryID FROM Category WHERE Name = 'Oils and Fats';
SELECT @DressingsAndVinegars = CategoryID FROM Category WHERE Name = 'Dressings and Vinegars';
SELECT @Condiments = CategoryID FROM Category WHERE Name = 'Condiments';
SELECT @CannedFood = CategoryID FROM Category WHERE Name = 'Canned Food';
SELECT @SaucesSpreadsAndDips = CategoryID FROM Category WHERE Name = 'Sauces, Spreads and Dips';
SELECT @SoupsStewsAndStocks = CategoryID FROM Category WHERE Name = 'Soups, Stews and Stocks';
SELECT @DessertsAndSweetSnacks = CategoryID FROM Category WHERE Name = 'Desserts and Sweet Snacks';
SELECT @WineBeerAndSpirits = CategoryID FROM Category WHERE Name = 'Wine, Beer and Spirits';
SELECT @Beverages = CategoryID FROM Category WHERE Name = 'Beverages';
SELECT @SupplementsAndExtracts = CategoryID FROM Category WHERE Name = 'Supplements and Extracts';


-- Insert Essential Ingredients
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @EssentialIngredients FROM Ingredient
WHERE Name IN ('Butter', 'Egg', 'Garlic', 'Milk', 'Onion', 'Sugar', 'Flour', 'Olive Oil', 'Garlic Powder', 'White Rice', 'Cinnamon', 'Kethcup', 'Soy Sauce', 'Mayonnaise', 'Vegetable Oil', 'Bread', 'Baking Powder', 'Brown Sugar', 'Oregano', 'Potato', 'Honey', 'Paprika', 'Baking Soda', 'Vanilla', 'Spaghetti', 'Peanut Butter', 'Chili Powder', 'Cumin', 'Mustard', 'Chicken Breast', 'Cheddar', 'Onion Powder', 'Carrot', 'Tomato', 'Basil', 'Parsley', 'Parmesan', 'Italian Seasoning', 'Thyme', 'Bell Pepper');

-- Insert Vegetables and Greens
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @VegetablesAndGreens FROM Ingredient
WHERE Name IN ('Garlic', 'Onion', 'Bell Pepper', 'Carrot', 'Scallion', 'Tomato', 'Potato', 'Red Onion', 'Celery', 'Jalapeno', 'Avocado', 'Zucchini', 'Shallot', 'Cherry Tomato', 'Cucumber', 'Spinach', 'Corn', 'Chile Pepper', 'Sweet Potato', 'Broccoli', 'Baby Greens', 'Pumpkin', 'Cabbage', 'Cauliflower', 'Asparagus', 'Arugula', 'Leek', 'Kale', 'Eggplant', 'Lettuce', 'Butternut Squash', 'Romaine', 'Beetroot', 'Brussels Sprout', 'Fennel', 'Sun Dried Tomato', 'Radish', 'Red Cabbage', 'Artichoke', 'New Potato', 'Summer Squash', 'Mixed Greens', 'Parsnip', 'Baby Carrot', 'Mixed Vegetable', 'Poblano Pepper', 'Sweet Pepper', 'Green Tomato', 'Watercress', 'Serrano Pepper', 'Iceberg', 'Mashed Potatoes', 'Horseradish', 'Chard', 'Hash Browns', 'Napa Cabbage', 'Pimiento', 'Butter Lettuce', 'Spaghetti Squash', 'Celeriac', 'Turnip', 'Bok Choy', 'Okra', 'Acorn Squash', 'Corn Cob', 'Radicchio', 'Water Chestnut', 'Pearl Onion', 'Pepperoncini', 'Tenderstem Broccoli', 'Leaf Lettuce', 'Cavolo Nero', 'Baby Bok Choy', 'Endive', 'Plantain', 'Collard Greens', 'Jicama', 'Habanero Pepper', 'Corn Husk', 'French-fried Onions', 'Daikon', 'Baby Corn', 'Broccoli Rabe', 'Belgian Endive', 'Rutabaga', 'Kohlrabi', 'Boston Lettuce', 'Fresno Chile', 'Microgreens', 'Yam', 'Ancho Chile Peppers', 'Delicata Squash', 'Anaheim Pepper', 'Cress', 'Frisee', 'Broccoli Slaw', 'Potato Flakes', 'Golden Beet', 'Gem Lettuce', 'Banana Pepper');

-- Insert Dairy and Eggs
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @DairyAndEggs FROM Ingredient
WHERE Name IN ('Butter', 'Egg', 'Milk', 'Heavy Cream', 'Sour Cream', 'Buttermilk', 'Yogurt', 'Greek Yogurt', 'Cream', 'Whipped Cream', 'Ghee', 'Shortening', 'Half and Half', 'Sweetened Condensed Milk', 'Condensed Milk', 'Ice Cream', 'Margarine', 'Creme Fraiche', 'Frosting', 'Milk Powder', 'Curd', 'Thickened Cream', 'Lemon Curd', 'Custard', 'Dulce de Leche', 'Chocolate Frosting', 'Kefir', 'Liquid Egg Substitute', 'Sherbet', 'Chocolate Milk', 'Hung Curd', 'Whey', 'Quail Egg', 'Buttermilk Powder', 'Frozen Yogurt', 'Khoya', 'Coffee Creamer', 'Clotted Cream', 'Goat Milk', 'Cheese Curd', 'Milk Cream', 'Sour Milk', 'Ganache', 'Duck Egg', 'Salted Egg', 'Skyr', 'Pumpkin Spice Coffee Creamer', 'Yogurt Starter', 'Honey Greek Yogurt', 'Lime Curd', 'Raw Milk', 'Powdered Coffee Creamer', 'Milkfat', 'Rainbow Sherbet', 'Strawberry Frosting', 'Amul Butter', 'Goat Yogurt', 'Honey Butter', 'Cajeta', 'Strawberry Cream Cheese', 'Goat Butter', 'Cookies and Cream Ice Cream', 'Passionfruit Curd', 'Century Egg', 'Orange Curd', 'Starter Culture', 'Dahi', 'Cinnamon Sugar Butter Spread', 'Bulgarian Yogurt', 'Peppermint Mocha Creamer', 'Tvorog', 'Chantilly', 'Liquid Rennet', 'Chocolate Milk Powder', 'Sheep’s Milk Yogurt', 'Strawberry Milk', 'Ayran', 'Buffalo Milk', 'Yogurt Drink', 'Cuajada', 'Evaporated Goat Milk', 'Sheep Milk', 'Vanilla Milk', 'Amasi', 'Kashk', 'Pickled Egg', 'Yoplait Whips', 'Goat Kefir', 'Lebenh', 'Niter Kibbeh', 'Ostrich Egg');

-- Insert Fruits
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Fruits FROM Ingredient
WHERE Name IN ('Lemon', 'Lime', 'Apple', 'Banana', 'Orange', 'Raisins', 'Pineapple', 'Mango', 'Date', 'Peach', 'Coconut', 'Craisins', 'Pear', 'Pomegranate', 'Grape', 'Watermelon', 'Rhubarb', 'Dried Apricot', 'Kiwi', 'Grapefruit', 'Plum', 'Fig', 'Apricot', 'Mandarin', 'Currant', 'Prunes', 'Sultanas', 'Cantaloupe', 'Passion Fruit', 'Papaya', 'Tamarind', 'Nectarine', 'Dried Fig', 'Chestnut', 'Meyer Lemon', 'Dried Fruit', 'Honeydew Melon', 'Clementine', 'Persimmon', 'Melon', 'Tangerine', 'Dried Mango', 'Dried Apple', 'Quince', 'Banana Chips', 'Kumquat', 'Guava', 'Jackfruit', 'Mixed Fruit', 'Asian Pear', 'Dragon Fruit', 'Dried Pineapple', 'Lychee', 'Young Coconut', 'Kaffir Lime', 'Star Fruit', 'Green Mango', 'Green Papaya', 'Dried Pears', 'Pomelo', 'Chestnut Puree', 'Calamansi', 'Prickly Pear', 'Apple Chips', 'Granadilla', 'Yuzu', 'Dried Peach', 'Mixed Peel', 'Kokum', 'Dried Lime', 'Tangelo', 'Jujube', 'Young Jackfruit', 'Sweet Lime', 'Custard-Apple', 'Dried Lemon', 'Durian', 'Honey Date', 'Freeze-Dried Apple', 'Wood Apple', 'Dried Tamarind', 'Ice-Apple', 'Tamarillo', 'Longan', 'Physalis', 'Finger Lime', 'Bitter Orange', 'Feijoa', 'Chikoo', 'Dried Persimmons', 'Dried Orange Slice', 'Fig Leaves', 'Rambutan', 'Crabapple', 'Rose Apple', 'Loquat', 'Pluot', 'Freeze-Dried Pineapple', 'Soursop', 'Bergamot Orange');

-- Insert Mushrooms
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Mushrooms FROM Ingredient
WHERE Name IN ('Button Mushroom', 'Shiitake Mushroom', 'Portobello Mushroom', 'Wild Mushroom', 'Porcini', 'Oyster Mushroom', 'Mixed Mushrooms', 'Chestnut Mushroom', 'Enoki Mushroom', 'Black Fungus', 'Black Truffle', 'Morel Mushrooms', 'Field Mushroom', 'King Oyster Mushroom', 'Straw Mushroom', 'Shimeji Mushroom', 'Dried Chinese Mushroom', 'Maitake', 'Trumpet Mushroom', 'White Truffle', 'White Fungus', 'Pioppini', 'Snow Fungus', 'White Beech Mushroom', 'Boletus', 'Huitlacoche', 'Matsutake', 'Nameko', 'Dijon Djon Mushroom', 'Mixed Asian Mushrooms', 'Puffball', 'Honey Fungus', 'Lobster Mushroom', 'Saffron Milk Caps', 'Caesars Mushroom', 'Candy Cap Mushrooms', 'Lions Mane Mushroom');

-- Insert Berries
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Berries FROM Ingredient
WHERE Name IN ('Strawberry', 'Blueberry', 'Raspberry', 'Cranberry', 'Cherry', 'Blackberry', 'Berry Mix', 'Dried Cherry', 'Sour Cherry', 'Dried Blueberries', 'Goji Berry', 'Freeze-Dried Strawberry', 'Gooseberry', 'Freeze-Dried Raspberry', 'Lingonberry', 'Acai Berry', 'Mulberry', 'Amla', 'Elderberry', 'Freeze-Dried Blueberry', 'Huckleberry', 'Dried Elderberry', 'Barberry', 'Black Raspberry', 'Dried Berries', 'Boysenberry', 'Saskatoon Berry', 'Rosehip', 'Sea Buckthorn', 'Hawthorn', 'Cloudberry', 'Freeze-Dried Berries', 'Chokeberry', 'Aronia Berry', 'Loganberry', 'Acerola', 'Blackcurrant Leaves', 'Haskap Berry', 'Sloe Berry', 'Oregon Grape');

-- Insert Nuts and Seeds
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @NutsAndSeeds FROM Ingredient
WHERE Name IN ('Walnut', 'Pecan', 'Almond', 'Sesame Seed', 'Cashew', 'Pine Nut', 'Pistachio', 'Peanut', 'Chia', 'Slivered Almonds', 'Pumpkin Seeds', 'Hazelnut', 'Poppy Seed', 'Sunflower Seeds', 'Flax', 'Chopped Nuts', 'Macadamia', 'Roasted Peanuts', 'Hemp Hearts', 'Mixed Nuts', 'Nigella Seeds', 'Brazil Nut', 'Mixed Seeds', 'Smoked Almond', 'Onion Seed', 'Watermelon Seeds', 'Honey-Roasted Peanuts', 'Melon Seeds', 'Black Walnut', 'Lotus Seeds', 'White Chia', 'Trail Mix', 'Basil Seeds', 'Candlenut', 'Peanut Brittle', 'Jackfruit Seeds', 'Chironji', 'Honey-Roasted Almond', 'Honey-Roasted Pecans', 'Toasted Nuts', 'Tigernuts', 'Sriracha Almond', 'Sunflower Sprouts', 'Chia Powder', 'Apricot Kernels', 'Honey-Roasted Cashew', 'Milk Thistle Seeds', 'Ginkgo Nuts', 'Palm Seeds', 'Keto Trail Mix', 'Wattleseeds', 'Barùkas', 'Indian Almond');

-- Insert Cheeses
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Cheeses FROM Ingredient
WHERE Name IN ('Parmesan', 'Cream Cheese', 'Cheddar', 'Mozzarella', 'Feta', 'Ricotta', 'Sharp Cheddar', 'Monterey Jack', 'Blue Cheese', 'Goat Cheese', 'Fresh Mozzarella', 'Swiss Cheese', 'Pecorino', 'Gruyere', 'Mascarpone', 'Cottage Cheese', 'American Cheese', 'Provolone', 'Mexican Cheese Blend', 'Pepper Jack', 'Brie', 'Paneer', 'Fontina', 'Queso Fresco', 'Quark', 'Gouda', 'Cotija', 'Asiago', 'Smoked Cheese', 'Halloumi', 'Chevre', 'Italian Cheese Blend', 'Neufchatel', 'Manchego', 'Herb Cream Cheese', 'Havarti', 'Colby', 'Burrata', 'Grana-Padano', 'Muenster', 'String Cheese', 'Camembert', 'Soft Cheese', 'Stilton', 'Raclette', 'Cheddar-Jack Cheese', 'Colby-Jack Cheese', 'Taleggio', 'Jarlsberg Cheese', 'Labneh', 'Creamy Cheese Wedge', 'Edam', 'Oaxaca', 'Baby Swiss Cheese', 'Fromage Blanc', 'Marble Cheese', 'Kefalotyri', 'Leicester', 'Mizithra', 'Seasoned Feta Cheese', 'Asadero', 'Lancashire', 'Kasseri', 'Sheep Cheese', 'Babybel', 'Scamorza', 'Longhorn', 'Comté', 'Graviera', 'Wensleydale', 'Cambozola', 'Cheshire Cheese', 'Chenna', 'Anthotyro', 'Garlic-and-Herb Goat Cheese', 'Hard Goat Cheese', 'Kashkaval', 'Amul Cheese', 'Reblochon', 'Robiola', 'Manouri', 'Queso Quesadilla', 'Quick-Melt Cheese', 'Brick Cheese', 'Farmers Cheese', 'Mimolette', 'Panela Cheese', 'Stracchino Cheese', 'Bergkäse', 'Caciocavallo', 'Vacherin', 'Brown Cheese', 'Fontal', 'Gloucester', 'Derby Cheese', 'Flemish Cheese', 'Truffle Cheese', 'Epoisses Cheese', 'Limburger', 'Petit-Suisse');

-- Insert Dairy-Free and Meat Substitutes
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @DairyFreeAndMeatSubstitutes FROM Ingredient
WHERE Name IN ('Coconut Milk', 'Almond Milk', 'Almond Butter', 'Tofu', 'Coconut Cream', 'Vegan Butter', 'Non-Dairy Milk', 'Soy Milk', 'Extra Firm Tofu', 'Silken Tofu', 'Coconut Butter', 'Kala Namak Salt', 'Egg Replacer', 'Vegan Mayonnaise', 'Cashew Butter', 'Tempeh', 'Vegan Cream Cheese', 'Coconut Yogurt', 'Vegan Parmesan', 'Non-Dairy Yogurt', 'Seed Butter', 'Vegan Cheese', 'Nut Butter', 'Cashew Milk', 'Oat Milk', 'Rice Milk', 'Vegan Sour Cream', 'Textured Vegetable Protein', 'Vegan Worcestershire', 'Non-Dairy Creamer', 'Vegan Mozzarella', 'Soy Yogurt', 'Coconut Whipped Cream', 'Vegan Sausage', 'Smoked Tofu', 'Seitan', 'Coconut Milk Powder', 'Nut Milk', 'Soy Cream', 'Non-Dairy Whipped Topping', 'Non-Dairy Cream', 'Vegan Ground Beef', 'Condensed Coconut Milk', 'Vegan Burger Patty', 'Chocolate Almond Milk', 'Vegan Bacon', 'Vegan Pesto', 'Vegan Feta', 'Soy Curls', 'Soy Chorizo', 'Hazelnut Butter', 'Vegan Ranch', 'Vegetarian Oyster Sauce', 'Hemp Milk', 'Vegan Beef', 'Vegan Chicken', 'Marinated Tofu', 'Dairy-Free Ice-Cream', 'Vegetable Suet', 'Coconut Paste', 'Almond-Coconut Milk', 'Vegan Fish Sauce', 'Vegetarian Hot Dog', 'Hazelnut Milk', 'Vegan Caesar Dressing', 'Almond Pulp', 'Vegan Meatballs', 'Maple Almond Butter', 'Soy Milk Powder', 'Almond Creamer', 'Almond-Milk Yogurt', 'Vegan Cream Cheese Frosting', 'Coconut Bacon', 'Vegan Gravy', 'Cashew Cheese Sauce', 'Falafel Mix', 'Soy-Free Butter', 'Vegan Nutella', 'Cashewgurt', 'Coconut Fat', 'Hazelnut Creamer', 'Tofurky', 'Vegan Tzatziki', 'Cashew Cream Cheese', 'Coconut Cream Powder', 'Flax Milk', 'Macadamia Butter', 'Quorn', 'Cricket Flour', 'Okara', 'Egg Tofu', 'Vegan Ham', 'Cashew Sour Cream', 'Macadamia Milk', 'Vegan Taco Meat', 'Walnut Taco Meat', 'Ready-Made Falafel', 'Vegan Yogurt Starter', 'Banana Milk', 'Cinnamon Leaf');

-- Insert Meats
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Meats FROM Ingredient
WHERE Name IN ('Bacon', 'Ground Beef', 'Beef Steak', 'Deli Ham', 'Pork Chops', 'Sweet Italian Sausage', 'Pork Fillet', 'Prosciutto', 'Beef Roast', 'Sausage', 'Ground Pork', 'Beef Stew Meat', 'Pepperoni', 'Chorizo', 'Pancetta', 'Pork Shoulder', 'Pork Loin', 'Ground Lamb', 'Smoked Sausage', 'Pork Ribs', 'Breakfast Sausage', 'Hot Dog', 'Beef Sirloin', 'Salami', 'Brisket', 'Leg of Lamb', 'Kielbasa', 'Beef Short Ribs', 'Pork Belly', 'Hot Italian Sausage', 'Andouille', 'Boneless Lamb', 'Pork Roast', 'Ground Pork Sausage', 'Ground Sausage', 'Roast Beef', 'Bacon Bits', 'Bone-In Ham', 'Pork Spare Ribs', 'Lamb Chops', 'Lamb Shoulder', 'Beef Ribs', 'Veal Steak', 'Pork Butt', 'Canadian Bacon', 'Beef Sausage', 'Lamb Shank', 'Mutton', 'Venison', 'Ham Steak', 'Pulled Pork', 'Bratwurst', 'Frozen Meatballs', 'Ham Hock', 'Mixed Ground Meat', 'Pork Cutlets', 'Rabbit', 'Veal Cutlet', 'Soup Bones', 'Lamb Loin', 'Country Style Ribs', 'Pork Back Ribs', 'Mexican Chorizo', 'Smoked Ham Hock', 'Black Forest Ham', 'Raw Chorizo', 'Oxtail', 'Beef Liver', 'Rack of Lamb', 'Serrano Ham', 'Pastrami', 'Hard Salami', 'Cocktail Sausage', 'Back Bacon', 'Salt Pork', 'Boneless Ham', 'Veal Shank', 'Ground Venison', 'Lap Cheong', 'Blood Sausage', 'Fresh Sausage', 'Dried Beef', 'Gammon Joint', 'Mortadella', 'Beef Shank', 'Country Ham', 'Boneless Beef Short Ribs', 'Ground Bison', 'Bologna', 'Burger Patty', 'Smoked Pork Chop', 'Lamb Neck', 'Sausage Patty', 'Veal Roast', 'Beef Suet', 'Pork Neck', 'Pork Stew Meat', 'Beef Shoulder', 'Steak Tips', 'Veal Chops');

-- Insert Poultry
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Poultry FROM Ingredient
WHERE Name IN ('Chicken Breast', 'Cooked Chicken', 'Chicken Thighs', 'Boneless Skinless Chicken Thighs', 'Ground Turkey', 'Whole Chicken', 'Whole Turkey', 'Chicken Wings', 'Chicken Leg', 'Turkey Breast', 'Ground Chicken', 'Rotisserie Chicken', 'Chicken Tenders', 'Turkey Sausage', 'Chicken Sausage', 'Turkey Bacon', 'Duck', 'Duck Breast', 'Deli Turkey', 'Cornish Hen', 'Chicken Livers', 'Smoked Turkey', 'Turkey Meat', 'Chicken Quarters', 'Ground Turkey Sausage', 'Quail', 'Smoked Turkey Sausage', 'Smoked Chicken', 'Turkey Thigh', 'Turkey Leg', 'Goose', 'Pheasant', 'Turkey Pepperoni', 'Chicken Bones', 'Chicken Nuggets', 'Foie Gras', 'Turkey Meatballs', 'Chicken Giblets', 'Turkey Wing', 'Turkey Giblets', 'Turkey Neck', 'Turkey Burger', 'Chicken Andouille', 'Chicken Gizzards', 'Smoked Turkey Leg', 'Popcorn Chicken', 'Chicken Italian Sausage', 'Ostrich', 'Turkey Kielbasa', 'Chicken Feet', 'Chicken-Apple Sausage', 'Deli Chicken', 'Pulled Chicken', 'Smoked Duck Breast', 'Wild Game Bird', 'Chicken Necks', 'Duck Confit', 'Pigeon', 'Turkey Liver', 'Roast Duck', 'Chicken Meatballs', 'Chicken Teriyaki', 'Guinea Fowl', 'Smoked Turkey Wings', 'Duck Liver', 'Chicken Curry-Cut', 'Chicken Schnitzel', 'Chicken Roast', 'Grouse', 'Turkey Bones', 'Turkey Lunch Meat', 'Goose Liver', 'Turkey Roast', 'Capon', 'Young Chicken', 'Cooked Duck', 'Smoked Turkey Bacon', 'Chicken Bacon', 'Parmesan-Crusted Chicken', 'Turkey Hot Dog', 'Turkey Rissoles', 'Chicken Ham', 'Chicken Chorizo', 'Turkey Taco Meat', 'Chicken Frames', 'Duck Neck', 'Pulled Turkey', 'Chicken Gyros', 'Chicken Kebab', 'Chicken Patty', 'Chicken Ribs', 'Duck Bacon', 'Turkey Tail');

-- Insert Fish
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Fish FROM Ingredient
WHERE Name IN ('Salmon', 'Smoked Salmon', 'Cod', 'Tilapia', 'Tuna Steak', 'Whitefish', 'Halibut', 'Red Snapper', 'Sea Bass', 'Trout', 'Fish Fillets', 'Catfish', 'Surimi', 'Swordfish', 'Sardines', 'Sole', 'Mahi Mahi', 'Mackerel', 'Smoked Trout', 'Haddock', 'Caviar', 'Monkfish', 'Smoked Haddock', 'Flounder', 'Hot-Smoked Salmon', 'Hake', 'Perch', 'Salt Cod', 'Pollock', 'Smoked Mackerel', 'Sea Bream', 'Rainbow Trout', 'Cuttlefish', 'Grouper', 'Salmon Roe', 'Herring', 'Carp', 'Steelhead Trout', 'Roe', 'Barramundi', 'Black Cod', 'Orange Roughy', 'Kingfish', 'Turbot', 'Dried Anchovy', 'Rockfish', 'Bangus', 'Branzino', 'Pomfret', 'Battered Fish', 'Arctic Char', 'Coho Salmon', 'Lemon Sole', 'Eel', 'Fresh Anchovy', 'Yellowtail', 'Pike', 'Swai Fish', 'Walleye', 'John Dory', 'Fresh Mackerel', 'Salmon Trout', 'Smoked Eel', 'Basa Fish', 'Sturgeon', 'Bluefish', 'Fish Balls', 'Red Mullet', 'Gurnard', 'Plaice', 'Smoked Fish', 'Flathead', 'Pompano', 'Rohu Fish', 'Salted Salmon', 'Salt Fish', 'Whiting', 'Dried Fish', 'Fish Cake', 'Fish Heads', 'Smoked Herring', 'Nile Perch', 'Salmon Burger Meat', 'Shark Meat', 'Smoked Tuna', 'Garoupa', 'Gilt-Head Bream', 'Zander', 'Alaskan Pollock', 'Amberjack', 'Pangasius', 'Salt Herring', 'Soused Herring', 'Bottarga', 'Korean Fish Cake', 'Mullet', 'Fish Pie Mix', 'Galunggong', 'Skipjack Tuna', 'Tinapa');

-- Insert Seafood and Seaweed
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @SeafoodAndSeaweed FROM Ingredient
WHERE Name IN ('Shrimp', 'Prawns', 'Crab', 'Scallop', 'Mussel', 'Clam', 'Squid', 'Nori', 'Lobster', 'Oyster', 'Lobster Tail', 'Crawfish', 'Octopus', 'Dried Shrimp', 'Kombu', 'Bay Scallop', 'Wakame', 'Soft-Shell Crab', 'Mixed Seafood', 'Scampi', 'Baby Squid', 'King Crab', 'Dried Scallops', 'Squid Ink', 'Dulse Seaweed', 'Bay Shrimp', 'Roasted Seaweed', 'Kelp', 'Smoked Oyster', 'Yaki-Nori', 'Kizami Nori', 'Hijiki', 'Conch', 'Salted Shrimp', 'Mud Crab', 'Arame', 'Calamari Steak', 'Sea Urchin', 'Seaweed Salad', 'Abalone', 'Dulse', 'Dried Squid', 'Smoked Mussel', 'Korean Seaweed', 'Prepared Crab Cake', 'Sea Lettuce', 'Sea Snails', 'Aonori', 'Jellyfish', 'Ogo Seaweed', 'Seaweed Caviar', 'Shredded Squid', 'Sea Moss', 'Langoustine');

-- Insert Herbs and Spices
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @HerbsAndSpices FROM Ingredient
WHERE Name IN ('Cinnamon', 'Parsley', 'Cilantro', 'Cumin', 'Basil', 'Thyme', 'Ginger Root', 'Garlic Powder', 'Oregano', 'Nutmeg', 'Chili Flake', 'Chili Powder', 'Paprika', 'Cayenne', 'Rosemary', 'Bay Leaf', 'Turmeric', 'Clove', 'Onion Powder', 'Ginger Powder', 'Dill', 'Chive', 'Mint', 'Green Cardamom', 'Smoked Paprika', 'Fresh Mint', 'Coriander Powder', 'Sage', 'Coriander', 'Allspice', 'Cracked Pepper', 'Peppercorn', 'Mustard Powder', 'White Pepper', 'Mustard Seed', 'Curry Leaves', 'Fennel Seed', 'Tarragon', 'Saffron', 'Asafoetida', 'Star Anise', 'Marjoram', 'Lemongrass', 'Caraway', 'Garlic Granules', 'Celery Seed', 'Chipotle Powder', 'Chipotle', 'Fenugreek', 'Onion Flake', 'Thai Chile Pepper', 'Ancho Chile Powder', 'Sumac', 'Dried Parsley Flakes', 'Fenugreek Seed', 'Kashmiri Red Chilli', 'Thai Basil', 'Edible Flowers', 'Kaffir Lime Leaves', 'Aniseed', 'Chervil', 'Lavender', 'Carom Seeds', 'Mango Powder', 'Mace', 'Dried Chives', 'Mexican Oregano', 'Black Mustard Seed', 'Black Cardamom', 'Dried Chilies', 'Saffron Strands', 'Pink Peppercorn', 'Hot Paprika', 'Lemon Thyme', 'Guajillo Pepper', 'Galangal', 'Dried Cilantro', 'Lemon Balm', 'Garlic Flakes', 'Dill Seed', 'Green Peppercorn', 'Aleppo Pepper', 'Wasabi Powder', 'Gochugaru', 'Savory Herb', 'Achiote Seeds', 'Pandan Leaves', 'Clove Powder', 'Sorrel', 'Greek Oregano', 'Saigon Cinnamon', 'Lemongrass Paste', 'Shiso', 'Celery Powder', 'Anardana', 'Dried Orange Peel', 'Black Cumin', 'Vietnamese Mint', 'Espelette Pepper', 'Lemon Verbena');

-- Insert Sugar and Sweeteners
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @SugarAndSweeteners FROM Ingredient
WHERE Name IN ('Sugar', 'Brown Sugar', 'Confectioners Sugar', 'Honey', 'Maple Syrup', 'Corn Syrup', 'Coconut Sugar', 'Molasses', 'Stevia', 'Agave Nectar', 'Demerara Sugar', 'Sugar Syrup', 'Erythritol', 'Vanilla Sugar', 'Caramel Syrup', 'Chocolate Syrup', 'Jaggery', 'Golden Syrup', 'Cinnamon Sugar', 'Liquid Stevia', 'Grenadine', 'Coarse Sugar', 'Salted Caramel Syrup', 'Sanding Sugar', 'Dark Corn Syrup', 'Monk Fruit Sweetener', 'Sucralose', 'Colored Sugar', 'Blackstrap Molasses', 'Maple Sugar', 'Glucose', 'Confectioners Sweetener', 'Xylitol', 'Brown Sugar Substitute', 'Jam Sugar', 'Brown Rice Syrup', 'Rock Sugar', 'Vanilla Syrup', 'Strawberry Syrup', 'Coconut Syrup', 'Ginger Syrup', 'Orgeat', 'Raspberry Syrup', 'Pancake Syrup', 'Date Syrup', 'Rice Malt Syrup', 'Black Treacle', 'Date Paste', 'Mint Syrup', 'Cinnamon Syrup', 'Treacle', 'Passion Fruit Syrup', 'Rice Syrup', 'Maple Butter', 'Manuka Honey', 'Blueberry Syrup', 'Apple Syrup', 'Allulose', 'Blackberry Syrup', 'Hibiscus Syrup', 'Cherry Syrup', 'Fresh Sugar Cane', 'Lavender Syrup', 'Pineapple Syrup', 'Hazelnut Syrup', 'Sorghum Syrup', 'White Chocolate Sauce', 'Pumpkin Spice Syrup', 'Glycerine', 'Jaggery Syrup', 'Piloncillo', 'Golden Sugar', 'Cranberry Syrup', 'Lucuma Powder', 'Black Sugar', 'Cane Syrup', 'Mango Syrup', 'Malt Syrup', 'Hot Honey', 'Gula Melaka', 'Elderberry Syrup', 'Rosemary Syrup', 'Dark Chocolate Syrup', 'Inulin', 'Brown Butter Syrup', 'Flavored Stevia', 'Sweet n Low', 'Fructose', 'Honey Powder', 'Berry Syrup', 'Date Sugar', 'Grape Syrup', 'Mastic Gum', 'Gum Syrup', 'Irish Cream Syrup', 'Prickly Pear Syrup', 'Cookie Butter Syrup', 'Creamed Honey', 'Chocolate Sugar', 'Lavender Sugar');

-- Insert Seasonings and Spice Blends
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @SeasoningsAndSpiceBlends FROM Ingredient
WHERE Name IN ('Italian Seasoning', 'Seasoned Salt', 'Curry', 'Garam Masala', 'Pumpkin Pie Spice', 'Taco Seasoning', 'Cajun Seasoning', 'Dry Ranch Seasoning', 'White Miso', 'Himalayan Salt', 'Lemon & Pepper Seasoning', 'Liquid Smoke', 'Poultry Seasoning', 'Red Curry', 'Chinese Five Spice', 'Old Bay Seasoning', 'Herbes de Provence', 'All-Purpose Seasoning', 'Chaat Masala', 'Creole Seasoning', 'Steak Seasoning', 'Juniper Berry', 'Fleur de Sel', 'Thai Red Curry Paste', 'Mixed Herbs', 'Green Curry', 'Barbecue Seasoning', 'Apple Pie Spice', 'Zaatar', 'Ras El Hanout', 'Seafood Seasoning', 'Chili Con Carne Seasoning', 'Bagel Seasoning', 'Fajita Seasoning', 'Gravy Mix', 'Tandoori Spice', 'Pickling Spice', 'Garlic-Pepper Seasoning', 'Caribbean Jerk Seasoning', 'Pickling Salt', 'Garlic & Herb Seasoning', 'Greek Seasoning', 'MSG', 'Adobo Seasoning', 'Sambar Powder', 'Smoking Wood', 'Smoked Salt', 'Dash Seasoning', 'Red Miso', 'Hot Curry', 'Chili-Lime Seasoning', 'Salt-Free Seasoning', 'Bouquet Garni', 'Yellow Miso', 'Carne Asada Seasoning', 'Dukkah', 'Curing Salt', 'Pav Bhaji Masala', 'Mexican Seasoning', 'Seasoned Pepper', 'Crab Boil Seasoning', 'Chipotle Seasoning', 'Shichimi Togarashi', 'Truffle Salt', 'Rib Rub', 'Biryani Masala', 'Furikake', 'Togarashi', 'Chana Masala', 'Meat Masala', 'Harissa Spice Blend', 'Cheese Powder', 'Grey Sea Salt', 'Brown Miso', 'Gingerbread Spice', 'Au Jus Mix', 'Blackening Seasoning', 'Mushroom Seasoning', 'Lemon & Herb Seasoning', 'Popcorn Seasoning', 'Berbere', 'Pizza Seasoning', 'Chai Masala', 'Panang Curry', 'Kitchen King Masala', 'Shawarma Seasoning', 'Fines Herbes', 'Vanilla Salt', 'Mulling Spices', 'Thai Seasoning', 'Coffee Rub', 'Sriracha Seasoning', 'Hawaiian Salt', 'Tom Yum Paste', 'Guacamole Seasoning', 'Mesquite Seasoning', 'Salad Seasoning', 'Beef Stew Seasoning', 'Baharat', 'Fish Masala');

-- Insert Baking
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Baking FROM Ingredient
WHERE Name IN ('Flour', 'Vanilla', 'Baking Powder', 'Baking Soda', 'Cornstarch', 'Yeast', 'Dark Chocolate Chips', 'Chocolate Chips', 'Whole-Wheat Flour', 'Shredded Coconut', 'Almond Flour', 'Self-Raising Flour', 'Cornmeal', 'Baking Mix', 'Pastry Flour', 'Coconut Flake', 'Coconut Flour', 'Cream of Tartar', 'Cake Flour', 'Bread Flour', 'Almond Meal', 'Unbleached All-Purpose Flour', 'White Baking Chips', 'Flaxseed Meal', 'Gluten-Free Flour', 'Rice Flour', 'Yellow Cake Mix', 'Tapioca Starch', 'Chickpea Flour', 'Xanthan Gum', 'Oat Flour', 'Whole-Wheat Pastry Flour', 'Candy Sprinkles', 'Chocolate Cake Mix', 'Spelt', 'Brownie Mix', 'Arrowroot Flour', 'Potato Starch', 'Butterscotch Chips', 'Peanut Butter Chips', 'Crystallized Ginger', 'Buckwheat Flour', 'Brown Rice Flour', 'Pectin', 'Rye Flour', 'Psyllium Husk', 'Semolina Flour', 'Glutinous Rice Flour', 'Refined Flour', 'Sweetened Coconut Flake', 'Pancake Mix', 'Marzipan', 'Toffee Bits', 'Corn Muffin Mix', 'Coffee Bean', 'Cornbread Mix', 'Spice Cake Mix', 'Masa Harina', 'Sorghum Flour', 'Cinnamon Chips', 'Red Velvet Cake Mix', 'Baking Chips', 'Sago', 'Sugar Cookie Mix', 'Matzo Meal', 'Whipped Cream Stabilizer', 'Vital Wheat Gluten', 'Coconut Chips', 'Cassava Flour', 'Hazelnut Flour', 'Quinoa Flour', 'Finger Millet Flour', 'Meringue Powder', 'Angel Food Cake Mix', 'Mint Baking Chips', 'Fondant', 'White Cornmeal', 'Gluten-Free Baking Flour', 'Mincemeat', 'Millet Flour', 'Einkorn Flour', 'Self-Rising Cornmeal', 'Gluten-Free Cake Mix', 'Gluten-Free Self-Raising Flour', 'Peanut Flour', 'Coconut Powder', 'Carob Powder', 'Ready-Made Icing', 'Teff Flour', 'Potato Flour', 'Sweet Bean Paste', 'Fruit Salt', 'Guar Gum', 'Tapioca Pearls', 'Instant Flour', 'Seasoned Flour', 'Soy Flour', 'Oat Fiber', 'Amaranth Flour', 'Gluten-Free Panko');

-- Insert Pre-Made Doughs and Wrappers
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @PreMadeDoughsAndWrappers FROM Ingredient
WHERE Name IN ('Pie Crust', 'Puff Pastry', 'Pizza Crust', 'Refrigerated Crescent Rolls', 'Phyllo', 'Biscuit Dough', 'Dumpling Wrapper', 'Rice Paper', 'Sourdough Starter', 'Cookie Dough', 'Graham Cracker Crust', 'Egg Roll Wrapper', 'Bread Dough', 'Butter Puff Pastry', 'Frozen Dinner Roll', 'Mini Phyllo', 'Cinnamon Roll Dough', 'Gyoza Wrapper', 'Dosa Batter', 'Puff Pastry Shells', 'Wontons', 'Wonton Strips', 'Fresh Pasta Dough', 'Gluten-Free Pizza Crust', 'Idli Batter', 'Chocolate Pie Crust', 'Croissant Dough', 'Kataifi', 'Brisee', 'Sausage Rolls', 'Tofu Skins', 'Chocolate Crumb Crust', 'Frozen Pizza Rolls', 'Korean Rice Cake', 'Corn Dogs', 'Empanada Wrapper', 'Rough-Puff Pastry', 'Sourdough Discard', 'Tortilla Dough', 'Gingerbread Cookie Dough', 'Yufka', 'Cob Loaf', 'Egg Wrap', 'Samosa Sheet', 'Brick Pastry');

-- Insert Grains and Cereals
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @GrainsAndCereals FROM Ingredient
WHERE Name IN ('Rolled Oats', 'White Rice', 'Long-Grain White Rice', 'Quinoa', 'Brown Rice', 'Quick-Cooking Oats', 'Cooked Rice', 'Breakfast Cereal', 'Risotto Rice', 'Rice Cereal', 'Couscous', 'Wild Rice', 'Semolina', 'Jasmine Rice', 'Polenta', 'Granola Cereal', 'Bulgur', 'Cauliflower Rice', 'Pearl Barley', 'Farro', 'Grits', 'Barley', 'Wheat Germ', 'Steel Cut Oats', 'Oat Bran', 'Instant Rice', 'Sushi Rice', 'Millet', 'Glutinous Rice', 'Hominy', 'Red Quinoa', 'Wheat Bran', 'Raw Buckwheat', 'Instant Oats', 'Poha', 'Wheat Berries', 'Yellow Rice', 'Black Rice', 'Muesli', 'Fine Semolina', 'Kasha', 'Quinoa Flakes', 'Amaranth', 'Puffed Rice', 'Cracked Wheat', 'Pearled Farro', 'Paella Rice', 'Freekeh', 'Sorghum', 'Red Rice', 'Idli Rice', 'Mexican Rice', 'Brown Jasmine Rice', 'Cream of Wheat', 'Rice Pilaf', 'Weetabix', 'Barnyard Millet', 'Gluten-Free Cereals', 'Jambalaya Rice Mix', 'Blue Cornmeal', 'Whole-Grain Oats', 'Cilantro Lime Rice', 'Puffed Quinoa', 'Black Glutinous Rice', 'Dirty Rice Mix', 'Hulled Barley', 'Finger Millet', 'Puffed Wheat', 'Broccoli Rice', 'Foxtail Millet', 'Brown Long Grain Rice', 'Fried Rice', 'Pearl Millet', 'Matta Rice', 'Rye Berries', 'Kodo Millet', 'Spelt Flakes', 'Oat Groats', 'Teff', 'Sprouted Brown Rice', 'Chicken-Flavor Rice', 'Little Millet', 'Rye Flakes', 'Puffed Amaranth', 'Biriyani Rice', 'Coconut Rice', 'Red Beans & Rice Mix', 'Rice Bran', 'Spelt Berry', 'Texmati Rice', 'Amaranth Flakes', 'Puffed Kamut', 'Bamboo Rice', 'Pearled Sorghum', 'Red Rice Poha', 'Shirataki Rice', 'Sona Masoori Rice', 'Grünkern', 'Jeera Rice', 'Saffron Rice');

-- Insert Legumes
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Legumes FROM Ingredient
WHERE Name IN ('Peas', 'Green Beans', 'Black Beans', 'Chickpea', 'Kidney Beans', 'White Beans', 'Lentils', 'Snow Peas', 'Snap Peas', 'Red Lentils', 'Cannellini Beans', 'Bean Sprouts', 'Edamame', 'Green Lentils', 'Pinto Beans', 'Urad Dal', 'Lima Beans', 'Chana Dal', 'Fava Beans', 'Black-Eyed Peas', 'Moong Dal', 'Split Peas', 'Pigeon Peas', 'Red Beans', 'Mung Bean Sprout', 'Pea Shoots', 'Soybeans', 'Mung Beans', 'String Beans', 'Yellow Split Peas', 'Black Lentils', 'Borlotti Beans', 'Aquafaba', 'Chana', 'Snake Beans', 'Yellow Lentils', 'Fermented Black Beans', 'Kala Chana', 'Mixed Beans', 'Black Gram', 'Wax Beans', 'Dried Peas', 'White Pea', 'Lentil Sprouts', 'Pink Beans', 'Field Peas', 'Black Soybeans', 'Gigantes', 'Flageolets', 'Horse Gram', 'Green Chickpea', 'Soy Sprouts', 'Brown Beans', 'Cluster Beans', 'Mayocoba Beans', 'Winged Beans', 'Castelluccio Lentils', 'Golden Wax Beans', 'Moth Beans', 'Hara Chana', 'Hyacinth Beans', 'Lupini Beans', 'Natto', 'Chickpea Sprouts', 'Petai', 'Sugar Beans', 'Scarlet Runner Beans', 'Honey Beans', 'Soy Flakes');

-- Insert Pasta
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Pasta FROM Ingredient
WHERE Name IN ('Short-Cut Pasta', 'Spaghetti', 'Macaroni', 'Egg Noodle', 'Spiral Pasta', 'Lasagna', 'Linguine', 'Fettuccine', 'Orzo', 'Pasta Shell', 'Bow-Tie Pasta', 'Tortellini', 'Noodle', 'Rice Noodles', 'Rigatoni', 'Gnocchi', 'Angel Hair Pasta', 'Ramen Noodles', 'Vermicelli', 'Tagliatelle', 'Ziti', 'Ravioli', 'Soba Noodles', 'Orecchiette', 'Israeli Couscous', 'Zoodles', 'Udon Noodles', 'Ditalini', 'Rice Vermicelli', 'Gluten-Free Pasta', 'Pappardelle', 'Glass Noodles', 'Mac n Cheese', 'Penne Rigate', 'Manicotti', 'Bucatini', 'Cannelloni', 'Thai Rice Noodles', 'Rotelle', 'Shirataki Noodles', 'Brown Rice Pasta', 'Chicken Ramen', 'Pierogi', 'Soup Pasta', 'Cavatelli', 'Sweet Potato Noodles', 'Acini di Pepe', 'Instant Noodle', 'Radiatore', 'Somen Noodles', 'Gluten-Free Noodles', 'Yakisoba Noodles', 'Beef Ravioli', 'Spaetzle', 'Hakka Noodles', 'Kluski Noodles', 'Fideo Pasta', 'Kelp Noodles', 'Rice-A-Roni', 'Paccheri', 'Pasta Salad Mix', 'Beef Ramen', 'Yolk-Free Noodles', 'Black Bean Pasta', 'Matzo Farfel', 'Spinach Fettuccine', 'Banh Pho', 'Frozen Dumplings', 'Fregola', 'Beef Tortellini', 'Cauliflower Gnocchi', 'Misua', 'Butternut Squash Noodles', 'Palmini', 'Trahanas', 'Busiate', 'Lobster Ravioli', 'Mafalde', 'Trottole', 'Casarecce', 'Mandu', 'Pork Ramen', 'Pot Pie Noodle', 'Mie Noodle', 'Semiya', 'Bean Pasta', 'Bean Sheets', 'Hilopites', 'Jjolmyeon', 'Naengmyeon Noodles', 'Quinoa Pasta', 'Squash Ravioli', 'Yuba Noodles', 'High-Protein Pasta');

-- Insert Bread and Salty Snacks
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @BreadAndSaltySnacks FROM Ingredient
WHERE Name IN ('Bread', 'Bread Crumbs', 'Panko', 'Flour Tortillas', 'Corn Tortillas', 'Crackers', 'Baguette', 'Tortilla Chips', 'Pretzels', 'Pita', 'Sourdough Bread', 'Seasoned Bread Crumbs', 'Rustic Italian Bread', 'Popcorn', 'Croutons', 'Whole-Wheat Tortillas', 'English Muffin', 'Brioche', 'Rye Bread', 'Flatbread', 'Dry-Roasted Peanuts', 'Stuffing Mix', 'Potato Chips', 'Taco Shells', 'Naan', 'Cornbread', 'Unpopped Popcorn', 'Tater Tots', 'Corn Chips', 'Bagel', 'Croissants', 'Pork Rinds', 'Pumpernickel', 'Sweet Bread', 'Gluten-Free Bread', 'Pita Chips', 'Hawaiian Rolls', 'Potato Bread', 'Breadsticks', 'Focaccia', 'Muffin', 'Tostada Shells', 'Gluten-Free Bread Crumbs', 'Crispy Fried Onions', 'Yeast Extract Spread', 'Matzo', 'Garlic Bread', 'Challah', 'Roasted Gram', 'Cheese Crackers', 'Panettone', 'Crostini', 'Rice Cake', 'Gluten-Free Tortillas', 'Sev', 'Sweet Potato Fries', 'Corn Muffin', 'Papad', 'Vegetable Chips', 'Spinach Wraps', 'Plantain Chips', 'Roasted Chickpeas', 'Pretzel Bun', 'Boboli', 'Cheetos', 'Crumpet', 'Chapati', 'Seed Bread', 'Keto Bread', 'Bread Bowl', 'Cornbread Stuffing Mix', 'Low-Carb Wraps', 'Milk Bread', 'Frozen Onion Rings', 'Sprouted Grain Bread', 'Rice Crackers', 'Rusks', 'Corn Nuts', 'Pav Bun', 'Banana Bread', 'Polarbröd', 'Sprouted Bread', 'Fruit Bread', 'Crispbread', 'Roti Bread', 'Prawn Crackers', 'Popcorn Shrimp', 'Chocolate Muffin', 'Ezekiel Bread', 'Melba Toast', 'Wasabi Peas', 'Bao Bun', 'Yorkshire Pudding', 'Arabic Bread', 'Barley Rusks', 'Seaweed Snack', 'Zwieback', 'Oven Chips', 'Taco Kit', 'Gluten-Free Pita');

-- Insert Oils and Fats
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @OilsAndFats FROM Ingredient
WHERE Name IN ('Olive Oil', 'Vegetable Oil', 'Extra Virgin Olive Oil', 'Canola Oil', 'Coconut Oil', 'Cooking Spray', 'Sesame Oil', 'Frying Oil', 'Sunflower Oil', 'Avocado Oil', 'Toasted Sesame Oil', 'Peanut Oil', 'Grapeseed Oil', 'Lard', 'Pork Fat', 'Corn Oil', 'Virgin Coconut Oil', 'Mustard Oil', 'Chili Oil', 'Garlic Oil', 'Walnut Oil', 'Truffle Oil', 'Safflower Oil', 'Cacao Butter', 'Salad Oil', 'Duck Fat', 'Rice Bran Oil', 'Soybean Oil', 'White Truffle Oil', 'Medium-Chain Triglyceride', 'Butter-Flavored Cooking Spray', 'Flaxseed Oil', 'Pumpkin Seed Oil', 'Hazelnut Oil', 'Coconut Oil Spray', 'Almond Oil', 'Lemon Oil', 'Macadamia Oil', 'Goose Fat', 'Palm Oil', 'Basil Oil', 'Schmaltz', 'Tallow', 'Pistachio Oil', 'Herb-Infused Olive Oil', 'Hot Sesame Oil', 'Pecan Oil', 'Beef Fat', 'Roasted Peanut Oil', 'Argan Oil', 'Crisco Oil', 'Shea Butter', 'Black Sesame Oil', 'Red Palm Oil', 'Lamb Fat', 'Sichuan Peppercorn Oil', 'Castor Oil', 'Shallot Oil', 'Achiote Oil', 'Jojoba Oil', 'Wheat Germ Oil', 'Blood Orange Olive Oil', 'Oregano Oil', 'Hemp Seed Oil', 'Cottonseed Oil', 'Ginger Oil', 'Rosehip Seed Oil', 'Marula Oil', 'Moringa Seed Oil', 'White Cacao Butter', 'Black Seed Oil');

-- Insert Dressings and Vinegars
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @DressingsAndVinegars FROM Ingredient
WHERE Name IN ('Mayonnaise', 'Apple Cider Vinegar', 'Balsamic Vinegar', 'Vinegar', 'Red Wine Vinegar', 'Rice Wine Vinegar', 'White Wine Vinegar', 'Ranch Dressing', 'Italian Dressing', 'Sherry Vinegar', 'Distilled White Vinegar', 'White Balsamic Vinegar', 'Sweet Chilli Sauce', 'Champagne Vinegar', 'Vinaigrette Dressing', 'Balsamic Vinaigrette', 'Seasoned Rice Vinegar', 'Blue Cheese Dressing', 'Caesar Dressing', 'Thousand Island', 'Malt Vinegar', 'Black Vinegar', 'Canola Mayonnaise', 'Raspberry Vinegar', 'Japanese Mayonnaise', 'Tarragon Vinegar', 'Greek Vinaigrette', 'Sesame Dressing', 'Aioli Sauce', 'Honey Mustard Dressing', 'French Dressing', 'Spicy Mayo', 'Poppyseed Dressing', 'Catalina Dressing', 'Verjuice', 'Raspberry Vinaigrette', 'Cane Vinegar', 'Red Wine Vinaigrette', 'Russian Dressing', 'Coleslaw Dressing', 'Avocado Oil Mayonnaise', 'Buttermilk Ranch Dressing', 'Mustard-Mayonnaise Blend', 'Sushi Vinegar', 'Champagne Vinaigrette', 'Sun-Dried Tomato Vinaigrette', 'Creamy Balsamic Dressing', 'Coconut Vinegar', 'Garlic Mayonnaise', 'Ume Plum Vinegar', 'Brown Rice Vinegar', 'Spicy Ranch Dressing', 'Cilantro Dressing', 'Creamy Dressing', 'Fig Balsamic', 'Green Goddess Dressing', 'Chipotle Aioli', 'Spiced Vinegar', 'Lime Vinaigrette', 'Onion Salad Dressing', 'Miso Dressing', 'White Balsamic Vinaigrette', 'Chardonnay Vinegar', 'Prepared Coleslaw Dressing', 'Honey Vinegar', 'Lemon Vinegar', 'Tandoori Mayonnaise', 'Chili Vinegar', 'Chili-Lime Dressing', 'Moscatel Vinegar', 'Pomegranate Vinegar', 'Vinegar Powder', 'Mango Vinaigrette', 'Sweet Onion Dressing', 'Avocado-Lime Dressing', 'Mustard Aioli', 'Caramelised Onion Dressing');

-- Insert Condiments
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Condiments FROM Ingredient
WHERE Name IN ('Soy Sauce', 'Dijon Mustard', 'Worcestershire', 'Hot Sauce', 'Ketchup', 'Mustard', 'Fish Sauce', 'BBQ Sauce', 'Sriracha', 'Wholegrain Mustard', 'Tamari', 'Oyster Sauce', 'Chili Sauce', 'Ginger-Garlic Paste', 'Brown Mustard', 'Teriyaki Sauce', 'Wing Sauce', 'Prepared Horseradish', 'Ginger Paste', 'Dark Soy Sauce', 'Coconut Aminos', 'Chili Paste', 'Harissa', 'Chili-Garlic Sauce', 'Tamarind Paste', 'Pomegranate Molasses', 'Gochujang', 'Wasabi', 'Mango Chutney', 'Honey Mustard', 'Sambal Oelek', 'English Mustard', 'Preserved Lemon', 'Kecap Manis', 'Chutney', 'Shrimp Paste', 'Picante Sauce', 'Thai Sweet Chili Sauce', 'Sweet and Sour Sauce', 'Chili-Garlic Paste', 'Green Chutney', 'Tartar Sauce', 'Liquid Aminos', 'Hot Pepper Jelly', 'Ponzu', 'Mexican Hot Sauce', 'Sambal', 'Bonito Flakes', 'Green Chilli Sauce', 'Red Pepper Jelly', 'Crispy Onions', 'Thai Chili Paste', 'Peri Peri', 'Green Chilli Paste', 'Mint Jelly', 'Pepper Paste', 'Horseradish Mustard', 'Aji Amarillo', 'Mustard Paste', 'Tamarind Chutney', 'Onion Marmalade', 'Ginger Chili Paste', 'Yuzu Juice', 'Chermoula', 'Giardiniera', 'HP Sauce', 'Duck Sauce', 'Tonkatsu Sauce', 'Doubanjiang', 'Chili Crisp', 'Black Soy Sauce', 'Doenjang', 'Korean BBQ Sauce', 'Maggi Sauce', 'Chinese Mustard', 'Lime Pickle', 'Karashi', 'Chamoy', 'Mushroom Soy Sauce', 'Taucheo', 'German Mustard', 'Yuzu Kosho', 'Banana Ketchup', 'Remoulade', 'Hot Bean Paste', 'Patis', 'Pickapeppa Sauce', 'Eel Sauce', 'Guk Ganjang', 'Salsa Lizano', 'White BBQ Sauce', 'Grape Must', 'Shrimp Sauce', 'Shrimp Powder', 'Chili Puree', 'Fermented Tofu', 'Green Harissa', 'Sweet Soybean Paste', 'Szechuan Sauce', 'Hendersons Relish');

-- Insert Canned Food
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @CannedFood FROM Ingredient
WHERE Name IN ('Canned Tomato', 'Capers', 'Green Olives', 'Canned Chickpea', 'Black Olives', 'Canned Black Beans', 'Canned Pumpkin', 'Kalamata Olives', 'Canned Tuna', 'Pickle', 'Canned Pineapple', 'Chipotle in Adobo', 'Roasted Red Peppers', 'Canned Anchovy', 'Maraschino Cherry', 'Tomatoes with Green Chiles', 'Canned Artichoke', 'Canned Corn', 'Canned Whole Tomato', 'Canned Kidney Beans', 'Canned Pie Filling', 'Refried Beans', 'Canned Cannellini Beans', 'Sweet Pickle Relish', 'Sauerkraut', 'Creamed Corn', 'Corned Beef', 'Canned Beans', 'Pickled Jalapenos', 'Diced Green Chiles', 'Canned Pinto Beans', 'Sun-Dried Tomatoes in Oil', 'Canned Mandarin Oranges', 'Kimchi', 'Chili Beans', 'Canned Crab', 'Canned Peaches', 'Bamboo Shoot', 'Baked Beans', 'Canned Mushroom', 'Canned Salmon', 'Pickling Juice', 'Dill Pickle Relish', 'Canned Clam', 'Canned Water Chestnut', 'Canned Black-Eyed Peas', 'Pickled Ginger', 'Canned Whole Green Chiles', 'Canned Apple', 'Canned Green Beans', 'Spam', 'Hearts of Palm', 'Chili with Beans', 'Pickled Onions', 'Canned Lentils', 'Fruit Cocktail', 'Canned Peas', 'Pickled Red Onion', 'Pimiento-Stuffed Green Olives', 'Canned Pork', 'Pickled Beets', 'Canned Cherry Tomato', 'Bread & Butter Pickles', 'Canned Apricot', 'Canned Sweet Potato', 'Canned Sour Cherry', 'Peppadew Pepper', 'Canned Pear', 'Pork and Beans', 'Onion Paste', 'Canned Baby Corn', 'Pickled Vegetables', 'Chili Without Beans', 'Pickled Pepper', 'Mexican-Style Corn', 'Pumpkin Pie Filling', 'Fire-Roasted Green Chiles', 'Banana Pepper Rings', 'Ranch-Style Beans', 'Canned Chicken Breast', 'Canned Carrot', 'Canned Cherry', 'Canned Mixed Beans', 'Canned Sardines', 'Canned Lychee', 'Ginger in Syrup', 'Taggiasca Olives', 'Canned Jackfruit', 'Tomato Relish', 'Canned Potato', 'Canned Mango', 'Cranberry Relish', 'Pickled Herring', 'Canned Asparagus', 'Red Pepper Relish', 'Canned Fava Beans', 'Canned Peas and Carrots', 'Corn Relish', 'Florina Peppers', 'Pickled Cherry Peppers');

-- Insert Sauces, Spreads and Dips
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @SaucesSpreadsAndDips FROM Ingredient
WHERE Name IN ('Tomato Paste', 'Peanut Butter', 'Tomato Sauce', 'Salsa', 'Tahini', 'Pesto', 'Pasta Sauce', 'Marinara Sauce', 'Hoisin Sauce', 'Pico de Gallo', 'Enchilada Sauce', 'Stewed Tomatoes', 'Guacamole', 'Hummus', 'Salsa Verde', 'Fire-Roasted Tomato', 'Alfredo Sauce', 'Balsamic Glaze', 'Anchovy Paste', 'Steak Sauce', 'Chunky Peanut Butter', 'Tzatziki', 'Beef Gravy', 'Taco Sauce', 'Sun-Dried Tomato Pesto', 'Green Enchilada Sauce', 'Béchamel Sauce', 'Cheese Dip', 'Horseradish Sauce', 'Plum Sauce', 'Garlic Butter', 'Hollandaise Sauce', 'Cocktail Sauce', 'Tapenade', 'Black Bean Sauce', 'Pimento Cheese Spread', 'Stir-Fry Sauce', 'Turkey Gravy', 'Chicken Gravy', 'Thai Peanut Sauce', 'Demi-Glace', 'Sloppy Joe Sauce', 'Sofrito', 'Mustard Sauce', 'Sun-Dried Tomato Paste', 'French Onion Dip', 'Chimichurri Sauce', 'Herb Butter', 'Bolognese Sauce', 'Curry Sauce', 'Liver Spread', 'Browning Sauce', 'Schezwan Sauce', 'Pork Gravy', 'Orange Sauce', 'Country Gravy', 'Pineapple Salsa', 'Mushroom Gravy', 'Chicken Demi-Glace', 'Mango Salsa', 'Olive Paste', 'Spinach Dip', 'Japanese Curry', 'Artichoke Dip', 'Black Truffle Butter', 'Black Sesame Paste', 'Roasted Red Pepper Hummus', 'Whipped Cream Cheese Spread', 'Bacon Jam', 'Tikka Masala Sauce', 'Vodka Sauce', 'Garlic Hummus', 'Green Taco Sauce', 'Kung Pao Sauce', 'Sausage Gravy', 'Cheese Spread', 'Corn Salsa', 'Mole Paste', 'Onion Gravy', 'Pad Thai Sauce', 'Cheddar Sauce', 'Butter Chicken Sauce', 'Deviled Ham Spread', 'Garlic Pasta Sauce', 'Garlic Spread', 'Green Olive Tapenade', 'Black Pepper Sauce', 'Char Siu Sauce', 'Sesame Sauce', 'Szechwan Chutney', 'Thai Red Curry Sauce', 'Kale Pesto', 'Tarama', 'Ssamjang', 'White Pizza Sauce', 'White Truffle Butter', 'Mango Sauce', 'Salsa Con Queso Dip', 'Yum Yum Sauce', 'Arugula Pesto');

-- Insert Soups, Stews and Stocks
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @SoupsStewsAndStocks FROM Ingredient
WHERE Name IN ('Chicken Broth', 'Vegetable Broth', 'Chicken Stock', 'Beef Broth', 'Beef Stock', 'Cream of Mushroom', 'Bouillon Cube', 'Cream of Chicken', 'Onion Soup Mix', 'Tomato Soup', 'Fish Stock', 'Soup Base', 'Cream of Celery', 'Clam Juice', 'Cheese Soup', 'Dashi', 'Bone Broth', 'Onion Soup', 'Veal Stock', 'Chicken Bone Broth', 'Turkey Stock', 'Lamb Stock', 'Turkey Broth', 'Beef Consommé', 'Stock Paste', 'Cream of Potato', 'Golden Mushroom Soup', 'Seafood Stock', 'Chicken Soup', 'Turkey Drippings', 'Mushroom Broth', 'Chicken Noodle Soup', 'Vegetable Soup Mix', 'Vegetable Soup', 'Ramen Noodle Soup', 'Nacho Cheese Soup', 'Shrimp Stock', 'Beef Dripping', 'Lobster Stock', 'Pork Stock', 'Cream of Broccoli', 'Chicken Rice Soup', 'Beefy Onion Soup Mix', 'Chicken Stock Paste', 'Butternut Squash Soup', 'Clam Broth', 'Miso Soup', 'Broccoli-Cheese Soup', 'Duck Stock', 'Sinigang Mix', 'Vegan Chicken Broth', 'Ham Stock', 'Cream of Asparagus', 'New England Clam Chowder', 'Beefy Mushroom Soup', 'Pork Broth', 'Cream of Shrimp Soup', 'Bean Soup Mix', 'Black Bean Soup', 'Chicken Consommé', 'Cream of Bacon', 'Lentil Soup', 'Vegetable Beef Soup', 'Veal Broth', 'Chicken Soup Mix', 'Roasted Garlic Chicken Broth', 'Lobster Bisque', 'Bean with Bacon Soup', 'Clam Chowder', 'Condensed Chicken Gumbo Soup', 'Thai Ginger Broth', 'Tortilla Soup Base', 'Anchovy Stock', 'Chicken Drippings', 'Chicken Corn Chowder', 'Cream of Chicken Soup Mix', 'Shrimp Bouillon Cube', 'Thai Chicken Broth', 'Turkey Bone Broth', 'Lamb Broth', 'Minestrone', 'Pork & Beans', 'Tomato Bisque', 'Venison Stock', 'Beef Stock Paste', 'Bovril', 'Ham-Flavored Concentrate', 'Noodle Soup Mix', 'Oxtail Soup', 'Potato Soup Mix', 'Callaloo', 'Split Pea Soup', 'Chicken and Mushroom Soup', 'Chili Beef Soup', 'Corn Chowder', 'Cream of Cauliflower', 'Dashida', 'Green Pea Soup', 'Pho Broth');

-- Insert Desserts and Sweet Snacks
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @DessertsAndSweetSnacks FROM Ingredient
WHERE Name IN ('Cocoa', 'Dark Chocolate', 'Dark Cocoa', 'Chocolate', 'Marshmallow', 'Applesauce', 'Gelatin', 'White Chocolate', 'Graham Cracker', 'Graham Cracker Crumbs', 'Oreo', 'Instant Pudding', 'Chocolate Hazelnut Spread', 'Chocolate Candy', 'Dutch-Process Cocoa', 'Raspberry Jam', 'Biscuits', 'Apricot Jam', 'Caramel Sauce', 'Candy Coating', 'Raw Cacao Powder', 'Strawberry Jam', 'Marshmallow Creme', 'Candy', 'Baking Chocolate', 'Jam', 'Orange Marmalade', 'Wafer', 'Cookies', 'Jello', 'Cranberry Sauce', 'Chocolate Pudding', 'Peanut Butter Cups', 'Candy Cane', 'Ginger Snaps', 'Cacao Nibs', 'Lady Fingers', 'Fudge Sauce', 'Chocolate Chip Cookies', 'Caramel Candies', 'Chocolate Cookies', 'Apple Butter', 'Peppermint Candy', 'Cinnamon Roll', 'Candied Cherry', 'Butter Cookies', 'Currant Jelly', 'Candied Ginger', 'Angel Food Cake', 'Couverture Chocolate', 'Peach Preserves', 'Candied Peel', 'Cherry Jam', 'Dark Couverture Chocolate', 'White Baking Chocolate', 'Chocolate Wafer', 'Grape Jelly', 'Instant Lemon Pudding', 'Waffles', 'Agar Agar', 'Fig Jam', 'Cookie Butter', 'Candied Fruit', 'Apple Jelly', 'Gummies', 'Almond Cookies', 'Candy Corn', 'Blueberry Jam', 'Blackberry Preserves', 'Butterscotch', 'Ice-Cream Cone', 'Egg Candies', 'Marmalade', 'Sugar Cookies', 'Strawberry Puree', 'Chocolate Powder', 'Licorice', 'Chocolate-Covered Espresso Bean', 'Pineapple Jam', 'Banana Pudding', 'Sponge Cake', 'Sorbet', 'Mexican Chocolate', 'Plum Jam', 'White Couverture', 'Cinnamon Candy', 'White Chocolate Pudding', 'Peanut-Butter Sandwich Cookies', 'Pumpkin Butter', 'Chocolate Peanut Butter', 'Guava Paste', 'Butterscotch Pudding Mix', 'Chocolate Spread', 'Fudge', 'Strawberry Sauce', 'Doughnut', 'Hershey Kisses', 'Biscotti', 'Peppermint Patties', 'Candied Pineapple');

-- Insert Wine, Beer and Spirits
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @WineBeerAndSpirits FROM Ingredient
WHERE Name IN ('White Wine', 'Red Wine', 'Whisky', 'Rum', 'Vodka', 'Beer', 'Orange Liqueur', 'Cider', 'Tequila', 'Sherry', 'Gin', 'Brandy', 'Bitters', 'Mirin', 'White Rum', 'Coffee Liqueur', 'Champagne', 'Vermouth', 'Irish Cream', 'Amaretto', 'Marsala Wine', 'Cognac', 'Sparkling Wine', 'Sake', 'Shaoxing Wine', 'Rice Wine', 'Dry Vermouth', 'Coconut Rum', 'Liqueur', 'Curacao', 'Dessert Wine', 'Port Wine', 'Kirsch', 'Peach Schnapps', 'White Cooking Wine', 'Apple Brandy', 'Rosé Wine', 'Anise Liqueur', 'Herbal Liqueur', 'Limoncello', 'Elderflower Liqueur', 'Hazelnut Liqueur', 'Raspberry Liqueur', 'Melon Liqueur', 'Peach Liqueur', 'Banana Liqueur', 'Creme de Cacao', 'Schnapps', 'Absinthe', 'Madeira Wine', 'Aperol', 'Vanilla Vodka', 'Cinnamon Alcohol', 'Creme de Menthe', 'Apricot Brandy', 'Cachaça', 'Chocolate Liqueur', 'Elderflower Cordial', 'Bénédictine', 'Ginger Liqueur', 'Creme de Cassis', 'Sloe Gin', 'Maraschino', 'Red Cooking Wine', 'Cream Sherry', 'Bloody Mary Mix', 'Gold Rum', 'Sparkling Rosé', 'Lime Cordial', 'Drambuie', 'Grappa', 'Strawberry Liqueur', 'Galliano', 'Mezcal', 'Ginger Wine', 'Peppermint Liqueur', 'White Port', 'Advocaat', 'Piña Colada Mix', 'Pumpkin Ale', 'Daiquiri Mix', 'Blackberry Schnapps', 'Coconut Liqueur', 'RumChata Liqueur', 'Blackberry Brandy', 'Gentian Liqueur', 'Chocolate Bitters', 'Vanilla Liqueur', 'Moonshine', 'Pisco', 'Plum Wine', 'Grapefruit Bitters', 'Peach Brandy', 'Sangria', 'White Chocolate Liqueur', 'Apple Liqueur', 'Pear Brandy', 'Sauternes', 'Amarula Cream', 'Rhum Agricole');

-- Insert Beverages
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @Beverages FROM Ingredient
WHERE Name IN ('Orange Juice', 'Coffee', 'Club Soda', 'Espresso', 'Pineapple Juice', 'Apple Juice', 'Tea', 'Cranberry Juice', 'Tomato Juice', 'Coconut Water', 'Pomegranate Juice', 'Matcha Powder', 'Grapefruit Juice', 'Coke', 'Lemonade', 'Ginger Ale', 'Eggnog', 'Ginger Beer', 'Orange Juice Concentrate', 'Lemon Lime Soda', 'Sprite', 'Cream of Coconut', 'Green Tea', 'Lemonade Concentrate', 'Root Beer', 'Chai Tea', 'Drinking Chocolate', 'Tonic Water', 'Malted Milk Powder', 'Cherry Juice', 'Sour Mix', 'Mango Juice', 'Hibiscus', 'Tea Leaves', 'Grape Juice', 'Limeade Concentrate', 'Carrot Juice', 'Dr Pepper', 'Iced Tea', 'Fruit Juice', 'White Grape Juice', 'Watermelon Juice', 'Tangerine Juice', 'Kombucha', 'Passion-Fruit Juice', 'Apricot Juice', 'Orange Soda', 'Beet Juice', 'Peach Juice', 'Margarita Mix', 'Energy Drink', 'Kool Aid', 'Chamomile Tea', 'Pear Juice', 'Rooibos Tea', 'Cream Soda', 'Mountain Dew', 'Tamarind Water', 'Tamarind Juice', 'Grapefruit Soda', 'Lime Soda', 'Raspberry Juice', 'Clamato', 'Guava Juice', 'Jasmine Tea', 'Iced Coffee Concentrate', 'Strawberry Juice', 'Green Tea Leaves', 'Rose Syrup', 'V8 Juice', 'Blueberry Juice', 'Sweetened Lime Juice', 'Beetroot Juice', 'Lemonade Mix', 'Thai Tea', 'Pineapple Juice Concentrate', 'Aloe Vera Juice', 'Juice Blend', 'Prune Juice', 'Butterfly Pea Flower', 'Lapsang Souchong', 'Sparkling Cider', 'Berry Juice', 'Passion Tea', 'White Tea', 'Strawberry Soda', 'Blackcurrant Juice', 'Peppermint Tea', 'Lychee Juice', 'Herbal Tea', 'Banana Juice', 'Chicory Coffee', 'Cranberry-Raspberry Juice', 'Raspberry Lemonade', 'Decaf Coffee', 'Pumpkin Spice Coffee', 'Cherry Soda', 'Lemon Water', 'Bitter Lemon Soda', 'Pepsi');

-- Insert Supplements and Extracts
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, @SupplementsAndExtracts FROM Ingredient
WHERE Name IN ('Almond Extract', 'Food Coloring', 'Nutritional Yeast', 'Peppermint Extract', 'Protein Powder', 'Lemon Extract', 'Coconut Extract', 'Rose Water', 'Orange Extract', 'Rum Extract', 'Rock Salt', 'Maple Extract', 'Chocolate Protein Powder', 'Collagen', 'Orange Blossom Water', 'Liquid Egg White', 'Peanut Butter Powder', 'Vegan Protein Powder', 'Citric Acid', 'Maca Powder', 'Essence', 'Strawberry Extract', 'Spirulina', 'Brewers Yeast', 'Coffee Extract', 'Butter Extract', 'Anise Extract', 'Chocolate Extract', 'Raspberry Extract', 'Lavender Oil', 'Cannabis', 'Banana Extract', 'Bee Pollen', 'Essential Oil', 'Peanut Powder', 'Caramel Extract', 'Root Beer Extract', 'Vitamin C', 'Cannabutter', 'Acai Powder', 'Egg White Powder', 'Hemp Protein', 'Ube Flavoring', 'Hazelnut Extract', 'Glucomannan', 'Tamarind Extract', 'Butterscotch Flavor', 'Cherry Extract', 'Freeze-Dried Strawberry Powder', 'Kewra Water', 'Pineapple Extract', 'Cinnamon Extract', 'Lemon Juice Concentrate', 'Cannabis Milk', 'Carnation Breakfast Essentials', 'Lime Essential Oil', 'Malt Extract', 'Kombucha Starter', 'Casein', 'Chocolate Collagen', 'Soy Lecithin', 'Lime Juice Concentrate', 'Camu Powder', 'Pandan Extract', 'Wheatgrass Powder', 'Ashwagandha', 'CBD Oil', 'Chlorella', 'Rice Protein Powder', 'Rosemary Essential Oil', 'Tea-Tree Oil', 'Mango Extract', 'Probiotics', 'Maltodextrin', 'Fish Oil', 'Vitamin E', 'Egg Powder', 'Vitamin D', 'Wine Yeast', 'Activated Charcoal', 'Clove Oil', 'Corn Extract', 'Grapefruit Essential Oil', 'Greens Powder', 'Barley Grass', 'Reishi Mushroom', 'Blueberry Extract', 'Calcium Lactate', 'Daily Vitamins', 'Champagne Yeast', 'Moringa Powder', 'Raspberry Powder', 'Sunflower Lecithin', 'THC', 'Banana Powder', 'Berry Powder', 'Creatine', 'Goji Berry Powder', 'Magnesium', 'Maqui');

-- Insert the rest of the ingredients into 'Miscellaneous' category
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT IngredientID, 33 AS CategoryID
FROM Ingredient
WHERE IngredientID NOT IN (
    SELECT IngredientID FROM IngredientCategory
);