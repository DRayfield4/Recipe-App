namespace RecipeRedux.Models
{
    public class Ingredient
    {
        public int IngredientId { get; set; }
        public string Name { get; set; } = string.Empty;
        public ICollection<IngredientCategory> IngredientCategories { get; set; }
    }
}
