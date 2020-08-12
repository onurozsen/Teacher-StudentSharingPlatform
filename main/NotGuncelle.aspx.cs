using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                nid = Convert.ToInt32(Request.QueryString["NotID"].ToString());

                DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
                TxtDersAdi.Text = dt.NotGetir2(nid)[0].DersinAdı.ToString();
                TxtOgrID.Text = dt.NotGetir2(nid)[0].OgrenciID.ToString();
                TxtOgrAdSoyad.Text = dt.NotGetir2(nid)[0].ÖğrenciAdSoyad.ToString();
                TxtVize.Text = dt.NotGetir2(nid)[0].Vize.ToString(); ;
                TxtFinal.Text = dt.NotGetir2(nid)[0].Final.ToString();
                TxtOdev.Text = dt.NotGetir2(nid)[0].Odev.ToString();
                TxtQuiz1.Text = dt.NotGetir2(nid)[0].Quiz1.ToString();
                TxtQuiz2.Text = dt.NotGetir2(nid)[0].Quiz2.ToString();
                TxtQuiz3.Text = dt.NotGetir2(nid)[0].Quiz3.ToString();
                TxtQuiz4.Text = dt.NotGetir2(nid)[0].Quiz4.ToString();
                TxtOrt.Text = dt.NotGetir2(nid)[0].Ortalama.ToString();
                TxtSonuc.Text = dt.NotGetir2(nid)[0].Sonuc.ToString();

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            double Vize, Final, Odev, Quiz1, Quiz2, Quiz3, Quiz4;
            double ortalama;
            Vize = Convert.ToInt32(TxtVize.Text);
            Final = Convert.ToInt32(TxtFinal.Text);
            Odev = Convert.ToInt32(TxtOdev.Text);
            Quiz1 = Convert.ToInt32(TxtQuiz1.Text);
            Quiz2 = Convert.ToInt32(TxtQuiz2.Text);
            Quiz3 = Convert.ToInt32(TxtQuiz3.Text);
            Quiz4 = Convert.ToInt32(TxtQuiz4.Text);
            ortalama = (Vize + Final + Odev + Quiz1 + Quiz2) / 5;
            TxtOrt.Text = ortalama.ToString("0.00");
            if (ortalama >= 50){
                TxtSonuc.Text = "True";
            }
            else
            {
                TxtSonuc.Text = "False";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NotID"].ToString());

            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtVize.Text), byte.Parse(TxtFinal.Text), byte.Parse(TxtOdev.Text), byte.Parse(TxtQuiz1.Text),
                byte.Parse(TxtQuiz2.Text), byte.Parse(TxtQuiz3.Text), byte.Parse(TxtQuiz4.Text), decimal.Parse(TxtOrt.Text),
                bool.Parse(TxtSonuc.Text), nid);
            Response.Redirect("NotListesi.Aspx");

        }
    }
}