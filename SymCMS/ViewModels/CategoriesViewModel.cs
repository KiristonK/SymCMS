using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class CategoriesViewModel
    {
        public CategoriesViewModel() { }

        public CategoriesViewModel(PostCategory categoryModel)
        {
            Id = categoryModel.CategoryId;
            Name = categoryModel.Name;
        }

        public int Id { get; set; }
        public string Name { get; set; }

    }
}