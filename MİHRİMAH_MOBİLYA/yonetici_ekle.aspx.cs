using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yonetici_ekle : System.Web.UI.Page
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
        SqlCommand komut = new SqlCommand("Insert into yonetici(yonetici_adi,parola) values ('"+yonetici_adi+"','"+parola+"')",bag);
        komut.ExecuteNonQuery();
        Label1.Text = "Yönetici Eklenmiştir.";
        bag.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int sayi;
        SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);bag.Open();
         SqlCommand cmd = new SqlCommand("select count(*) from yonetici", bag);
  sayi= Convert.ToInt32(cmd.ExecuteScalar());
 

        string yonetici_adi, parola;
        yonetici_adi = TextBox1.Text;
        parola = TextBox2.Text;
        if (sayi> 1)
        {
            SqlCommand komut = new SqlCommand("Delete from yonetici where yonetici_adi='" + yonetici_adi + "'", bag);
            komut.ExecuteNonQuery();
            Label1.Text = "Yönetici Silinmiştir.";
            
        }
        else {
            Label1.Text = "Bir tane yönetici var.";
        }
        bag.Close();
        
    }
}