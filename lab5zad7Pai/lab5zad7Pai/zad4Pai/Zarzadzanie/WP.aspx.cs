using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace zad4Pai.Zarzadzanie
{
    public partial class WP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void trybDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            WebPartManager wpm = new WebPartManager();
            wpm = (WebPartManager)Page.Master.FindControl("MenadzerWebPartow");
            switch(trybDropDownList.SelectedValue)
            {
                case "1":
                    wpm.DisplayMode = WebPartManager.DesignDisplayMode;
                    break;

                case "2":
                    wpm.DisplayMode = WebPartManager.EditDisplayMode;
                    break;
                case "3":
                    wpm.DisplayMode = WebPartManager.CatalogDisplayMode;
                    break;
                default:
                    wpm.DisplayMode = WebPartManager.BrowseDisplayMode;
                    break;
            }
        }
    }
}