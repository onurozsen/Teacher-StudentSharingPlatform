﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{

    public partial class OgrenciNotu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            Repeater1.DataSource = dt.OgrenciNotlarr(int.Parse(Session["ID"].ToString()));
            Repeater1.DataBind();

        }
    }
}