﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVBlog
{
    public partial class adminExperienceDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.EXPERIENCETableAdapter dt =  new DataSet1TableAdapters.EXPERIENCETableAdapter();
            dt.experienceDelete(Convert.ToInt16(id));
            Response.Redirect("adminExperience.aspx");
        }
    }
}