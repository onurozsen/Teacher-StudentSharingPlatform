using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgrtMesajSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["IDD"].ToString());
            DataSet1TableAdapters.tblMesajlarTableAdapter dt = new DataSet1TableAdapters.tblMesajlarTableAdapter();
            dt.OgrtMesajSil(id);
            Response.Redirect("GelenMesajlar.aspx");
        }
    }
}