using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad4Pai
{
    public partial class SzablonStrony : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AnkietaNowy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ankieta.aspx?view=nowy");
        }

        protected void AnkietaStary_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ankieta.aspx?view=wycieczki");
        }

        protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Default.aspx");
        }
    }
}