using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public sealed class PostCategory
    {
        public PostCategory() { }

        public PostCategory(CategoriesViewModel categoriesViewModel)
        {
            CategoryId = categoriesViewModel.Id;
            Name = categoriesViewModel.Name;
            foreach (var postView in categoriesViewModel.Posts)
            {
                Posts.Add(new PostModel(postView));
            }
        }

        public PostCategory(string name)
        {
            this.Name = name;
        }

        [Key]
        public int CategoryId { get; set; }
        public string Name { get; set; }

        public List<PostModel> Posts { get; set; }

    }
}