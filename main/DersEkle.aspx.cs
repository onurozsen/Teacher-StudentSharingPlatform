using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs eS)
        {
            DataSet1TableAdapters.tblDerslerTableAdapter dt = new DataSet1TableAdapters.tblDerslerTableAdapter();
            dt.DersEkle(TxtDers.Text);
            Response.Redirect("DersListesi.Aspx");


        }
    }
}