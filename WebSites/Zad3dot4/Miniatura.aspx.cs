using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Miniatura : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            AdventureWorksDataContext db = new AdventureWorksDataContext();
            var miniaturka = (from p in db.Products
                              where p.ProductID == int.Parse(Request.QueryString["id"])
                              select p.ThumbNailPhoto).FirstOrDefault();
            if (miniaturka != null)
            {
                Response.ContentType = "image/bmp";
                Response.BinaryWrite(miniaturka.ToArray());
            }

        }
    }
}