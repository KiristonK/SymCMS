using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class PageViewModels
    {
        public PageViewModels()
        {
        }

        public PageViewModels(PageModels pageModel)
        {
            PageId = pageModel.Id;
            Author = pageModel.Author;
            Title = pageModel.Title;
            Content = pageModel.Content;
            AdditionalContent = pageModel.AdditionalContent;
            CommentsEnabled = pageModel.CommentsEnabled;
            CreationDate = pageModel.CreationDate;
        }

        public string Title { get; set; }

        [DataType(DataType.MultilineText)] public string Content { get; set; }

        public int PageId { get; set; }

        [Required] public string Author { get; set; }

        [Column(TypeName = "datetime2")] public DateTime CreationDate { get; set; }

        public string AdditionalContent { get; set; }
        public bool CommentsEnabled { get; set; }
    }
}