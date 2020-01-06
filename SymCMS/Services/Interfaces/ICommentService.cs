using SymCMS.ViewModels;

namespace SymCMS.Services.Interfaces
{
    public interface ICommentService
    {
        bool CreateComment(CommentViewModel comment);
        bool DeleteComment(int? id);
        CommentViewModel EditComment(CommentViewModel comment);
    }
}