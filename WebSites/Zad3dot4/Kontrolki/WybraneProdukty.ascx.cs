using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kontrolki_WybraneProdukty : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdventureWorksDataContext db = new AdventureWorksDataContext();
        var noweProdukty = (from p in db.Products orderby db.Losuj() select p).Take(3);
        WybraneProduktyListView.DataSource = noweProdukty;
        WybraneProduktyListView.DataBind();
    }
}