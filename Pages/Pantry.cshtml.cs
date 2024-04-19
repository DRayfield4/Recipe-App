using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RecipeRedux.Models;

namespace RecipeRedux.Pages
{
    public class PantryModel : PageModel
    {
        public List<Ingredient> PantryIngredients { get; set; }

        public PantryModel()
        {
            PantryIngredients = new List<Ingredient>();
        }

        public void OnGet()
        {

        }
    }
}
