using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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

    }
}