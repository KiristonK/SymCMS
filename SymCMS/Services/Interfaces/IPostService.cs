using System.Collections.Generic;
using SymCMS.ViewModels;

namespace SymCMS.Services.Interfaces
{
    internal interface IPostService
    {
        bool AddPost(PostViewModel postViewModel);
        PostViewModel EditPost(PostViewModel postViewModel);
        PostViewModel GetPost(int? id);
        List<PostViewModel> GetPosts();
        void UpdateVisibility(PostViewModel postViewModel);
        bool RemovePost(int id);
    }
}