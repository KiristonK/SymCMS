using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
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
            this.PostId = commentView.PostId;
            this.PageId = commentView.PageId;
        }

        [Key]
        public int CommentId { get; set; }
        [DataType(DataType.MultilineText)]
        public string CommentText { get; set; }
        public string AuthorName { get; set; }
        public string AuthorContact { get; set; }

        [ForeignKey("Post")]
        public int? PostId { get; set; }
        public virtual PostModel Post { get; set; }

        [ForeignKey("Page")]
        public int? PageId { get; set; }
        public virtual PostModel Page { get; set; }
    }
}