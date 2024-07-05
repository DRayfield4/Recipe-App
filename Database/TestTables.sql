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
SELECT * FROM Recipe ORDER BY Name;
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