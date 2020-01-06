using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.Mvc;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    public class CommentController : Controller
    {
        private readonly PostService _ps = new PostService();
        private readonly CommentService _cs = new CommentService();
        // GET: Comment
        public ActionResult Index()
        {
            ViewBag.ExComments = _cs.GetAllComments();
            return PartialView("~/Views/Shared/_CommentSection.cshtml", model: _cs.GetAllComments());
        }

        // GET: Comment/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Comment/Create
        public ActionResult Create()
        {
            ViewBag.ExComments = _cs.GetAllComments();
            return PartialView("~/Views/Shared/_CommentSection.cshtml");
        }

        // POST: Comment/Create
        [HttpPost]
        public ActionResult Create([Bind(Include = "AuthorName, CommentText, PostId")] CommentViewModel comment)
        {
            if (!_cs.CreateComment(comment))
            {
                return RedirectToAction("Index");
            }

            ViewBag.ExComments = _cs.GetAllComments();
            return View("~/Views/Admin/Details.cshtml", _ps.GetPost(comment.PostId));
            
        }

        // GET: Comment/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Comment/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Comment/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Comment/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //[HttpPost]
        //public ActionResult CreateComment(CommentViewModel comment)
        //{
        //    _cs.CreateComment(comment);
        //    return PartialView("~/Views/Shared/_CommentSection.cshtml");
        //}
    }
}
