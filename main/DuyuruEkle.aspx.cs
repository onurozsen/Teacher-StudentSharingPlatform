using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new DataSet1TableAdapters.tblKullanicilarTableAdapter();
                DropDownList1.DataSource = dt.OgrtListee();
                DropDownList1.DataTextField = "OgretmenAdSoyadd";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataBind();
            }

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDuyurularTableAdapter dt = new DataSet1TableAdapters.tblDuyurularTableAdapter();
            dt.DuyuruEkle(TxtDuyuruKonu.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("DuyuruListesi.Aspx");
        }
    }
}
