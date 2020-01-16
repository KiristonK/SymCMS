using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SymCMS.DAL;
using SymCMS.Models;
using SymCMS.Services.Interfaces;
using SymCMS.ViewModels;

namespace SymCMS.Services
{
    public class PostService : IPostService
    {
        public PostService()
        {
            foreach (var post in GetPosts())
            {
                if (post.Livetime < DateTime.Now)
                {
                    DeletePost(post.Id);
                }
            }
        }
        private readonly SymDbContext _db = new SymDbContext();

        public bool AddPost(PostViewModel postViewModel)
        {
            postViewModel.Category = _db.PostCategories.Find(postViewModel.CategoryId);
            _db.PostModels.Add(new PostModel(postViewModel));
            _db.SaveChanges();
            return true;
        }

        public PostViewModel EditPost(PostViewModel postViewModel)
        {
            var postModel = _db.PostModels.Find(postViewModel.Id);

            postModel.Id = postViewModel.Id;
            postModel.Title = postViewModel.Title;
            postModel.Content = postViewModel.Content;
            postModel.Visible = postViewModel.Visible;
            postModel.Category = _db.PostCategories.Find(postViewModel.CategoryId);
            postModel.CategoryId = postViewModel.CategoryId;

            postModel.HeadImageBase64 = postViewModel.HeadImageBase64;
            postModel.Author = postViewModel.Author;
            postModel.CreationDate = postViewModel.CreationDate;
            postModel.Livetime = postViewModel.Livetime;
            postModel.CommentsEnabled = postViewModel.CommentsEnabled;
            postModel.ContentPreview = postViewModel.ContentPreview;

            _db.Entry(postModel).State = EntityState.Modified;
            _db.SaveChanges();
            return new PostViewModel(postModel);
        }

        public PostViewModel GetPost(int? id)
        {
            var post = _db.PostModels.Find(id);
            if (post != null)
            {
                return new PostViewModel(post);
            }
            return null;
        }

        public void UpdateVisibility(PostViewModel postViewModel)
        {
            var post = _db.PostModels.Find(postViewModel.Id);
            if (post != null)
                post.Visible = postViewModel.Visible;
            _db.SaveChanges();
        }

        public List<PostViewModel> GetPosts()
        {
            List<PostViewModel> posts = new List<PostViewModel>();
            var postList = _db.PostModels.ToList();
            foreach (var post in postList)
            {
                post.Category = _db.PostCategories.Find(post.CategoryId);
                posts.Add(new PostViewModel(post));
            }
            return posts;
        }

        public void UpdateCommenting(PostViewModel postViewModel)
        {
            var post = _db.PostModels.Find(postViewModel.Id);
            if (post != null)
                post.CommentsEnabled = postViewModel.CommentsEnabled;
            _db.SaveChanges();
        }

        public bool RemovePost(int id)
        {
            var postModel = _db.PostModels.Find(id);
            _db.PostModels.Remove(postModel);
            var comments = _db.CommentModels.Where(c => c.PostId == id);
            if (comments.Count() != 0)
                _db.CommentModels.RemoveRange(comments);
            _db.SaveChanges();
            return true;
        }


        public List<PostCategory> GetCategories()
        {
            return _db.PostCategories.ToList();
        }

        public bool CreateCategory(string name)
        {
            var cat = new PostCategory
            {
                Name = name
            };
            var newCat = _db.PostCategories.Add(cat);
            _db.SaveChanges();
            return newCat != null;
        }

        public void DeletePost(int id)
        {
            PostModel postModel = _db.PostModels.Find(id);
            if (postModel != null) _db.PostModels.Remove(postModel);
            _db.SaveChanges();
        }

        public void Dispose()
        {
            _db.Dispose();
        }
    }
}