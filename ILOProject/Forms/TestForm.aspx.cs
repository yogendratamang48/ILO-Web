﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ILOProject.Forms
{
    public partial class TestForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOperate_Click(object sender, EventArgs e)
        {
            int myData = int.Parse(txtInput.Text);

            Boolean b = Convert.ToBoolean(ddlHasBrOrCitizenship.SelectedValue);
            lblStatus.Text = myData.ToString();
        }
    }
}