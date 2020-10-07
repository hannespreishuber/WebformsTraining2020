using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul05
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)

        {
            Response.Clear();
            Response.StatusCode = 403;
            Response.End();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("webform1");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write(DateTime.Now);
        }
    }
}