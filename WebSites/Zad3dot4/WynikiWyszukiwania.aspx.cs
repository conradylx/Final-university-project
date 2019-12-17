using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WynikiWyszukiwania : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string nazwa = Request.QueryString["Nazwa"];
        if (nazwa != null)
        {
            AdventureWorksDataContext db = new AdventureWorksDataContext();
            var produkty = from p in db.Products
                           where p.Name.Contains(nazwa)
                           select p;
            WynikiWyszukiwaniaGridView.DataSource = produkty;
            WynikiWyszukiwaniaGridView.DataBind();
        }
    }
}