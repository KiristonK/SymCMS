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
            _db.Entry(pageViewModels).State = EntityState.Modified;
            _db.SaveChanges();
            return true;
        }

        public IEnumerable<PageViewModels> GetAllPages()
        {
            var pageViewModels = new List<PageViewModels>();
            foreach (var page in _db.PageModels.ToList())
            {
                pageViewModels.Add(new PageViewModels(page));
            }
            return pageViewModels;
        }

        public PageViewModels GetPage(int? id)
        {
            var pageModel = _db.PageModels.Find(id);
            return  new PageViewModels(pageModel);

        }

        public void AddPage(PageViewModels pageViewModel)
        {
            _db.PageModels.Add(new PageModels(pageViewModel));
            _db.SaveChanges();
        }

        public void DeletePage(int id)
        {
            PageModels pageModel = _db.PageModels.Find(id);
            if (pageModel != null) _db.PageModels.Remove(pageModel);
            _db.SaveChanges();
        }

        public void Dispose()
        {
            _db.Dispose();
        }
    }
}