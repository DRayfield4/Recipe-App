USE RecipeRedux;
GO

SELECT * FROM Ingredient ORDER BY IngredientID ASC;

SELECT * FROM Category ORDER BY CategoryID ASC;

SELECT * FROM IngredientCategory ORDER BY IngredientID ASC;

SELECT * FROM Users;

SELECT * FROM Pantry;

SELECT c.CategoryID, c.Name AS CategoryName, i.IngredientID, i.Name AS IngredientName 
FROM Category c
JOIN IngredientCategory ic ON c.CategoryID = ic.CategoryID
JOIN Ingredient i ON ic.IngredientID = i.IngredientID
ORDER BY c.CategoryID, i.Name

SELECT * FROM Ingredient ORDER BY IngredientID;
SELECT * FROM Recipe ORDER BY RecipeID;
SELECT * FROM RecipeIngredient;
SELECT * FROM FavoriteRecipes;




SELECT R.RecipeID, R.Name, COUNT(*) AS MatchingIngredients
FROM Recipe R
JOIN RecipeIngredient RI ON R.RecipeID = RI.RecipeID
JOIN Pantry P ON RI.IngredientID = P.IngredientID AND P.UserID = 3
GROUP BY R.RecipeID, R.Name
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM RecipeIngredient
    WHERE RecipeID = R.RecipeID
)



































































--Populate RecipeIngredient table by matching Recipe ingedients with ingredients in Ingredient table
DECLARE @RecipeID INT, @IngredientName NVARCHAR(255), @IngredientID INT, @Ingredients NVARCHAR(MAX);

-- Declare a cursor for the recipes
DECLARE Recipe_Cursor CURSOR FOR
SELECT RecipeID, Ingredients FROM Recipe;

-- Open the cursor
OPEN Recipe_Cursor;

-- Fetch the first row
FETCH NEXT FROM Recipe_Cursor INTO @RecipeID, @Ingredients;

-- Loop through the cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Loop through each ingredient in the Ingredients string
    DECLARE Ingredient_Cursor CURSOR FOR
    SELECT value FROM STRING_SPLIT(@Ingredients, ',');

    OPEN Ingredient_Cursor;
    FETCH NEXT FROM Ingredient_Cursor INTO @IngredientName;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Trim and fetch the IngredientID
        SELECT @IngredientID = IngredientID FROM Ingredient
        WHERE Name = LTRIM(RTRIM(@IngredientName));

        -- Check if IngredientID was found and insert
        IF @IngredientID IS NOT NULL
        BEGIN
            INSERT INTO RecipeIngredient (RecipeID, IngredientID)
            VALUES (@RecipeID, @IngredientID);
        END

        FETCH NEXT FROM Ingredient_Cursor INTO @IngredientName;
    END

    CLOSE Ingredient_Cursor;
    DEALLOCATE Ingredient_Cursor;

    -- Get the next recipe
    FETCH NEXT FROM Recipe_Cursor INTO @RecipeID, @Ingredients;
END

-- Cleanup
CLOSE Recipe_Cursor;
DEALLOCATE Recipe_Cursor;

































-- PUT REMAINING INGREDIENTS INTO MISC.
INSERT INTO IngredientCategory (IngredientID, CategoryID)
SELECT i.IngredientID, (SELECT CategoryID FROM Category WHERE Name = 'Miscellaneous')
FROM Ingredient i
WHERE NOT EXISTS (
    SELECT 1 FROM IngredientCategory ic WHERE ic.IngredientID = i.IngredientID
);