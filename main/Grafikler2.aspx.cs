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
    public partial class Grafikler2 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-QC3NNVP\SQLEXPRESS;Initial Catalog=new2table;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            //Sorgu 1
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Chart1.Series["Notlar"].Points.AddXY(oku[0].ToString(), oku[1].ToString());
            }
            baglanti.Close();


            //Sorgu2
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Execute Graf2", baglanti);
            SqlDataReader oku2 = komut2.ExecuteReader();
            while (oku2.Read())
            {
                Chart2.Series["Cinsiyet"].Points.AddXY(oku2[0].ToString(), oku2[1].ToString());
            }
            baglanti.Close();

            //Sorgu3
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("Execute Graf3", baglanti);
            SqlDataReader oku3 = komut3.ExecuteReader();
            while (oku3.Read())
            {
                Chart3.Series["Brans"].Points.AddXY(oku3[0].ToString(), oku3[1].ToString());
            }
            baglanti.Close();

            //Sorgu4
            baglanti.Open();
            SqlCommand komut4 = new SqlCommand("Execute Graf4", baglanti);
            SqlDataReader oku4 = komut4.ExecuteReader();
            while (oku4.Read())
            {
                Chart4.Series["Not"].Points.AddXY(oku4[0].ToString(), oku4[1].ToString());
            }
            baglanti.Close();
        }
    }
}