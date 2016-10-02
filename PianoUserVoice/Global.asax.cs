using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using StackExchange.Profiling;
using StackExchange.Profiling.Mvc;
using StackExchange.Profiling.SqlFormatters;
using StackExchange.Profiling.EntityFramework6;

namespace PianoUserVoice
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);            

            var copiedViewEngines = ViewEngines.Engines.ToList();
            ViewEngines.Engines.Clear();
            foreach (var ve in copiedViewEngines)
            {
                ViewEngines.Engines.Add(new ProfilingViewEngine(ve));
            }
            MiniProfilerEF6.Initialize();
        }


        protected void Application_BeginRequest()
        {
            MiniProfiler.Start();
        }

        protected void Application_EndRequest()
        {
            MiniProfiler.Stop();
        }

        //protected void Application_Error(object sender, EventArgs e)
        //{
        //    Exception exception = Server.GetLastError();
        //    Server.ClearError();
        //    if (HttpContext.Current.Session != null)
        //    {
        //        HttpContext.Current.Session["ErrorMessage"] = exception.Message;
        //        HttpContext.Current.Session["ErrorStackTrace"] = exception.StackTrace;
        //    }
        //    Response.Redirect("/Error");
        //}
    }
}
