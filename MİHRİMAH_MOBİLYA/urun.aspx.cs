using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;

public partial class urun : System.Web.UI.Page
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


                file.SaveAs(Server.MapPath("~/Resimler/Urun/" + resimadi));

                SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
                bag.Open();
                SqlCommand komut = new SqlCommand("Insert Into urun(no,resim_yolu) Values(@no,'" + "~/Resimler/Urun/" + resimadi + "')", bag);
                komut.Parameters.AddWithValue("@no", TextBox1.Text);
          
                komut.ExecuteNonQuery();
                bag.Close();

                Label1.Text += "Dosya : <b>" + fileName + "</b> başarıyla yüklendi !<br />";


                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/Urun/" + resimadi));

                resim = this.ResimBoyutlandir(resim, 400);

                resim.Save(Server.MapPath("~/Resimler/Urun/" + resimadi));


            }
        }
        Response.Redirect("urun.aspx");
        Label1.Text = "Kayıt Eklenmiştir.";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.uruns.First(k => k.id == Convert.ToInt32(TextBox10.Text));
        sil.uruns.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label1.Text = "Mobilya silinmiştir.";
        Response.Redirect("urun.aspx");
        Label1.Text = "Kayıt Silinmiştir.";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
       
    }
}