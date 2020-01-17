using Microsoft.Owin;
using Owin;
using SymCMS;

[assembly: OwinStartupAttribute(typeof(Startup))]

namespace SymCMS
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}