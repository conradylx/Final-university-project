using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad4Pai
{
    public partial class Szczegoly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(blednyView);
            if (Request.QueryString["id"] != null)
            {
                AdventureWorksDataContext db = new AdventureWorksDataContext();
                var produkt = db.Products.Where(p => p.ProductID == int.Parse(Request.QueryString["id"]))
                    .Select(p =>
                    new
                    {
                        ProductID = p.ProductID,
                        Name = p.Name,
                        Category = p.ProductCategory.Name,
                        ListPrice = p.ListPrice,
                        Color = p.Color,
                        Description = p.ProductModel.ProductModelProductDescriptions.First().ProductDescription.Description
                    }).FirstOrDefault();
                if (produkt != null)
                {
                    KoszykHyperLink.NavigateUrl = "~/Zakupy.aspx?ProdID=" + produkt.ProductID;
                    MultiView1.SetActiveView(prawidlowyView);
                    Page.Title = "Przegladasz: " + produkt.Name;
                    nazwaLabel.Text = produkt.Name;
                    produktImage.ImageUrl = "Miniatura.aspx?id=" + produkt.ProductID.ToString();
                    kategoriaLabel.Text = produkt.Category;
                    cenaLabel.Text = string.Format("{0:C}", produkt.ListPrice);
                    kolorLabel.Text = produkt.Description;
                }
            }
        }
    }
}