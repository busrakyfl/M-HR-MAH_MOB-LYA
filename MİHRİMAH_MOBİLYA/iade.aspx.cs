using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["kullanici_adi"] != null && Session["parola"] != null)
        {

            Response.Write("Hoşgeldin." + " " + Session["kullanici_adi"]);
        }
        else
        {
            Response.Redirect("uyegiris.aspx");
        }
        SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
        bag.Open();
        SqlCommand komut = new SqlCommand("Insert Into iade(no,sebep,adres,musteri_ad,musteri_soyad,telefon) Values(@no,@sebep,@adres,@musteri_ad,@musteri_soyad,@telefon)", bag);
        komut.Parameters.AddWithValue("@no", TextBox1.Text);
        komut.Parameters.AddWithValue("@sebep", TextBox2.Text);
        komut.Parameters.AddWithValue("@adres", TextBox3.Text);
        komut.Parameters.AddWithValue("@musteri_ad", TextBox4.Text);
        komut.Parameters.AddWithValue("@musteri_soyad",TextBox5.Text);
        komut.Parameters.AddWithValue("@telefon",TextBox6.Text);
       
        komut.ExecuteNonQuery();
        bag.Close();
        Label1.Text = "İade kaydınız alınmıştır. Sebep geçerliliği kontrol edilip size geri dönülecektir.";
    }
}