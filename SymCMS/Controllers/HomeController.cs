using System.Linq;
using System.Text.RegularExpressions;
using System.Web.Mvc;
using SymCMS.Services;

namespace SymCMS.Controllers
{
    public class HomeController : Controller
    {
        private readonly PostService _pS = new PostService();

        public ActionResult Index()
        {
            var posts = _pS.GetPosts();
            posts.Reverse();
            foreach (var post in posts.Where(post => string.IsNullOrEmpty(post.ContentPreview)))
            {
                post.ContentPreview = Regex.Replace(post.Content, "<.*?>", string.Empty);
                if (post.ContentPreview.Length >= 1000)
                {
                    post.ContentPreview = post.ContentPreview.Substring(0, 1000) + "...";
                }
            }
            return View(posts.Where(m => m.Visible));
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}