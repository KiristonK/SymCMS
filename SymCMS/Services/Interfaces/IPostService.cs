using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SymCMS.ViewModels;

namespace SymCMS.Services.Interfaces
{
    interface IPostService
    {
        bool AddPost(PostViewModel postViewModel);
        PostViewModel EditPost(PostViewModel postViewModel);
        PostViewModel GetPost(int? id);
        List<PostViewModel> GetPosts();
        void UpdateVisibility(PostViewModel postViewModel);
        bool RemovePost(int id);
    }
}
