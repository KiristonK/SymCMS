using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SymCMS.Services;

namespace SymCMS.Controllers
{
    public class HomeController : Controller
    {
        private readonly PostService _pS = new PostService();
        public ActionResult Index()
        {
            return View(_pS.GetPosts());
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