using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Zad3dot4.Startup))]
namespace Zad3dot4
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
