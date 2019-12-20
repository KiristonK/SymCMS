using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public class PostModel
    {
        public PostModel() { }
        public PostModel(PostViewModel postViewModel)
        {
            Id = postViewModel.Id;
            Title = postViewModel.Title;
            Content = postViewModel.Content;
            Visible = postViewModel.Visible;
        }

        [Key]
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public bool Visible { get; set; }
    }
}