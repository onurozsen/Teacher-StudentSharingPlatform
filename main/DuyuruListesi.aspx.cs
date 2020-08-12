using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DuyuruListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDuyurularTableAdapter dt = new DataSet1TableAdapters.tblDuyurularTableAdapter();
            Repeater1.DataSource = dt.DuyuruOgrenci();
            Repeater1.DataBind();
        }
    }
}