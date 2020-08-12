using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["ID"].ToString());
                DataSet1TableAdapters.tblDerslerTableAdapter dt = new DataSet1TableAdapters.tblDerslerTableAdapter();
                TxtDersID.Text = id.ToString();
                TxtDersAd.Text = dt.DersGetir(id)[0].Ad;
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDerslerTableAdapter dt = new DataSet1TableAdapters.tblDerslerTableAdapter();
            dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersID.Text));
            Response.Redirect("DersListesi.Aspx");
        }
    }
}





//protected void Button1_Click(object sender, EventArgs e)
//{
//    DataSet1TableAdapters.tblDerslerTableAdapter dt = new DataSet1TableAdapters.tblDerslerTableAdapter();
//    dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersID.Text));
//    Response.Redirect("DersListesi.Aspx");
//}



