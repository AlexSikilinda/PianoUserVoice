using Microsoft.Practices.Unity;
using PianoUserVoice.Core.Songs;
using PianoUserVoice.Core.Songs.Models;
using StackExchange.Profiling;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace PianoUserVoice.Controllers
{
    public class HomeController : PianoBaseController
    {
        public ActionResult Index()
        {
            ISongsRepository<SongDto> songsRepo = Container.Resolve<ISongsRepository<SongDto>>(DefaultRepository);
            IEnumerable<SongDto> songs = null;
            using (Profiler.Step("DB. Get all songs"))
            {
                songs = songsRepo.GetAll();
            }
            return View(songs);
        }

        public ActionResult Create()
        {
            var song = new SongDto()
            {
                AuthorId = User.Identity.GetUserId()
            };
            return View(song);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SongDto song)
        {
            if (!ModelState.IsValid)
            {
                return View(song);
            }
            ISongsRepository<SongDto> songsRepo = Container.Resolve<ISongsRepository<SongDto>>(DefaultRepository);
            songsRepo.Create(song);
            return RedirectToAction("Index");
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