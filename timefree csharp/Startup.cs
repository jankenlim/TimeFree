using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TimeFree_csharp.Startup))]
namespace TimeFree_csharp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
