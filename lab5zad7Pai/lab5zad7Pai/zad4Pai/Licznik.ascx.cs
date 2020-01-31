using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace zad4Pai
{
    public partial class Licznik : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                licznikLabel.Text = Application["userCount"].ToString();
                licznikActiveLabel.Text = Application["activeUserCount"].ToString();
            }
            GenericWebPart gwp = Parent as GenericWebPart;
            if (gwp != null)
            {
                gwp.Title = "Licznik odwiedzin";
            }
        }
    }
}