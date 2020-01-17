using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using SymCMS.DAL;
using SymCMS.Models;
using SymCMS.Services.Interfaces;
using SymCMS.ViewModels;

namespace SymCMS.Services
{
    public class PageService : IPageService
    {
        private readonly SymDbContext _db = new SymDbContext();

        public bool EditPage(PageViewModels pageViewModels)
        {
            var pageModel = _db.PageModels.Find(pageViewModels.PageId);
            if (pageModel == null) return false;
            pageModel.Id = pageViewModels.PageId;
            pageModel.Title = pageViewModels.Title;
            pageModel.Author = pageViewModels.Author;
            pageModel.Content = pageViewModels.Content;
            pageModel.AdditionalContent = pageViewModels.AdditionalContent;
            pageModel.CommentsEnabled = pageViewModels.CommentsEnabled;
            pageModel.CreationDate = pageViewModels.CreationDate;
            _db.Entry(pageModel).State = EntityState.Modified;
            _db.SaveChanges();
            return true;
        }

        public IEnumerable<PageViewModels> GetAllPages()
        {
            var pageViewModels = new List<PageViewModels>();
            foreach (var page in _db.PageModels.ToList()) pageViewModels.Add(new PageViewModels(page));
            return pageViewModels;
        }

        public PageViewModels GetPage(int? id)
        {
            if (id == null) return null;
            var pageModel = _db.PageModels.Find(id);
            return new PageViewModels(pageModel);
        }

        public void AddPage(PageViewModels pageViewModel)
        {
            pageViewModel.CreationDate = DateTime.Now.Date;
            _db.PageModels.Add(new PageModels(pageViewModel));
            _db.SaveChanges();
        }

        public void DeletePage(int id)
        {
            var pageModel = _db.PageModels.Find(id);
            if (pageModel != null)
            {
                _db.PageModels.Remove(pageModel);
                var comments = _db.CommentModels.Where(c => c.PageId == id);
                if (comments.Count() != 0)
                    _db.CommentModels.RemoveRange(comments);
            }

            _db.SaveChanges();
        }

        public void Dispose()
        {
            _db.Dispose();
        }

        public void UpdateCommenting(PageViewModels pageViewModels)
        {
            var page = _db.PageModels.Find(pageViewModels.PageId);
            if (page != null)
                page.CommentsEnabled = pageViewModels.CommentsEnabled;
            _db.SaveChanges();
        }
    }
}