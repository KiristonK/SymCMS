using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public class PageModels
    {
        public PageModels() { }

        public PageModels(PageViewModels pageViewModels)
        {
            Id = pageViewModels.PageId;
            Title = pageViewModels.Title;
            Author = pageViewModels.Author;
            Content = pageViewModels.Content;
            AdditionalContent = pageViewModels.AdditionalContent;
            CommentsEnabled = pageViewModels.CommentsEnabled;
            CreationDate = pageViewModels.CreationDate;
        }

        [Key]
        public int Id { get; set; }
        public string Title { get; set; }

        [DataType(DataType.MultilineText)]
        public string Content { get; set; }

        [Required]
        public string Author { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime CreationDate { get; set; }

        public string AdditionalContent { get; set; }
        public bool CommentsEnabled { get; set; }
    }
}