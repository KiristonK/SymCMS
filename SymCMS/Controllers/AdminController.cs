using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Http;
using System.Web.Http.Results;
using System.Web.Mvc;
using SymCMS.Models;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    [System.Web.Mvc.Authorize]
    public class AdminController : Controller
    {
        private readonly PostService _postService = new PostService();
        private readonly CommentService _commentService = new CommentService();

        public ActionResult Index()
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            return Redirect("~/Views/Home/Index");
        }

        public ActionResult PostsView()
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            return View(_postService.GetPosts());
        }

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ViewBag.ExComments = _commentService.GetAllComments().Where(m => m.PostId == id);
            PostViewModel postViewModel = _postService.GetPost(id.Value);
            if (postViewModel == null)
            {
                return HttpNotFound();
            }
            return View(postViewModel);
        }

        public ActionResult Edit(int id)
        {
            ViewBag.ExComments = _commentService.GetAllComments();
            return View(_postService.GetPost(id));
        }

        [System.Web.Mvc.HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "Id,Title,Content,Visible,CategoryId,HeadImageBase64,Author,LiveTime")] PostViewModel postViewModel)
        {
            if (ModelState.IsValid)
            {
                _postService.EditPost(postViewModel);
                return RedirectToAction("PostsView");
            }

            return View(postViewModel);
        }

        public ActionResult CreatePost()
        {
                return View();
        }

        [System.Web.Mvc.HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult CreatePost([Bind(Include = "Id,Title,Content,Visible,CategoryId,HeadImageBase64,Author,LiveTime")] PostViewModel postViewModel)
        {
            if (ModelState.IsValid && postViewModel.CategoryId != 0)
            {
                _postService.AddPost(postViewModel);
                if (User.IsInRole("Administrator") || User.IsInRole("Editor"))
                    return RedirectToAction("PostsView");
                return View("~/Views/Posts/Index.cshtml", _postService.GetPosts());
            }
   
            return View(postViewModel);
        }

        [System.Web.Mvc.HttpPost]
        public ActionResult Update(PostViewModel postViewModel)
        {
            _postService.UpdateVisibility(postViewModel);
            return RedirectToAction("PostsView");
        }

        [System.Web.Mvc.HttpPost]
        public ActionResult UpdateCommenting(PostViewModel postViewModel)
        {
            _postService.UpdateCommenting(postViewModel);
            return RedirectToAction("Details", _postService.GetPost(postViewModel.Id));
        }

        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PostViewModel postViewModel = _postService.GetPosts().Find(p => p.Id == id);
            if (postViewModel == null)
            {
                return HttpNotFound();
            }
            return View(postViewModel);
        }

        [System.Web.Mvc.HttpPost, System.Web.Mvc.ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _postService.RemovePost(id);
            return RedirectToAction("PostsView");
        }


        [System.Web.Mvc.HttpPost]
       // [ValidateAntiForgeryToken]
        public ActionResult CreateCategory(PostCategory category)
        {
            return View(_postService.CreateCategory(category.Name) ? "~/Views/Admin/CreatePost.cshtml" : "~/Views/Admin/PostsView.cshtml");
        }


        public PartialViewResult CategorySelectModal()
        {
            List<PostCategory> exCategories = _postService.GetCategories();
            ViewBag.ExCategories = exCategories;
            return PartialView("~/Views/Shared/_CategorySelectModal.cshtml");
        }

    }
}