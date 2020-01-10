using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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
            Content = pageViewModels.Content;
        }

        [Key]
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
    }
}