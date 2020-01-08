using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public sealed class PostModel
    {
        public PostModel() { }
        public PostModel(PostViewModel postViewModel)
        {
            Id = postViewModel.Id;
            Title = postViewModel.Title;
            Content = postViewModel.Content;
            Visible = postViewModel.Visible;
            Category = postViewModel.Category;
            CategoryId = postViewModel.CategoryId;

            HeadImageBase64 = postViewModel.HeadImageBase64;
            Author = postViewModel.Author;
            CreationDate = postViewModel.CreationDate;
            Livetime = postViewModel.Livetime;
            this.CommentsEnabled = postViewModel.CommentsEnabled;
        }

        [Key]
        public int Id { get; set; }

        [ForeignKey("Category")]
        public int CategoryId { get; set; }
        public PostCategory Category { get; set; }
        
        public string Author { get; set; }
        [Column(TypeName = "datetime2")]
        public DateTime CreationDate { get; set; }
        [Column(TypeName = "datetime2")]
        public DateTime Livetime { get; set; }

        public string HeadImageBase64 { get; set; }

        public string Title { get; set; }
        public string Content { get; set; }
        public bool Visible { get; set; }
        public bool CommentsEnabled { get; set; }
    }
}