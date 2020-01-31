using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace zad4Pai.Kontrolki
{
    public partial class WybraneProdukty : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenericWebPart gwp = Parent as GenericWebPart;
            if (gwp != null)
            {
                gwp.Title = "Wybrane produkty:";
            }

            AdventureWorksDataContext db = new AdventureWorksDataContext();
            var noweProdukty = (from p in db.Products orderby db.losuj() select p).Take(3);
            WybraneProduktyListView.DataSource = noweProdukty;
            WybraneProduktyListView.DataBind();
        }
    }
}