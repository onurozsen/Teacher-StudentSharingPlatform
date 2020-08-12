using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgretmenEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
            dt.OgretmenEkle(TxtOgrtAd.Text, TxtOgrtSoyad.Text, TxtOgrtMail.Text, TxtOgrtTelefon.Text, TxtOgrtAdres.Text, TxtOgrtSifre.Text, TxtOgrtFoto.Text);
            Response.Redirect("OgretmenListesi.aspx");
        }


    }
}