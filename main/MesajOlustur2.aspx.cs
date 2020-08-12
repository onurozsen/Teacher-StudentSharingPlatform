using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class MesajOlustur2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGonderen.Text = Session["ID"].ToString();
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblMesajlarTableAdapter dt = new DataSet1TableAdapters.tblMesajlarTableAdapter();
            dt.MesajGonder(int.Parse(TxtGonderen.Text), int.Parse(TxtAlici.Text), TxtBaslik.Text, TxtIcerik.Value,DateTime.Now);
            Response.Redirect("OgrenciGidenMesajlar.Aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IDSec.Aspx");
        }
    }
}