# Recipe Redux

## Description
Recipe Redux is a windows form application designed to allow users to discover and create delicious meals based on the ingredients they have at home. Users save ingredients to their "Pantry" which stores all their ingredients in one convienent place. They are then shown recipes based off the ingredients in their pantry and users can favorite recipes for later use. In later versions, users will be able to share recipes with their friends and family on social media and be able to print/email recipes.

## Installation
1. Download the project as a ZIP file and extract its contents.

2. Open Azure Data Studio, SQL Server Management Studio, or any other SQL database manager.

3. Make a new server connection and set the following information: Server type: Database Engine Server Name: (localdb)\MSSQLLocalDb Authentication: Windows Authentication. Then connect.

4. Once connected, right click on the databases folder and select "Import Data-tier Application..."

5. Select the "RecipeRedux.bacpac" file from the Database folder and follow the prompts.

6. Once added successfully, the database is ready to go.

7. Now click the "RecipeRedux.sln" file to open in Visual Studio or open the "RecipeRedux" folder in your preferred IDE.

8. Once open, confirm that in the "App.config" file, the connection string is as follows: "<"connectionStrings">""<"add name="RecipeReduxDb" connectionString="Server=(localdb)\MSSQLLocalDb; Database=RecipeRedux; Integrated Security=True;" providerName="System.Data.SqlClient"/">"<"/connectionStrings>" (remove the quotes except for those after the "name", "connectionString", and "providerName" tags.

9. You can now run the program and access the database.

### Useage
Once signed in, users can select the ingredient buttons to add them to their pantry. There is also a combo box at the bottom on the left side to add ingredients as well. Ingredients can be removed from the pantry by double clicking them. Recipes will be shown in real time on the right side display. For whatever reason they don't show up, press the "Find recipes!" button. Double click the recipes to open up the recipe that contains the ingredients, steps, and cook time. You can also favorite recipes by pressing the "Favorite" button. Favorited recipes are displayed in the Favorites tab. You can also filter the recipes further by cook time and number of ingredients.
