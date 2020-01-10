using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class PostViewModel
    {
        public PostViewModel() {}

        public PostViewModel(PostModel postModel)
        {
            this.Id = postModel.Id;
            this.Title = postModel.Title;
            this.Content = postModel.Content;
            this.Visible = postModel.Visible;
            this.CategoryId = postModel.CategoryId;
            this.Category = postModel.Category;

            this.HeadImageBase64 = postModel.HeadImageBase64;
            this.Author = postModel.Author;
            this.CreationDate = postModel.CreationDate;
            this.Livetime = postModel.Livetime;
            this.CommentsEnabled = postModel.CommentsEnabled;
            this.ContentPreview = postModel.ContentPreview;
        }

        public int Id { get; set; }
        [Required]
        public string Title { get; set; }

        [DataType(DataType.MultilineText)]
        public string Content { get; set; }

        [DataType(DataType.MultilineText)]
        public string ContentPreview { get; set; }


        public bool Visible { get; set; }

        public bool CommentsEnabled { get; set; }

        public int CategoryId { get; set; }
        public PostCategory Category { get; set; }
        [Required]
        public string HeadImageBase64 { get;  set; }
        [Required]
        public string Author { get;  set; }

        [Column(TypeName = "datetime2")]
        public DateTime CreationDate { get;  set; }

        [Column(TypeName = "datetime2")]
        public DateTime Livetime { get;  set; }

    }
}