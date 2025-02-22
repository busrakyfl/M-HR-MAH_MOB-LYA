﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;

public partial class Yemek_Odasi : System.Web.UI.Page
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
    protected void Button4_Click(object sender, EventArgs e)
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


                file.SaveAs(Server.MapPath("~/Resimler/Yemek_Odasi/" + resimadi));

                SqlConnection bag = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bag"].ConnectionString);
                bag.Open();
                SqlCommand komut = new SqlCommand("Insert Into yemek_odasi(no,m_adi,m_resim_yolu,m_boyut,m_renk,kumas_adi,kumas_renk,agac_cinsi,fiyat,indirim_fiyat,kategori) Values(@no,@m_adi,'" + "~/Resimler/Yemek_Odasi/" + resimadi + "',@m_boyut,@m_renk,@kumas_adi,@kumas_renk,@agac_cinsi,@fiyat,@indirim_fiyat,@kategori)", bag);
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




                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/Yemek_Odasi/" + resimadi));

                resim = this.ResimBoyutlandir(resim, 400);

                resim.Save(Server.MapPath("~/Resimler/Yemek_Odasi/" + resimadi));


            }
        }
        Response.Redirect("Yemek_Odasi.aspx");
        Label1.Text = "Kayıt Eklenmiştir.";
    }
}