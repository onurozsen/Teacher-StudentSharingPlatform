using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {

                try
                {
                    id = Convert.ToInt32(Request.QueryString["ID"].ToString());
                    TxtOgrID.Text = id.ToString();
                    DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].Ad;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].Soyad;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].Mail;
                    TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].Tel;
                    TxtOgrAdres.Text = dt.OgrenciSec(id)[0].Adres;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].Sifre;
                    TxtOgrFoto.Text = dt.OgrenciSec(id)[0].Resim;
                }

                catch (Exception)
                {
                    TxtOgrFoto.Text = "Link Girin";

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrMail.Text, TxtOgrTelefon.Text, TxtOgrAdres.Text, TxtOgrSifre.Text,
            TxtOgrFoto.Text, Convert.ToInt32(TxtOgrID.Text));
            Response.Redirect("Admin.aspx");
        }
    }
}