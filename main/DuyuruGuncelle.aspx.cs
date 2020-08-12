using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DuyuruGüncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["ID"].ToString());
                DataSet1TableAdapters.tblDuyurularTableAdapter dt = new DataSet1TableAdapters.tblDuyurularTableAdapter();
                TxtDuyuruID.Text = id.ToString();
                TxtDuyuruKonu.Text = dt.DuyuruSec(id)[0].Konu;
                TextArea1.Value = dt.DuyuruSec(id)[0].Icerik;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDuyurularTableAdapter dt = new DataSet1TableAdapters.tblDuyurularTableAdapter();
            dt.DuyuruGuncelle(TxtDuyuruKonu.Text, TextArea1.Value, Convert.ToInt32(TxtDuyuruID.Text));
            Response.Redirect("DuyuruListesi.Aspx");
        }
    }   
}