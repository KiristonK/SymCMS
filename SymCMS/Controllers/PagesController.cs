using System.Linq;
using System.Net;
using System.Web.Mvc;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    // [System.Web.Mvc.Authorize]
    public class PagesController : Controller
    {
        private readonly CommentService _commentService = new CommentService();
        private readonly PageService _pS = new PageService();

        public ActionResult Index()
        {
            return RedirectToAction("PagesView", _pS.GetAllPages());
        }


        // GET: PageModels
        [Authorize]
        public ActionResult PagesView()
        {
            return View(_pS.GetAllPages());
        }

        // GET: PageModels/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            ViewBag.ExComments = _commentService.GetAllComments().Where(m => m.PageId == id);
            var pageViewModels = _pS.GetPage(id);
            if (pageViewModels == null) return HttpNotFound();
            if (!ViewData.ContainsKey("pageId"))
                ViewData.Add("pageId", pageViewModels.PageId);
            else
                ViewData["pageId"] = pageViewModels.PageId;

            if (!ViewData.ContainsKey("PageComments"))
                ViewData.Add("PageComments", pageViewModels.CommentsEnabled);
            else
                ViewData["PageComments"] = pageViewModels.CommentsEnabled;
            return View(pageViewModels);
        }

        // GET: PageModels/Create
        [Authorize]
        public ActionResult Create()
        {
            return View();
        }

        // POST: PageModels/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "Id,Title,Author,Content,AdditionalContent,CommentsEnabled")]
            PageViewModels pageViewModels)
        {
            if (!ModelState.IsValid) return View(pageViewModels);
            _pS.AddPage(pageViewModels);
            return RedirectToAction("Index");

        }

        // GET: PageModels/Edit/5
        [Authorize]
        public ActionResult Edit(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            ViewBag.ExComments = _commentService.GetAllComments().Where(m => m.PageId == id);
            var pageViewModels = _pS.GetPage(id);
            if (pageViewModels == null) return HttpNotFound();
            return View(pageViewModels);
        }

        // POST: PageModels/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "PageId,Title,Author,Content,AdditionalContent,CommentsEnabled")]
            PageViewModels pageViewModels)
        {
            if (!ModelState.IsValid) return View(pageViewModels);
            _pS.EditPage(pageViewModels);
            return RedirectToAction("Index");

        }

        // GET: PageModels/Delete/5
        [Authorize]
        public ActionResult Delete(int? id)
        {
            if (id == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            ViewBag.ExComments = _commentService.GetAllComments().Where(m => m.PageId == id);
            var pageViewModels = _pS.GetPage(id);
            if (pageViewModels == null) return HttpNotFound();

            ViewData.Add("partial", 1);
            ViewData.Add("PageComments", pageViewModels.CommentsEnabled);
            return View(pageViewModels);
        }

        // POST: PageModels/Delete/5
        [Authorize]
        [HttpPost]
        [ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _pS.DeletePage(id);
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing) _pS.Dispose();
            base.Dispose(disposing);
        }
    }
}