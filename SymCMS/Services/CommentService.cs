using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using Antlr.Runtime.Misc;
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
            throw new System.NotImplementedException();
        }

        public bool EditComment(int? id)
        {
            throw new System.NotImplementedException();
        }

        public IEnumerable<CommentViewModel> GetAllComments()
        {
            var result = new List<CommentViewModel>();
            foreach (var comment in _db.CommentModels.ToList())
            {
                result.Add(new CommentViewModel(comment));
            }

            return result;
        }
    }
}