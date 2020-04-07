using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yonetim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
        bag.Open();
        string yonetici_adi, parola;
        yonetici_adi = TextBox1.Text;
        parola = TextBox2.Text;
        SqlCommand komut = new SqlCommand("Select * from yonetici where yonetici_adi='" + yonetici_adi + "' and parola='" + parola + "'", bag);
        SqlDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Session.Add("yonetici_adi", yonetici_adi);
            Session.Add("parola", parola);
            Label1.Text = "Giriş Başarılı.";
            Response.Write("Hoşgeldin"+" "+ Session["yonetici_adi"]);
            HyperLink1.Visible= true;
        }
        else
        {
            Session.Abandon();
            Label1.Text = "Giriş Başarısız.";
           
            

        }
        bag.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Label1.Text = "Çıkış Yapılmıştır.";
        HyperLink1.Visible = false;
    }
}