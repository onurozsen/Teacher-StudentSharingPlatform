using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class OgretmenListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblKullanicilarTableAdapter dt = new
               DataSet1TableAdapters.tblKullanicilarTableAdapter();
            Repeater1.DataSource = dt.OgretmeenListesi();
            Repeater1.DataBind();
        }
    }
}