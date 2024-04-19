using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecipeRedux.Migrations
{
    public partial class AddedEssentialIngredients : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Ingredients",
                columns: new[] { "IngredientId", "Category", "Name" },
                values: new object[,]
                {
                    { 1, "Essential Ingredients", "Salt" },
                    { 2, "Essential Ingredients", "Water" },
                    { 3, "Essential Ingredients", "Butter" },
                    { 4, "Essential Ingredients", "Milk" },
                    { 5, "Essential Ingredients", "Egg" },
                    { 6, "Essential Ingredients", "Garlic" },
                    { 7, "Essential Ingredients", "Onion" },
                    { 8, "Essential Ingredients", "Sugar" },
                    { 9, "Essential Ingredients", "Flour" },
                    { 10, "Essential Ingredients", "Olive Oil" },
                    { 11, "Essential Ingredients", "Garlic Powder" },
                    { 12, "Essential Ingredients", "White Rice" },
                    { 13, "Essential Ingredients", "Cinnamon" },
                    { 14, "Essential Ingredients", "Ketchup" },
                    { 15, "Essential Ingredients", "Soy Sauce" },
                    { 16, "Essential Ingredients", "Mayonnaise" },
                    { 17, "Essential Ingredients", "Vegetable Oil" },
                    { 18, "Essential Ingredients", "Bread" },
                    { 19, "Essential Ingredients", "Baking Powder" },
                    { 20, "Essential Ingredients", "Baking Soda" },
                    { 21, "Essential Ingredients", "Oregano" },
                    { 22, "Essential Ingredients", "Potato" },
                    { 23, "Essential Ingredients", "Honey" },
                    { 24, "Essential Ingredients", "Paprika" },
                    { 25, "Essential Ingredients", "Vanilla" },
                    { 26, "Essential Ingredients", "Spaghetti" },
                    { 27, "Essential Ingredients", "Peanut Butter" },
                    { 28, "Essential Ingredients", "Chili Powder" },
                    { 29, "Essential Ingredients", "Cumin" },
                    { 30, "Essential Ingredients", "Mustard" },
                    { 31, "Essential Ingredients", "Chicken Breast" },
                    { 32, "Essential Ingredients", "Cheddar" },
                    { 33, "Essential Ingredients", "Onion Powder" },
                    { 34, "Essential Ingredients", "Carrot" },
                    { 35, "Essential Ingredients", "Tomato" },
                    { 36, "Essential Ingredients", "Basil" },
                    { 37, "Essential Ingredients", "Parsley" },
                    { 38, "Essential Ingredients", "Parmesan" },
                    { 39, "Essential Ingredients", "Italian Seasoning" },
                    { 40, "Essential Ingredients", "Thyme" },
                    { 41, "Essential Ingredients", "Bell Pepper" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 3);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 4);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 5);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 6);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 7);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 8);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 9);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 10);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 11);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 12);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 13);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 14);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 15);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 16);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 17);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 18);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 19);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 20);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 21);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 22);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 23);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 24);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 25);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 26);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 27);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 28);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 29);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 30);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 31);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 32);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 33);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 34);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 35);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 36);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 37);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 38);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 39);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 40);

            migrationBuilder.DeleteData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 41);
        }
    }
}
