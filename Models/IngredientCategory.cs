namespace RecipeRedux.Models
{
    public class IngredientCategory
    {
        public int IngredientId { get; set; }
        public Ingredient Ingredient { get; set; }

        public int CategoryId { get; set; }
        public Category Category { get; set; }
    }
}
