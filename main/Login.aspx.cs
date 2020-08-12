using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-QC3NNVP\SQLEXPRESS;Initial Catalog=new2table;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblKullanicilar where RolID=1 AND ID=@p1 and Sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ID", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.Aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre!";
            }
            baglanti.Close(); 

           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblKullanicilar where RolID=2 AND ID=@p1 and Sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ID", TxtNumara.Text);
                Response.Redirect("GelenMesajlar.Aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre!";
            }
            baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblKullanicilar where RolID=3 AND ID=@p1 and Sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ID", TxtNumara.Text);
                Response.Redirect("Admin.Aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre!";
            }
            baglanti.Close();
        }
    }
}