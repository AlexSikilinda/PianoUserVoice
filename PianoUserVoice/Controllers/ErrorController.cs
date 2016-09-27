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
    public class ErrorController : PianoBaseController
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}