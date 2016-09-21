using Microsoft.Practices.Unity;
using PianoUserVoice.Core.Songs;
using PianoUserVoice.Core.Songs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PianoUserVoice.Controllers
{
    public class HomeController : PianoBaseController
    {
        public ActionResult Index()
        {
            ISongsRepository<SongDto> songsRepo = Container.Resolve<ISongsRepository<SongDto>>("dapper");
            IEnumerable<SongDto> songs = songsRepo.GetAll();
            return View(songs);
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