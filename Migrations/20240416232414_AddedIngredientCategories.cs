using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecipeRedux.Migrations
{
    public partial class AddedIngredientCategories : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Category",
                table: "Ingredients");

            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    CategoryId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.CategoryId);
                });

            migrationBuilder.CreateTable(
                name: "IngredientCategories",
                columns: table => new
                {
                    IngredientId = table.Column<int>(type: "int", nullable: false),
                    CategoryId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_IngredientCategories", x => new { x.IngredientId, x.CategoryId });
                    table.ForeignKey(
                        name: "FK_IngredientCategories_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "CategoryId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_IngredientCategories_Ingredients_IngredientId",
                        column: x => x.IngredientId,
                        principalTable: "Ingredients",
                        principalColumn: "IngredientId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Categories",
                columns: new[] { "CategoryId", "Name" },
                values: new object[,]
                {
                    { 1, "Essential Ingredients" },
                    { 2, "Vegetables & Greens" },
                    { 3, "Dairy & Eggs" },
                    { 4, "Fruits" },
                    { 5, "Mushrooms" },
                    { 6, "Berries" },
                    { 7, "Nuts & Seeds" },
                    { 8, "Cheeses" },
                    { 9, "Dairy-Free & Meat Substitutes" },
                    { 10, "Meats" },
                    { 11, "Poultry" },
                    { 12, "Fish" },
                    { 13, "Seafood & Seaweed" },
                    { 14, "Herbs & Spices" },
                    { 15, "Sugar & Sweeteners" },
                    { 16, "Seasonings & Spice Blends" },
                    { 17, "Baking" },
                    { 18, "Pre-Made Doughs & Wrappers" },
                    { 19, "Grains & Cereals" },
                    { 20, "Legumes" },
                    { 21, "Pasta" },
                    { 22, "Bread & Salty Snacks" },
                    { 23, "Oils & Fats" },
                    { 24, "Dressings & Vinegars" },
                    { 25, "Condiments" },
                    { 26, "Canned Food" },
                    { 27, "Sauces, Spreads & Dips" },
                    { 28, "Soups, Stews & Stocks" },
                    { 29, "Desserts & Sweet Snacks" },
                    { 30, "Wine, Beer & Spirits" },
                    { 31, "Beverages" },
                    { 32, "Supplements & Extracts" }
                });

            migrationBuilder.InsertData(
                table: "IngredientCategories",
                columns: new[] { "CategoryId", "IngredientId" },
                values: new object[,]
                {
                    { 1, 1 },
                    { 1, 2 },
                    { 1, 3 },
                    { 3, 3 },
                    { 1, 4 },
                    { 3, 4 },
                    { 1, 5 },
                    { 3, 5 },
                    { 1, 6 },
                    { 14, 6 },
                    { 1, 7 },
                    { 14, 7 },
                    { 1, 8 },
                    { 15, 8 },
                    { 17, 8 },
                    { 1, 9 },
                    { 17, 9 },
                    { 19, 9 },
                    { 1, 10 },
                    { 23, 10 },
                    { 1, 11 },
                    { 16, 11 },
                    { 1, 12 },
                    { 19, 12 },
                    { 1, 13 },
                    { 16, 13 },
                    { 1, 14 },
                    { 25, 14 },
                    { 1, 15 },
                    { 25, 15 },
                    { 1, 16 },
                    { 25, 16 },
                    { 1, 17 },
                    { 23, 17 },
                    { 1, 18 },
                    { 22, 18 },
                    { 1, 19 },
                    { 17, 19 },
                    { 1, 20 },
                    { 17, 20 },
                    { 1, 21 },
                    { 14, 21 }
                });

            migrationBuilder.InsertData(
                table: "IngredientCategories",
                columns: new[] { "CategoryId", "IngredientId" },
                values: new object[,]
                {
                    { 1, 22 },
                    { 2, 22 },
                    { 1, 23 },
                    { 15, 23 },
                    { 17, 23 },
                    { 1, 24 },
                    { 16, 24 },
                    { 1, 25 },
                    { 17, 25 },
                    { 29, 25 },
                    { 1, 26 },
                    { 21, 26 },
                    { 1, 27 },
                    { 7, 27 },
                    { 1, 28 },
                    { 16, 28 },
                    { 1, 29 },
                    { 16, 29 },
                    { 1, 30 },
                    { 25, 30 },
                    { 1, 31 },
                    { 10, 31 },
                    { 1, 32 },
                    { 8, 32 },
                    { 1, 33 },
                    { 16, 33 },
                    { 1, 34 },
                    { 2, 34 },
                    { 1, 35 },
                    { 4, 35 },
                    { 1, 36 },
                    { 14, 36 },
                    { 1, 37 },
                    { 14, 37 },
                    { 1, 38 },
                    { 8, 38 },
                    { 1, 39 },
                    { 16, 39 },
                    { 1, 40 },
                    { 14, 40 },
                    { 1, 41 },
                    { 2, 41 }
                });

            migrationBuilder.InsertData(
                table: "IngredientCategories",
                columns: new[] { "CategoryId", "IngredientId" },
                values: new object[] { 14, 41 });

            migrationBuilder.InsertData(
                table: "IngredientCategories",
                columns: new[] { "CategoryId", "IngredientId" },
                values: new object[] { 17, 41 });

            migrationBuilder.CreateIndex(
                name: "IX_IngredientCategories_CategoryId",
                table: "IngredientCategories",
                column: "CategoryId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "IngredientCategories");

            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.AddColumn<string>(
                name: "Category",
                table: "Ingredients",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 1,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 2,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 3,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 4,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 5,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 6,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 7,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 8,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 9,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 10,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 11,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 12,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 13,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 14,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 15,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 16,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 17,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 18,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 19,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 20,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 21,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 22,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 23,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 24,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 25,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 26,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 27,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 28,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 29,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 30,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 31,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 32,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 33,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 34,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 35,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 36,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 37,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 38,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 39,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 40,
                column: "Category",
                value: "Essential Ingredients");

            migrationBuilder.UpdateData(
                table: "Ingredients",
                keyColumn: "IngredientId",
                keyValue: 41,
                column: "Category",
                value: "Essential Ingredients");
        }
    }
}
