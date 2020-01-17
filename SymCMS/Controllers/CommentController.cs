using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    public class CommentController : Controller
    {
        private readonly CommentService _cs = new CommentService();
        private readonly PageService _paS = new PageService();

        private readonly PostService _ps = new PostService();

        // GET: Comment
        public ActionResult Index()
        {
            //ViewBag.ExComments = _cs.GetAllComments();
            //IEnumerable<CommentViewModel> model;
            if (ViewData.ContainsKey("postId"))
            {
                int.TryParse(ViewData["postId"].ToString(), out var id);
                ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PostId == id);
                return RedirectToAction("Details", "Admin", new { id });
            }
            else
            {
                int.TryParse(ViewData["pageId"].ToString(), out var id);
                ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PageId == id);
                return RedirectToAction("Details", "Pages", new { id });
            }
        }


        // GET: Comment/Create
        public ActionResult Create()
        {
            if (ViewData.ContainsKey("postId"))
            {
                int.TryParse(ViewData["postId"].ToString(), out var id);
                ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PostId == id);
                return RedirectToAction("Details", "Admin", new {id});
            }
            else
            {
                int.TryParse(ViewData["pageId"].ToString(), out var id);
                ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PageId == id);
                return RedirectToAction("Details", "Pages", new {id});
            }
        }

        // POST: Comment/Create
        [HttpPost]
        public ActionResult Create([Bind(Include = "AuthorName, CommentText, PostId, PageId")]
            CommentViewModel comment)
        {
            if (!_cs.CreateComment(comment)) return RedirectToAction("Index");
            ViewBag.ExComments = comment.PostId != null
                ? _cs.GetAllComments().Where(m => m.PostId == comment.PostId)
                : _cs.GetAllComments().Where(m => m.PageId == comment.PageId);

            return comment.PostId != null
                ? RedirectToAction("Details", "Admin", new {id = comment.PostId.Value})
                : RedirectToAction("Details", "Pages", new {id = comment.PageId.Value});
        }

        // GET: Comment/Edit/5
        [Authorize]
        public ActionResult Edit(int id)
        {
            var comment = _cs.GetComment(id);
            ViewBag.ExComments = comment.PostId != null
                ? _cs.GetAllComments().Where(m => m.PostId == comment.PostId)
                : _cs.GetAllComments().Where(m => m.PageId == comment.PageId);
            ;
            return comment.PostId != null
                ? RedirectToAction("Details", "Admin", new { id = comment.PostId.Value })
                : RedirectToAction("Details", "Pages", new { id = comment.PageId.Value });
        }

        // POST: Comment/Edit/5
        [HttpPost]
        [Authorize]
        public ActionResult Edit([Bind(Include = "CommentId, AuthorName, CommentText, PostId, PageId")]
            CommentViewModel comment)
        {
            if (ModelState.IsValid) _cs.EditComment(comment);
            ViewBag.ExComments = comment.PostId != null
                ? _cs.GetAllComments().Where(m => m.PostId == comment.PostId)
                : _cs.GetAllComments().Where(m => m.PageId == comment.PageId);

            return comment.PostId != null
                ? RedirectToAction("Details", "Admin", new { id = comment.PostId.Value })
                : RedirectToAction("Details", "Pages", new { id = comment.PageId.Value });
        }

        // GET: Comment/Delete/5
        [Authorize]
        public ActionResult Delete(int id)
        {
            var comment = _cs.GetComment(id);
            ViewBag.ExComments = comment.PostId != null
                ? _cs.GetAllComments().Where(m => m.PostId == comment.PostId)
                : _cs.GetAllComments().Where(m => m.PageId == comment.PageId);
            ;
            return comment.PostId != null
                ? RedirectToAction("Details", "Admin", new { id = comment.PostId.Value })
                : RedirectToAction("Details", "Pages", new { id = comment.PageId.Value });
        }

        // POST: Comment/Delete/5
        [HttpPost]
        [Authorize]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var comment = _cs.GetComment(id);
            if (comment.PostId != null)
            {
                _cs.DeleteComment(id);
                ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PostId == comment.PostId);
                return RedirectToAction("Details", "Admin", new { id = comment.PostId.Value });
            }

            _cs.DeleteComment(id);
            ViewBag.ExComments = _cs.GetAllComments().Where(m => m.PageId == comment.PageId);
            return RedirectToAction("Details", "Pages", new { id = comment.PageId.Value });
        }
    }
}