using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.tblDuyurularTableAdapter dt = new DataSet1TableAdapters.tblDuyurularTableAdapter();
            dt.DuyuruSil(id);
            Response.Redirect("DuyuruListesi.Aspx");
        }
    }
}