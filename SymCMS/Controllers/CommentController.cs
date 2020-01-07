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
        private readonly PageService _paS = new PageService();
        private readonly PostService _ps = new PostService();
        private readonly CommentService _cs = new CommentService();
        // GET: Comment
        public ActionResult Index()
        {
            ViewBag.ExComments = _cs.GetAllComments();
            IEnumerable<CommentViewModel> model;
            if (ViewData.ContainsKey("postId"))
            {
                int.TryParse(ViewData["postId"].ToString(), out var id);
                model = _cs.GetAllComments().Where(m => m.PostId == id);
            }
            else
            {
                int.TryParse(ViewData["pageId"].ToString(), out var id);
                model = _cs.GetAllComments().Where(m => m.PageId == id);
            }
            return PartialView("~/Views/Shared/_CommentSection.cshtml", model: model);
        }

        // GET: Comment/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Comment/Create
        public ActionResult Create()
        {
            IEnumerable<CommentViewModel> model;
            if (ViewData.ContainsKey("postId"))
            {
                int.TryParse(ViewData["postId"].ToString(), out var id);
                model = _cs.GetAllComments().Where(m => m.PostId == id);
            }
            else
            {
                int.TryParse(ViewData["pageId"].ToString(), out var id);
                model = _cs.GetAllComments().Where(m => m.PageId == id);
            }
            ViewBag.ExComments = model;
            return PartialView("~/Views/Shared/_CommentSection.cshtml");
        }

        // POST: Comment/Create
        [HttpPost]
        public ActionResult Create([Bind(Include = "AuthorName, CommentText, PostId, PageId")] CommentViewModel comment)
        {
            if (!_cs.CreateComment(comment))
            {
                return RedirectToAction("Index");
            }
            IEnumerable<CommentViewModel> model;
            if (comment.PostId != null)
                model = _cs.GetAllComments().Where(m => m.PostId == comment.PostId);
            else
                model = _cs.GetAllComments().Where(m => m.PageId == comment.PageId);

            ViewBag.ExComments = model;
            if (comment.PostId != null)
                return View("~/Views/Admin/Details.cshtml", _ps.GetPost(comment.PostId.Value));
            return View("~/Views/Pages/Details.cshtml", _paS.GetPage(comment.PageId));

        }

        // GET: Comment/Edit/5
        public ActionResult Edit(int id)
        {
            IEnumerable<CommentViewModel> model;
            if (ViewData.ContainsKey("postId"))
            {
                int.TryParse(ViewData["postId"].ToString(), out var iD);
                model = _cs.GetAllComments().Where(m => m.PostId == iD);
            }
            else
            {
                int.TryParse(ViewData["pageId"].ToString(), out var iD);
                model = _cs.GetAllComments().Where(m => m.PageId == iD);
            }
            ViewBag.ExComments = model;
            return PartialView("~/Views/Shared/_CommentSection.cshtml");
        }

        // POST: Comment/Edit/5
        [HttpPost]
        public ActionResult Edit([Bind(Include = "CommentId, AuthorName, CommentText, PostId, PageId")] CommentViewModel comment)
        {
            if (ModelState.IsValid)
            {
                _cs.EditComment(comment);
            }
            IEnumerable<CommentViewModel> model;
            if (comment.PostId != null)
                model = _cs.GetAllComments().Where(m => m.PostId == comment.PostId);
            else
                model = _cs.GetAllComments().Where(m => m.PageId == comment.PageId);

            ViewBag.ExComments = model;
            if (comment.PostId != null)
                return View("~/Views/Admin/Details.cshtml", _ps.GetPost(comment.PostId.Value));
            return View("~/Views/Pages/Details.cshtml", _paS.GetPage(comment.PageId));
        }

        // GET: Comment/Delete/5
        public ActionResult Delete(int id)
        {
            IEnumerable<CommentViewModel> model;
            if (ViewData.ContainsKey("postId"))
            {
                int.TryParse(ViewData["postId"].ToString(), out var iD);
                model = _cs.GetAllComments().Where(m => m.PostId == iD);
            }
            else
            {
                int.TryParse(ViewData["pageId"].ToString(), out var iD);
                model = _cs.GetAllComments().Where(m => m.PageId == iD);
            }
            ViewBag.ExComments = model;
            var comment = _cs.GetComment(id);
            if (comment.PostId == null)
                return View("~/Views/Admin/Details.cshtml", _ps.GetPost(comment.PostId.Value));
            return View("~/Views/Pages/Details.cshtml", _paS.GetPage(comment.PageId));
        }

        // POST: Comment/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {

            _cs.DeleteComment(id);
            if (collection.AllKeys.Contains("idPost"))
            {
                int.TryParse(collection["idPost"].ToString(), out var iD);
                ViewBag.ExComments = _cs.GetAllComments().Where(m=>m.PostId == iD);
                return View("~/Views/Admin/Details.cshtml", _ps.GetPost(iD));
            }
            else
            {
                int.TryParse(collection["idPost"].ToString(), out var iD);
                ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PageId == iD);
                return View("~/Views/Pages/Details.cshtml", _paS.GetPage(iD));
            }
        }

    }
}
