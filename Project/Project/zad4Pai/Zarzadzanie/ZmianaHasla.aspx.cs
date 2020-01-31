using System;

namespace zad4Pai.Zarzadzanie
{
    public partial class ZmianaHasla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!(User.Identity.Name != null && (User.IsInRole("Administrator") || User.IsInRole("User"))))
            //{
            //    Response.Redirect("~/Default.aspx");
            //}
        }
    }
}