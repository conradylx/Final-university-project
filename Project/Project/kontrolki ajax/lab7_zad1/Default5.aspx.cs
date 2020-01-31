using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab7_zad1
{
    public partial class Default5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            t2Label.Text = DateTime.Now.ToLongTimeString();
        }

        protected void t1Timer_Tick(object sender, EventArgs e)
        {
            t1Label.Text = DateTime.Now.ToLongTimeString();
        }
    }
}