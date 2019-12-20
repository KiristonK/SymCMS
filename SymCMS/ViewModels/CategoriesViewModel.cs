using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class CategoriesViewModel
    {
        public CategoriesViewModel() { }

        public CategoriesViewModel(PostCategory pageModel)
        {
            Id = pageModel.CatrgoryId;
            Name = pageModel.Name;
            foreach (var post in pageModel.Posts)
            {
                Posts.Add(new PostViewModel(post));
            }
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public List<PostViewModel> Posts { get; set; }
    }
}