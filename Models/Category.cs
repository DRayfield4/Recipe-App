namespace RecipeRedux.Models
{
    public class Category
    {
        public int CategoryId { get; set; }
        public string Name { get; set; }
        public ICollection<IngredientCategory> IngredientCategories { get; set; }
    }
}
