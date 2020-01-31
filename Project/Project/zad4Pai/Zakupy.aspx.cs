using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace zad4Pai
{
    public class ElementKoszyka
    {

        public ElementKoszyka()
        {
            ProdID = 0;
            Nazwa = "";
            Cena = 0;
            IloscSztuk = 0;
        }

        public ElementKoszyka(int prodID, string nazwa, decimal cena, int iloscSztuk)
        {
            ProdID = prodID;
            Nazwa = nazwa;
            Cena = cena;
            IloscSztuk = iloscSztuk;
        }
        public string Nazwa { get; set; }
        public int ProdID { get; set; }
        public decimal Cena { get; set; }
        public int IloscSztuk { get; set; }
        public decimal Suma { get { return Cena * IloscSztuk; } }

    }

    public class Koszyk
    {
        private List<ElementKoszyka> _koszyk = new List<ElementKoszyka>();
        public int Ilosc { get { return _koszyk.Count; } }

        public List<ElementKoszyka> Pobierz()
        {
            return _koszyk;
        }
        public void AktualizujIlosc(int indeks, int iloscSztuk)
        {
            ElementKoszyka element = _koszyk[indeks];
            element.IloscSztuk = iloscSztuk;
        }

        public void UsunElement(int indeks)
        {
            _koszyk.RemoveAt(indeks);
        }

        public void Dodaj(int prodID)
        {
            bool znaleziono = false;
            foreach (ElementKoszyka element in _koszyk)
            {
                if (element.ProdID == prodID)
                {
                    element.IloscSztuk += 1;
                    znaleziono = true;
                }
            }
            if (!znaleziono)
            {
                AdventureWorksDataContext db = new AdventureWorksDataContext();
                var produkt = (from p in db.Products
                               where p.ProductID == prodID
                               select p).FirstOrDefault();
                if (produkt != null)
                {
                    ElementKoszyka element = new ElementKoszyka(prodID, produkt.Name, produkt.ListPrice, 1);
                    _koszyk.Add(element);
                }
            }
        }

    }

    public partial class Zakupy : System.Web.UI.Page
    {
        Koszyk koszyk;

        protected void Page_Load(object sender, EventArgs e)
        {
            koszyk = (Koszyk)Session["koszyk"];
            if(koszyk == null)
            {
                koszyk = new Koszyk();
                Session["koszyk"] = koszyk;
            }

            if(!IsPostBack)
            {
                string req = Request.QueryString["prodID"];
                if(req != null)
                {
                    int prodID = int.Parse(Request.QueryString["prodID"]);
                    koszyk.Dodaj(prodID);
                    string url = Request.Url.AbsolutePath;
                    System.Web.HttpContext.Current.RewritePath(url, "", "");
                }

            }
            KoszykGridView.DataSource = koszyk.Pobierz();
            KoszykGridView.DataBind();
            kasaButton.Enabled = (koszyk.Ilosc > 0);
        }

        protected void KoszykGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            koszyk.UsunElement(e.RowIndex);
            KoszykGridView.DataBind();
        }

        protected void KoszykGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            KoszykGridView.EditIndex = e.NewEditIndex;
            KoszykGridView.DataBind();
        }

        protected void KoszykGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox tb = (TextBox)KoszykGridView.Rows[e.RowIndex].Controls[2].Controls[0];
            try
            {
                int wartosc = int.Parse(tb.Text);
                if (wartosc < 0) { wartosc = wartosc * (-1); }
                koszyk.AktualizujIlosc(e.RowIndex, wartosc);

            }
            catch
            {
                e.Cancel = true;
            }
            KoszykGridView.EditIndex = -1;
            KoszykGridView.DataBind();
        }

        protected void KoszykGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            e.Cancel = true;
            KoszykGridView.EditIndex = -1;
            KoszykGridView.DataBind();
        }
    }
}