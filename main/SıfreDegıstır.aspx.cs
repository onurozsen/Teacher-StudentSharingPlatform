using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class SıfreDegıstır : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            TextBox1.Text = Session["ID"].ToString();

            if (Page.IsPostBack == false)
            {

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
            dt.SifreDegistir(TxtOgrSifre2.Text, Convert.ToInt32(TextBox1.Text));
            if (TextBox2.Text == TxtOgrSifre2.Text)
            {
                dt.SifreDegistir(TxtOgrSifre2.Text, Convert.ToInt32(TextBox1.Text));
                Response.Redirect("OgrenciDefault.Aspx?ID" + TextBox1.Text);
            }
            else
            {
               Response.Write("<script>alert('Şifreler Aynı Değil!');</script>");
               
            }





        }
    }
}