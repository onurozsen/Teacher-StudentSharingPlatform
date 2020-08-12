using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class IDSec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IDBulma1.Aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IDBulma2.Aspx");
        }
    }
}