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
using StackExchange.Profiling.Storage;
using System.Configuration;

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

            // MiniProfiler for ASP.NET MVC views
            var copiedViewEngines = ViewEngines.Engines.ToList();
            ViewEngines.Engines.Clear();
            foreach (var ve in copiedViewEngines)
            {
                ViewEngines.Engines.Add(new ProfilingViewEngine(ve));
            }
            // MiniProfiler for EF 6+
            MiniProfilerEF6.Initialize();
            // MiniProfiler Authorization restrictions
            MiniProfiler.Settings.Results_List_Authorize = context => true;
            // MiniProfiler custom storage
            MiniProfiler.Settings.Storage = new SqlServerStorage(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        }

        protected void Application_BeginRequest()
        {
            MiniProfiler.Start();
        }

        protected void Application_EndRequest()
        {
            MiniProfiler.Stop();
        }

        private bool IsUserAllowedToSeeMiniProfilerUI(HttpRequest httpRequest)
        {
            // Implement your own logic for who 
            // should be able to access ~/mini-profiler-resources/results-index
            //var principal = httpRequest.RequestContext.HttpContext.User;
            //return principal.IsInRole("Developer");
            return true;
        }
    }
}
