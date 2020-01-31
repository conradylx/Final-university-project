using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace zad4Pai.Kontrolki
{
    public partial class NoweProdukty : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenericWebPart gwp = Parent as GenericWebPart;
            if (gwp != null)
            {
                gwp.Title = "Nasze nowe produkty:";
            }

            AdventureWorksDataContext db = new AdventureWorksDataContext();
            var noweProdukty = db.Products.OrderByDescending(p => p.SellStartDate).Take(4);
            NoweProduktyListView.DataSource = noweProdukty;
            NoweProduktyListView.DataBind();


        }
    }
}