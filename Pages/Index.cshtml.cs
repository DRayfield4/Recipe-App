using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RecipeRedux.Models;
using RecipeRedux.Data;
using Microsoft.EntityFrameworkCore;

namespace RecipeRedux.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly RecipeReduxContext _context;

        public List<Category> Categories { get; set; }

        public IndexModel(ILogger<IndexModel> logger, RecipeReduxContext context)
        {
            _logger = logger;
            _context = context;
        }

        public async Task OnGetAsync()
        {
            // Add Youtube link
            Categories = await _context.Categories
                .Include(c => c.IngredientCategories)
                    .ThenInclude(ic => ic.Ingredient)
                .ToListAsync();
        }
    }
}