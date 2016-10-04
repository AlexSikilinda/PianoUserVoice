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
            throw new Exception();
        }

        [Route("admin/errors/{resource?}/{subResource?}")]
        public ActionResult InvokeErrorHandler(string resource, string subResource)
        {
            var context = System.Web.HttpContext.Current;
            var factory = new StackExchange.Exceptional.HandlerFactory();

            var page = factory.GetHandler(context, Request.RequestType, Request.Url.ToString(), Request.PathInfo);
            page.ProcessRequest(context);

            return null;
        }
    }
}