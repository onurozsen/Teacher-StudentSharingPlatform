using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new
                DataSet1TableAdapters.tblKullanicilarTableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("Admin.aspx");
        }
    }
}