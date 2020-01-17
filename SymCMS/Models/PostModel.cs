using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public sealed class PostModel
    {
        public PostModel()
        {
        }

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
            CommentsEnabled = postViewModel.CommentsEnabled;
            ContentPreview = postViewModel.ContentPreview;
        }

        [Key] public int Id { get; set; }

        [ForeignKey("Category")] public int CategoryId { get; set; }

        public PostCategory Category { get; set; }

        public string Author { get; set; }

        [Column(TypeName = "datetime2")] public DateTime CreationDate { get; set; }

        [Column(TypeName = "datetime2")] public DateTime Livetime { get; set; }

        public string HeadImageBase64 { get; set; }

        public string Title { get; set; }

        [DataType(DataType.MultilineText)] public string Content { get; set; }

        [DataType(DataType.MultilineText)] public string ContentPreview { get; set; }

        public bool Visible { get; set; }
        public bool CommentsEnabled { get; set; }
    }
}