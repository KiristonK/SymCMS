using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web.Mvc;
using SymCMS.Models;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {
        private readonly CommentService _commentService = new CommentService();
        private readonly PageService _pageService = new PageService();
        private readonly PostService _postService = new PostService();

        public ActionResult Index()
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            return Redirect("~/Views/Home/Index");
        }

        public ActionResult PostsView()
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            var posts = _postService.GetPosts();
            foreach (var post in posts.Where(post => string.IsNullOrEmpty(post.ContentPreview)))
            {
                post.ContentPreview = Regex.Replace(post.Content, "<.*?>", string.Empty);
                if (post.ContentPreview.Length >= 1000)
                {
                    post.ContentPreview = post.ContentPreview.Substring(0, 1000) + "...";
                }
            }
            return View(posts);
        }

        public ActionResult Details(int? id)
        {
            if (id == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            ViewBag.ExComments = _commentService.GetAllComments().Where(m => m.PostId == id);
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

        public ActionResult Edit(int id)
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            return View(_postService.GetPost(id));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include =
                "Id,Title,Content,Visible,CategoryId,HeadImageBase64,Author,LiveTime,CommentsEnabled,ContentPreview")]
            PostViewModel postViewModel)
        {
            if (!ModelState.IsValid) return View(postViewModel);
            _postService.EditPost(postViewModel);
            return RedirectToAction("PostsView");

        }

        public ActionResult CreatePost()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult CreatePost([Bind(Include =
                "Id,Title,Content,Visible,CategoryId,HeadImageBase64,Author,LiveTime,CommentsEnabled,ContentPreview")]
            PostViewModel postViewModel)
        {
            if (!ModelState.IsValid || postViewModel.CategoryId == 0) return View(postViewModel);
            _postService.AddPost(postViewModel);
            if (User.IsInRole("Administrator") || User.IsInRole("Editor"))
                return RedirectToAction("PostsView");
            return View("~/Views/Posts/Index.cshtml", _postService.GetPosts());

        }

        [HttpPost]
        public ActionResult Update(PostViewModel postViewModel)
        {
            _postService.UpdateVisibility(postViewModel);
            return RedirectToAction("PostsView");
        }

        [HttpPost]
        public ActionResult UpdateCommentingPost(PostViewModel postViewModel)
        {
            _postService.UpdateCommenting(postViewModel);
            return RedirectToAction("Details", _postService.GetPost(postViewModel.Id));
        }

        [HttpPost]
        public ActionResult UpdateCommentingPage(PageViewModels pageViewModel)
        {
            _pageService.UpdateCommenting(pageViewModel);
            return View("~/Views/Pages/Details.cshtml", _pageService.GetPage(pageViewModel.PageId));
        }

        public ActionResult Delete(int? id)
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            if (id == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            var postViewModel = _postService.GetPosts().Find(p => p.Id == id);
            if (postViewModel == null) return HttpNotFound();

            ViewData.Add("partial", 1);
            return View(postViewModel);
        }

        [HttpPost]
        [ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _postService.RemovePost(id);
            return RedirectToAction("PostsView");
        }


        [HttpPost]
        public ActionResult CreateCategory(PostCategory category)
        {
            return View(_postService.CreateCategory(category.Name)
                ? "~/Views/Admin/CreatePost.cshtml"
                : "~/Views/Admin/PostsView.cshtml");
        }


        public PartialViewResult CategorySelectModal()
        {
            var exCategories = _postService.GetCategories();
            ViewBag.ExCategories = exCategories;
            return PartialView("~/Views/Shared/_CategorySelectModal.cshtml");
        }
    }
}