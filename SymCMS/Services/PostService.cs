using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using SymCMS.DAL;
using SymCMS.Models;
using SymCMS.Services.Interfaces;
using SymCMS.ViewModels;

namespace SymCMS.Services
{
    public class PostService : IPostService
    {
        private SymDbContext _db = new SymDbContext();

        public bool AddPost(PostViewModel postViewModel)
        {
            _db.PostModels.Add(new Models.PostModel()
            {
                Title = postViewModel.Title,
                Content = postViewModel.Content,
                Visible = postViewModel.Visible
            });
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
                    Visible = post.Visible
                };
            }
            return null;
        }

        public void UpdateVisibility(PostViewModel postViewModel)
        {
            _db.PostModels.Find(postViewModel.Id).Visible = postViewModel.Visible;
            _db.SaveChanges();
        }

        public List<PostViewModel> GetPosts()
        {
            List<PostViewModel> posts = new List<PostViewModel>();
            foreach (var post in _db.PostModels.ToList())
            {
                posts.Add(new PostViewModel()
                {
                    Id = post.Id,
                    Title = post.Title,
                    Content = post.Content,
                    Visible = post.Visible
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
    }
}