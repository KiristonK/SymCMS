using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI.WebControls;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class PageViewModels
    {
        public PageViewModels() { }

        public PageViewModels(PageModels pageModel)
        {
            this.PageId = pageModel.Id;
            this.Title = pageModel.Title;
            this.Content = pageModel.Content;
        }

        public string Title { get; set; }

        [DataType(DataType.MultilineText)]
        public string Content { get; set; }
        public int PageId { get; set; }

        [Required]
        public string HeadImageBase64 { get; set; }
        [Required]
        public string Author { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime CreationDate { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime Livetime { get; set; }


    }
}