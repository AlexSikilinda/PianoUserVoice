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

        [Authorize]
        public ActionResult Create()
        {
            return View(new SongDto());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public ActionResult Create(SongDto song)
        {
            song.AuthorId = User.Identity.GetUserId();
            if (!ModelState.IsValid)
            {
                return View(song);
            }
            ISongsRepository<SongDto> songsRepo = Container.Resolve<ISongsRepository<SongDto>>(DefaultRepository);
            songsRepo.Create(song);
            return RedirectToAction("Index");
        }

        [HttpPost]
        [Authorize]
        public ActionResult Vote(int songId)
        {
            ISongsRepository<SongDto> songsRepo = Container.Resolve<ISongsRepository<SongDto>>(DefaultRepository);
            songsRepo.Vote(songId, User.Identity.GetUserId());
            return View();
        }

        #region Info pages
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
        #endregion
    }
}