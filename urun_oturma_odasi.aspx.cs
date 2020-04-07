using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class urunler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
    
         SqlCommand komut = new SqlCommand("Select m_adi,m_resim_yolu,fiyat,indirim_fiyat from oturma_odasi", bag);
bag.Open();
SqlDataReader dr = komut.ExecuteReader();
DataList1.DataSource = dr;
DataList1.DataBind();
bag.Close(); 
    }
}