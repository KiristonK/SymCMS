namespace SymCMS.Services.Interfaces
{
    public interface ICommentService
    {
        bool CreateComment();
        bool DeleteComment(int? id);
        bool EditComment(int? id);
    }
}