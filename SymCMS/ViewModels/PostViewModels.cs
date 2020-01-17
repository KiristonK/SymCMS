using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class PostViewModel
    {
        public PostViewModel()
        {
        }

        public PostViewModel(PostModel postModel)
        {
            Id = postModel.Id;
            Title = postModel.Title;
            Content = postModel.Content;
            Visible = postModel.Visible;
            CategoryId = postModel.CategoryId;
            Category = postModel.Category;

            HeadImageBase64 = postModel.HeadImageBase64;
            Author = postModel.Author;
            CreationDate = postModel.CreationDate;
            Livetime = postModel.Livetime;
            CommentsEnabled = postModel.CommentsEnabled;
            ContentPreview = postModel.ContentPreview;
        }

        public int Id { get; set; }

        [Required] public string Title { get; set; }

        [DataType(DataType.MultilineText)] public string Content { get; set; }

        [DataType(DataType.MultilineText)] public string ContentPreview { get; set; }


        public bool Visible { get; set; }

        public bool CommentsEnabled { get; set; }

        public int CategoryId { get; set; }
        public PostCategory Category { get; set; }

        [Required] public string HeadImageBase64 { get; set; }

        [Required] public string Author { get; set; }

        [Column(TypeName = "datetime2")] public DateTime CreationDate { get; set; }

        [Column(TypeName = "datetime2")] public DateTime Livetime { get; set; }
    }
}