using System.ComponentModel.DataAnnotations;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public sealed class PostCategory
    {
        public PostCategory()
        {
        }

        public PostCategory(CategoriesViewModel categoriesViewModel)
        {
            CategoryId = categoriesViewModel.Id;
            Name = categoriesViewModel.Name;
        }

        [Key] public int CategoryId { get; set; }

        public string Name { get; set; }
    }
}