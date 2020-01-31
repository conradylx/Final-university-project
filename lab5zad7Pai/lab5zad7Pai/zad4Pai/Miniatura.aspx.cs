using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad4Pai
{
    public partial class Miniatura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != null)
            {
                AdventureWorksDataContext db = new AdventureWorksDataContext();
                var miniaturka = db.Products.Where(p => p.ProductID == int.Parse(Request.QueryString["id"])).Select(p => p.ThumbNailPhoto).FirstOrDefault();
                if(miniaturka != null)
                {
                    Response.ContentType = "image/bmp";
                    Response.BinaryWrite(miniaturka.ToArray());
                }
            }
        }
    }
}