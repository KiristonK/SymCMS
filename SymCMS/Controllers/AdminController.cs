using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Http;
using System.Web.Http.Results;
using System.Web.Mvc;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    [System.Web.Mvc.Authorize]
    public class AdminController : Controller
    {
        private PostService _postService = new PostService();

        public ActionResult Index()
        {
            return RedirectToAction("Panel");
        }
        // GET: Panel
        public ActionResult Panel()
        {
            return View();
        }

        public ActionResult PostsView()
        {
            return View(_postService.GetPosts());
        }

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PostViewModel postViewModel = _postService.GetPost(id.Value);
            if (postViewModel == null)
            {
                return HttpNotFound();
            }
            return View(postViewModel);
        }

        public ActionResult Edit(int id)
        {
            return View(_postService.GetPost(id));
        }

        [System.Web.Mvc.HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Content,Visible")] PostViewModel postViewModel)
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
        public ActionResult CreatePost([Bind(Include = "Id,Title,Content,Visible")] PostViewModel postViewModel)
        {
            if (ModelState.IsValid)
            {
                _postService.AddPost(postViewModel);
                return RedirectToAction("PostsView");
            }
   
            return View(postViewModel);
        }

        [System.Web.Mvc.HttpPost]
        public ActionResult Update(PostViewModel postViewModel)
        {
            _postService.UpdateVisibility(postViewModel);
            return RedirectToAction("PostsView");
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

        public ViewResult CreatePostData()
        {
            var categories = _postService.GetCategories();
            ViewData["Categories"] = categories;
            return View("~/Views/Admin/CreatePost.cshtml");
        }

        [System.Web.Mvc.HttpPost]
        public ActionResult CreateCategory(string name)
        {
            _postService.CreateCategory(name);
            return View("~/Views/Admin/CreatePost.cshtml");
        }

        public ActionResult GetCategories()
        {
            ViewBag.ExCategories = new SelectList(_postService.GetCategories());
            return View("~/Views/Admin/CreatePost.cshtml");
        }


        public PartialViewResult CategorySelectModal()
        {
            ViewBag.ExCategories = new SelectList(_postService.GetCategories());
            return PartialView("~/Views/Shared/_CategorySelectModal.cshtml");
        }

    }
}