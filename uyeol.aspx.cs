using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class uyeol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnkayit_Click(object sender, EventArgs e)
    {
        SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
        bag.Open();
        SqlCommand komut = new SqlCommand("INSERT INTO uyeol(ad,soyad,kullanici_adi,mail,telefon,parola,kredik_no,k_guvenlik_no,k_tipi) values (@ad,@soyad,@kullanici_adi,@mail,@telefon,@parola,@kredik_no,@k_guvenlik_no,@k_tipi)",bag);
        komut.Parameters.AddWithValue("@ad",TextBox1.Text);
        komut.Parameters.AddWithValue("@soyad",TextBox2.Text);
        komut.Parameters.AddWithValue("@kullanici_adi",TextBox3.Text);
        komut.Parameters.AddWithValue("@mail",TextBox4.Text);
        komut.Parameters.Add("@telefon",TextBox5.Text);
        komut.Parameters.AddWithValue("@parola",TextBox7.Text);
        komut.Parameters.AddWithValue("@kredik_no",TextBox9.Text);
        komut.Parameters.AddWithValue("@k_guvenlik_no",TextBox10.Text);
        komut.Parameters.AddWithValue("@k_tipi",TextBox13.Text);

        komut.ExecuteNonQuery();
        bag.Close();
        lbl.Text = "ÜYELİĞİNİZ TAMAMLANMIŞTIR.";
    }
}