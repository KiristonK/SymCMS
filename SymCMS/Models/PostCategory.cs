using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public class PostCategory
    {
        public PostCategory() { }

        public PostCategory(CategoriesViewModel pageViewModel)
        {
            CatrgoryId = pageViewModel.Id;
            Name = pageViewModel.Name;
            foreach (var postView in pageViewModel.Posts)
            {
                Posts.Add(new PostModel(postView));
            }
        }

        [Key]
        public int CatrgoryId { get; set; }
        public string Name { get; set; }

        public virtual List<PostModel> Posts { get; set; }

    }
}