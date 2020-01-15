using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SymCMS.Startup))]
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
