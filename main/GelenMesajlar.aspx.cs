using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace WebApplication6
{
    public partial class GelenMesajlar : System.Web.UI.Page
    {

        DateTime localDate = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            DataSet1TableAdapters.tblMesajlarTableAdapter dt = new DataSet1TableAdapters.tblMesajlarTableAdapter();
            Repeater1.DataSource = dt.OgretmenGelenkeMesajke(int.Parse(Session["ID"].ToString()));
            Repeater1.DataBind();
        }
    }
}