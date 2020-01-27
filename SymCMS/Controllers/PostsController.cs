using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
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
            var posts = _postService.GetPosts();
            foreach (var post in posts.Where(post => !string.IsNullOrEmpty(post.Content)))
            {
                post.Content = Regex.Replace(post.Content, "<.*?>", string.Empty);
                if (post.Content.Length >= 1000)
                {
                    post.Content = post.Content.Substring(0, 1000) + "...";
                }
            }
            return View(posts);
        }

        // GET: PostModels/Details/5
        public ActionResult Details(int? id)
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            if (id == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            var postViewModel = _postService.GetPost(id.Value);
            if (postViewModel == null) return HttpNotFound();

            if (!ViewData.ContainsKey("postId"))
                ViewData.Add("postId", postViewModel.Id);
            else
                ViewData["postId"] = postViewModel.Id;

            if (!ViewData.ContainsKey("PostComments"))
                ViewData.Add("PostComments", postViewModel.CommentsEnabled);
            else
                ViewData["PostComments"] = postViewModel.CommentsEnabled;
            return View(postViewModel);
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing) _postService.Dispose();
            base.Dispose(disposing);
        }
    }
}