using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yatak_Odasi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yonetici_adi"] != null && Session["parola"] != null)
        {

            Response.Write("Hoşgeldin." + " " + Session["yonetici_adi"]);
        }
        else
        {
            Response.Redirect("Slayt.aspx");
        }
    }
}