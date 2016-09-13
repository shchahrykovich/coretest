using System.Linq;
using Db;
using Microsoft.AspNetCore.Mvc;

namespace WebApp.Controllers
{
    public class HomeController : Controller
    {
        private BloggingContext _context;

        public HomeController(BloggingContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var blogs = _context.Blogs.ToArray();
            return View(blogs);
        }        

        public IActionResult Error()
        {
            return View();
        }
    }
}
