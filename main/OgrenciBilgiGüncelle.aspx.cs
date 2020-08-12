using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgrenciBilgiGüncelle : System.Web.UI.Page
    {
        //int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                TextBox1.Text = Session["ID"].ToString();
                DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
                TextBox2.Text = dt.OgrenciPaneliGetir(int.Parse(TextBox1.Text))[0].Mail;
                TextBox3.Text = dt.OgrenciPaneliGetir(int.Parse(TextBox1.Text))[0].Tel;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
            dt.ogrencibilgi(TextBox2.Text, TextBox3.Text, Convert.ToInt32(TextBox1.Text));
            Response.Redirect("OgrenciDefault.Aspx");
        }

       
    }
}
