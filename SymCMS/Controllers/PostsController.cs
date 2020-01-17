using System.Net;
using System.Web.Mvc;
using SymCMS.Services;

namespace SymCMS.Controllers
{
    public class PostsController : Controller
    {
        private readonly CommentService _commentService = new CommentService();
        private readonly PostService _postService = new PostService();

        // GET: PostModels
        public ActionResult Index()
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            return View(_postService.GetPosts());
        }

        // GET: PostModels/Details/5
        public ActionResult Details(int? id)
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            if (id == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            var postViewModel = _postService.GetPost(id.Value);
            if (postViewModel == null) return HttpNotFound();
            return View(postViewModel);
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing) _postService.Dispose();
            base.Dispose(disposing);
        }
    }
}