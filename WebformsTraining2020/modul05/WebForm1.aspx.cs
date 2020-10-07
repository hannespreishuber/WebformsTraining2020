using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul05
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            label1.InnerHtml = "<b>gelöscht</b>";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            label1.InnerHtml = "button2";
        }
    }
}