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
            CommentText = comment.CommentText;
            AuthorName = comment.AuthorName;
            PostId = comment.PostId;
            PageId = comment.PageId;
        }

        public int CommentId { get; set; }

        [DataType(DataType.MultilineText)] public string CommentText { get; set; }

        public string AuthorName { get; set; }
        public int? PostId { get; set; }
        public virtual PostModel Post { get; set; }

        public int? PageId { get; set; }
        public virtual PageModels Page { get; set; }
    }
}