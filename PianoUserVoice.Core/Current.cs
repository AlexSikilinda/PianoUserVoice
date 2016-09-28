using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;

namespace PianoUserVoice.Core
{
    public static class Current
    {
        public static string UserId => HttpContext.Current.User.Identity.GetUserId();
    }
}
