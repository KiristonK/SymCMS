using System.ComponentModel.DataAnnotations;
using SymCMS.ViewModels;

namespace SymCMS.Models
{
    public class CommentModel
    {
        public CommentModel() { }

        public CommentModel(CommentViewModel commentView)
        {
            this.CommentId = commentView.CommentId;
            this.CommentText = commentView.CommentText;
            this.AuthorName = commentView.AuthorName;
        }

        [Key]
        public int CommentId { get; set; }
        public string CommentText { get; set; }
        public string AuthorName { get; set; }
        public string AuthorContact { get; set; }
    }
}