using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgrenciGelenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataSet1TableAdapters.tblMesajlarTableAdapter dt = new DataSet1TableAdapters.tblMesajlarTableAdapter();
            Repeater1.DataSource = dt.Gelenkemesajke(int.Parse(Session["ID"].ToString()));
            Repeater1.DataBind();
        }
    }
}