using Microsoft.Practices.Unity;
using PianoUserVoice.App_Start;
using PianoUserVoice.Core.Songs;
using PianoUserVoice.Core.Songs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PianoUserVoice.Controllers
{
    public abstract class PianoBaseController : Controller
    {
        public IUnityContainer Container { get; set; } = UnityConfig.GetConfiguredContainer();
    }
}
