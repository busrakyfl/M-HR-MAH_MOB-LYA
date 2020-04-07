using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

public partial class Oturma_Odasi : System.Web.UI.Page
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
    string dosyaYolu = string.Empty;
    Bitmap bmp = null;
    string uzanti = "";
    string resimadi = "";

    public Bitmap ResimBoyutlandir(Bitmap resim, int boyut)
    {

        Bitmap sresim = resim;

        using (Bitmap OrjinalResim = resim)
        {
            double yukseklik = OrjinalResim.Height;
            double genislik = OrjinalResim.Width;
            double oran = 0;

            if (genislik >= boyut)
            {
                oran = genislik / yukseklik;
                genislik = boyut;
                yukseklik = genislik / oran;

                Size ydeger = new Size(Convert.ToInt32(genislik), Convert.ToInt32(yukseklik));

                Bitmap yresim = new Bitmap(OrjinalResim, ydeger);

                sresim = yresim;
            }
        }

        return sresim;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpFileCollection files = Request.Files;
        for (int i = 0; i < files.Count; i++)
        {
            HttpPostedFile file = files[i];
            if (file.ContentLength > 0)
            {

                string fileName = Path.GetFileName(file.FileName);


                uzanti = Path.GetExtension(file.FileName);


                resimadi = DateTime.Now.Millisecond + uzanti;


                file.SaveAs(Server.MapPath("~/Resimler/Oturma_Odasi/" + resimadi));

                SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
                bag.Open();
                SqlCommand komut = new SqlCommand("Insert Into oturma_odasi(no,m_adi,m_resim_yolu,m_boyut,m_renk,kumas_adi,kumas_renk,agac_cinsi,fiyat,indirim_fiyat,kategori) Values(@no,@m_adi,'" + "~/Resimler/Oturma_Odasi/" + resimadi + "',@m_boyut,@m_renk,@kumas_adi,@kumas_renk,@agac_cinsi,@fiyat,@indirim_fiyat,@kategori)", bag);
                komut.Parameters.AddWithValue("@no", TextBox1.Text);
                komut.Parameters.AddWithValue("@m_adi", TextBox2.Text);
                komut.Parameters.AddWithValue("@m_boyut", TextBox3.Text);
                komut.Parameters.AddWithValue("@m_renk", TextBox4.Text);
                komut.Parameters.AddWithValue("@kumas_adi", TextBox5.Text);
                komut.Parameters.AddWithValue("@kumas_renk", TextBox6.Text);
                komut.Parameters.AddWithValue("@agac_cinsi", TextBox7.Text);
                komut.Parameters.AddWithValue("@fiyat", TextBox8.Text);
                komut.Parameters.AddWithValue("@indirim_fiyat", TextBox9.Text);
                komut.Parameters.AddWithValue("@kategori", DropDownList1.Text);

                komut.ExecuteNonQuery();
                bag.Close();

                Label1.Text += "Dosya : <b>" + fileName + "</b> başarıyla yüklendi !<br />";




                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/Oturma_Odasi/" + resimadi));

                resim = this.ResimBoyutlandir(resim, 400);

                resim.Save(Server.MapPath("~/Resimler/Oturma_Odasi/" + resimadi));


            }
        }
        Response.Redirect("Oturma_Odasi.aspx");
        Label1.Text = "Kayıt Eklenmiştir.";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.oturma_odasis.First(k => k.no == TextBox10.Text);
        sil.oturma_odasis.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label1.Text = "Mobilya silinmiştir.";
        Response.Redirect("Oturma_Odasi.aspx");
        Label1.Text = "Kayıt Silinmiştir.";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpFileCollection files = Request.Files;
        for (int i = 0; i < files.Count; i++)
        {
            HttpPostedFile file = files[i];
            if (file.ContentLength > 0)
            {

                string fileName = Path.GetFileName(file.FileName);


                uzanti = Path.GetExtension(file.FileName);


                resimadi = DateTime.Now.Millisecond + uzanti;


                DataClassesDataContext du = new DataClassesDataContext();
                var blg = du.oturma_odasis.First(k => k.no == TextBox10.Text);
                blg.no = TextBox1.Text;
                blg.m_adi = TextBox2.Text;
                blg.m_resim_yolu = "~/Resimler/Oturma_Odasi/" + resimadi;
                blg.m_boyut = TextBox3.Text;
                blg.m_renk = TextBox4.Text;
                blg.kumas_adi = TextBox5.Text;
                blg.kumas_renk = TextBox6.Text;
                blg.agac_cinsi = TextBox7.Text;
                blg.fiyat = TextBox8.Text;
                blg.indirim_fiyat = TextBox9.Text;
                du.SubmitChanges();
                Label1.Text = "Kayıt Düzeltilmiştir.";
            }
        }
        Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/Oturma_Odasi/" + resimadi));

        resim = this.ResimBoyutlandir(resim, 400);

        resim.Save(Server.MapPath("~/Resimler/Oturma_Odasi/" + resimadi));
        Response.Redirect("Oturma_Odasi.aspx");
    }
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
}