using System.Linq;
using System.Threading.Tasks;
using Db;
using Microsoft.AspNetCore.Mvc;
using Model;

namespace WebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly BloggingContext _context;

        public HomeController(BloggingContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var blogs = _context.Blogs.ToArray();
            return View("Index", blogs);
        }

        [HttpPost]
        [Route("/")]
        public async Task<IActionResult> CreateBlog(string url)
        {
            Blog b = new Blog();
            b.Url = url;
            _context.Blogs.Add(b);
            await _context.SaveChangesAsync();

            return Index();
        }

        [HttpGet]
        public IActionResult Error()
        {
            return View();
        }
    }
}
