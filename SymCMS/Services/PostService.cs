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
        private readonly SymDbContext _db = new SymDbContext();

        public bool AddPost(PostViewModel postViewModel)
        {
            var category = _db.PostCategories.Find(postViewModel.CategoryId);
            var post = new Models.PostModel()
            {
                Title = postViewModel.Title,
                Content = postViewModel.Content,
                Visible = postViewModel.Visible,
                Category = category,
                CategoryId = postViewModel.CategoryId
            };
            _db.PostModels.Add(post);
            _db.SaveChanges();
            return true;
        }

        public PostViewModel EditPost(PostViewModel postViewModel)
        {
            var postModel = new PostModel(postViewModel);
            _db.Entry(postModel).State = EntityState.Modified;
            _db.SaveChanges();
            return new PostViewModel(postModel);
        }

        public PostViewModel GetPost(int id)
        {
            var post = _db.PostModels.Find(id);
            if (post != null)
            {
                return new PostViewModel() {
                    Id = post.Id,
                    Title = post.Title,
                    Content = post.Content,
                    Visible = post.Visible,
                    CategoryId = post.CategoryId,
                    Category = post.Category
                };
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
                posts.Add(new PostViewModel()
                {
                    Id = post.Id,
                    Title = post.Title,
                    Content = post.Content,
                    Visible = post.Visible,
                    Category = _db.PostCategories.Find(post.CategoryId),
                    CategoryId = post.CategoryId
                });
            }
            return posts;
        }

        public bool RemovePost(int id)
        {
            var postModel = _db.PostModels.Find(id);
            _db.PostModels.Remove(postModel);
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
    }
}