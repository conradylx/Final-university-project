using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad4Pai
{
    public partial class WynikiWyszukiwania : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var nazwa = Request.QueryString["Nazwa"];
            if(nazwa != null)
            {
                AdventureWorksDataContext db = new AdventureWorksDataContext();
                var produkty = db.Products.Where(p => p.Name.Contains(nazwa));
                WynikiWyszukiwaniaGridView.DataSource = produkty;
                WynikiWyszukiwaniaGridView.DataBind();
            }
        }
    }
}