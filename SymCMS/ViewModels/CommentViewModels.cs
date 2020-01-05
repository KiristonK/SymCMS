using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class CommentViewModel
    {
        public CommentViewModel() { }

        public CommentViewModel(CommentModel comment)
        {
            this.CommentId = comment.CommentId;
            this.CommentText = comment.CommentText;
            this.AuthorName = comment.AuthorName;
        }
        public int CommentId { get; set; }
        public string CommentText { get; set; }
        public string AuthorName { get; set; }
    }

}