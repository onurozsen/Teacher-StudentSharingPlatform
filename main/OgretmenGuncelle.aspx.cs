using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgretmenGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                try
                {
                    id = Convert.ToInt32(Request.QueryString["ID"].ToString());
                    TxtOgrtID.Text = id.ToString();
                    DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
                    TxtOgrtAd.Text = dt.OgrenciSec(id)[0].Ad;
                    TxtOgrtSoyad.Text = dt.OgrenciSec(id)[0].Soyad;
                    TxtOgrtMail.Text = dt.OgrenciSec(id)[0].Mail;
                    TxtOgrtTelefon.Text = dt.OgrenciSec(id)[0].Tel;
                    TxtOgrtAdres.Text = dt.OgrenciSec(id)[0].Adres;
                    TxtOgrtSifre.Text = dt.OgrenciSec(id)[0].Sifre;
                    TxtOgrtFoto.Text = dt.OgrenciSec(id)[0].Resim;
                }

                catch (Exception)
                {
                    TxtOgrtFoto.Text = "Link Girin";

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
            dt.OgrenciGuncelle(TxtOgrtAd.Text, TxtOgrtSoyad.Text, TxtOgrtMail.Text, TxtOgrtTelefon.Text, TxtOgrtAdres.Text, TxtOgrtSifre.Text,
            TxtOgrtFoto.Text, Convert.ToInt32(TxtOgrtID.Text));
            Response.Redirect("OgretmenListesi.Aspx");
        }
    }
}