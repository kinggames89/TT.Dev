using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TT.Dev.Models;

namespace TT.Dev.Controllers
{
    public class HomeController : Controller
    {
        MvcMusicStoreEntities storeDB = new MvcMusicStoreEntities();
        // GET: Home
        public ActionResult Index()
        {
            var albums = GetTopSellingAlbums(5);
            return View(albums);
        }

        private List<Album> GetTopSellingAlbums(int count)
        {
            return storeDB.Album.OrderByDescending(a => a.OrderDetail.Count()).Take(count).ToList();
        }
    }
}