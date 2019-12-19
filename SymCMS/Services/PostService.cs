using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SymCMS.DAL;
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
                Content = postViewModel.Content
            });
            _db.SaveChanges();
            return true;
        }

        public PostViewModel EditPost(int id)
        {
            return null;
        }

        public PostViewModel GetPost(int id)
        {
            var post = _db.PostModels.Find(id);
            if (post != null)
            {
                return new PostViewModel() {
                    Id = post.Id,
                    Title = post.Title,
                    Content = post.Content
                };
            }
            return null;
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
                    Content = post.Content
                });
            }
            return posts;
        }
    }
}