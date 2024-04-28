USE RecipeRedux;
GO

-- Creating the Recipe table
CREATE TABLE Recipe (
    RecipeID INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(255) NOT NULL,
    Instructions NVARCHAR(MAX) NOT NULL
);

-- Creating the Ingredient table
CREATE TABLE Ingredient (
    IngredientID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL UNIQUE
);

-- Creating the Category table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL UNIQUE
);

-- Creating the IngredientCategory join table
CREATE TABLE IngredientCategory (
    IngredientID INT,
    CategoryID INT,
    PRIMARY KEY (IngredientID, CategoryID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Creating the RecipeIngredient join table
CREATE TABLE RecipeIngredient (
    RecipeID INT,
    IngredientID INT,
    Quantity DECIMAL(10,2) NOT NULL CHECK (Quantity > 0),
    Unit NVARCHAR(50) NOT NULL,
    PRIMARY KEY (RecipeID, IngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

-- Creating the Users table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    FirstName NVARCHAR(255) NOT NULL,
    LastName NVARCHAR(255) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    IsAdmin BIT NOT NULL DEFAULT 0
);

-- Creating the Pantry table
CREATE TABLE Pantry (
    PantryID INT PRIMARY KEY IDENTITY,
    UserID INT,
    IngredientID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

-- Creating the FavoriteRecipes join table
CREATE TABLE FavoriteRecipes (
    UserID INT,
    RecipeID INT,
    PRIMARY KEY (UserID, RecipeID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);