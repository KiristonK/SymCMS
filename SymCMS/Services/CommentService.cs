using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using SymCMS.DAL;
using SymCMS.Models;
using SymCMS.Services.Interfaces;
using SymCMS.ViewModels;

namespace SymCMS.Services
{
    public class CommentService : ICommentService
    {
        private readonly SymDbContext _db = new SymDbContext();

        public bool CreateComment(CommentViewModel comment)
        {
            if (comment == null) return false;
            _db.CommentModels.Add(new CommentModel(comment));
            _db.SaveChanges();
            return true;
        }

        public bool DeleteComment(int? id)
        {
            if (id == null) return false;
            var comment = _db.CommentModels.Find(id);
            _db.CommentModels.Remove(comment);
            _db.SaveChanges();
            return true;
        }

        public CommentViewModel EditComment(CommentViewModel comment)
        {
            var commentModel = _db.CommentModels.Find(comment.CommentId);
            if (commentModel == null) return null;
            commentModel.CommentId = comment.CommentId;
            commentModel.CommentText = comment.CommentText;
            commentModel.AuthorName = comment.AuthorName;
            commentModel.PostId = comment.PostId;
            commentModel.PageId = comment.PageId;

            _db.Entry(commentModel).State = EntityState.Modified;
            _db.SaveChanges();
            return new CommentViewModel(commentModel);
        }

        public CommentViewModel GetComment(int? id)
        {
            return new CommentViewModel(_db.CommentModels.Find(id));
        }

        public IEnumerable<CommentViewModel> GetAllComments()
        {
            var result = new List<CommentViewModel>();
            foreach (var comment in _db.CommentModels.ToList()) result.Add(new CommentViewModel(comment));

            return result;
        }
    }
}