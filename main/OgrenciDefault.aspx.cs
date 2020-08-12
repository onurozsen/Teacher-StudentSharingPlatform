using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["ID"].ToString();

            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();

            TextBox2.Text = "Ad Soyad:" + " " + dt.OgrenciPaneliGetir(int.Parse(TextBox1.Text))[0].Ad + " " + dt.OgrenciPaneliGetir(int.Parse(TextBox1.Text))[0].Soyad;
            TextBox3.Text = "Mail:" + " " + dt.OgrenciPaneliGetir(int.Parse(TextBox1.Text))[0].Mail;
            TextBox4.Text = "Telefon:" + " " + dt.OgrenciPaneliGetir(int.Parse(TextBox1.Text))[0].Tel;

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SıfreDegıstır.Aspx?ID=" + TextBox1.Text);
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciBilgiGüncelle.Aspx?ID=" + TextBox1.Text);
        }
    }
}