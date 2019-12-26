using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SymCMS.DAL;
using SymCMS.Models;

namespace SymCMS.Controllers
{
    public class PageModelsController : Controller
    {
        private SymDbContext db = new SymDbContext();

        // GET: PageModels
        public ActionResult Index()
        {
            return View(db.PageModels.ToList());
        }

        // GET: PageModels/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PageModels pageModels = db.PageModels.Find(id);
            if (pageModels == null)
            {
                return HttpNotFound();
            }
            return View(pageModels);
        }

        // GET: PageModels/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PageModels/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Content")] PageModels pageModels)
        {
            if (ModelState.IsValid)
            {
                db.PageModels.Add(pageModels);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pageModels);
        }

        // GET: PageModels/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PageModels pageModels = db.PageModels.Find(id);
            if (pageModels == null)
            {
                return HttpNotFound();
            }
            return View(pageModels);
        }

        // POST: PageModels/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Content")] PageModels pageModels)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pageModels).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pageModels);
        }

        // GET: PageModels/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PageModels pageModels = db.PageModels.Find(id);
            if (pageModels == null)
            {
                return HttpNotFound();
            }
            return View(pageModels);
        }

        // POST: PageModels/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PageModels pageModels = db.PageModels.Find(id);
            db.PageModels.Remove(pageModels);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
