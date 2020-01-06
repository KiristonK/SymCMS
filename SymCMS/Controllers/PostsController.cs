﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SymCMS.DAL;
using SymCMS.Models;
using SymCMS.Services;
using SymCMS.ViewModels;

namespace SymCMS.Controllers
{
    public class PostsController : Controller
    {
        private readonly PostService _postService = new PostService();

        // GET: PostModels
        public ActionResult Index()
        {
            return View(_postService.GetPosts());
        }

        // GET: PostModels/Details/5
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

        // GET: PostModels/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PostModels/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Content,Visible,CategoryId")] PostViewModel postViewModel)
        {
            if (ModelState.IsValid)
            { 
                _postService.AddPost(postViewModel);
                return RedirectToAction("Index");
            }

            return View(postViewModel);
        }

        // GET: PostModels/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PostViewModel postModel = _postService.GetPost(id.Value);
            if (postModel == null)
            {
                return HttpNotFound();
            }
            return View(postModel);
        }

        // POST: PostModels/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Content,Visible,CategoryId")] PostViewModel postViewModel)
        {
            if (ModelState.IsValid)
            {
                _postService.EditPost(postViewModel);
                return RedirectToAction("Index");
            }
            return View(postViewModel);
        }

        // GET: PostModels/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PostViewModel postModel = _postService.GetPost(id.Value);
            if (postModel == null)
            {
                return HttpNotFound();
            }
            return View(postModel);
        }

        // POST: PostModels/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _postService.DeletePost(id);
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _postService.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}