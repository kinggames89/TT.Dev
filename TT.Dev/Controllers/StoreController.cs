using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TT.Dev.Filters;
using TT.Dev.Models;

namespace TT.Dev.Controllers
{
    [CustomActionFilter]
    public class StoreController : Controller
    {
        MvcMusicStoreEntities storeDB = new MvcMusicStoreEntities();
        // GET: Store
        public ActionResult Index()
        {
            var genres = storeDB.Genre.ToList();
            return View(genres);
        }

        public ActionResult Details(int id)
        {
            var album = storeDB.Album.Find(id);
            return View(album);
        }

        public ActionResult Browse(string genre)
        {
            var genreModel = storeDB.Genre.Include("Album").Single(g => g.Name == genre);
            return View(genreModel);
        }
    }
}