using System.ComponentModel.DataAnnotations;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class CommentViewModel
    {
        public CommentViewModel()
        {
        }

        public CommentViewModel(CommentModel comment)
        {
            CommentId = comment.CommentId;
            Comment = comment.CommentText;
            Author = comment.AuthorName;
            PostId = comment.PostId;
            PageId = comment.PageId;
        }

        public int CommentId { get; set; }

        [DataType(DataType.MultilineText)] public string Comment { get; set; }

        public string Author { get; set; }
        public int? PostId { get; set; }
        public virtual PostModel Post { get; set; }

        public int? PageId { get; set; }
        public virtual PageModels Page { get; set; }
    }
}