using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PianoUserVoice.Startup))]
namespace PianoUserVoice
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
