using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class uyegiris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btngiris_Click(object sender, EventArgs e)
    {
        
        SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
        bag.Open();
        string yAd = TextBox2.Text;
        string yParola = TextBox3.Text;
        SqlCommand komut = new SqlCommand("Select * from uyeol where kullanici_adi='" + TextBox2.Text+ "' and parola='" + TextBox3.Text + "'", bag);
        SqlDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {

            Session.Add("kullanici_adi", yAd);
            Session.Add("parola", yParola);
            Response.Write(Session["kullanici_adi"]+" EVİNİZİN EN GÜZEL KOŞESİ SİZİN OLSUN. MİHRİMAH MOBİLYA İLE MUTLU KÖŞELER...");
            Response.Redirect("urun_urun.aspx");
        }
        else
        {
            Session.Abandon();
            Label1.Text = "GİRİŞ BAŞARISIZ...";
        }
        bag.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("urun_urun.aspx");
    }
}