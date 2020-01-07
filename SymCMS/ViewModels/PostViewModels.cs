using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class PostViewModel
    {
        public PostViewModel() { }

        public PostViewModel(PostModel postModel)
        {
            this.Id = postModel.Id;
            this.Title = postModel.Title;
            this.Content = postModel.Content;
            this.Visible = postModel.Visible;
            this.CategoryId = postModel.CategoryId;
            this.Category = postModel.Category;
          //  this.ExCategories = postModel.ExCategories;
        }

        public int Id { get; set; }
        public string Title { get; set; }

        [DataType(DataType.MultilineText)]
        public string Content { get; set; }
        public bool Visible { get; set; }
        public int CategoryId { get; set; }
        public PostCategory Category { get; set; }

        public string HeadImageBase64 { get;  set; }
        public string Author { get;  set; }
        public DateTime CreationDate { get;  set; }
        public DateTime Livetime { get;  set; }

        // public List<PostCategory> ExCategories { get; set; }

    }
}