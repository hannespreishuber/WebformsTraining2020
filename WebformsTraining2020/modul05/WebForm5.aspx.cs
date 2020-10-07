using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul05
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = Application["orte"];
            if (x==null)
            {
                Application["orte"] = File.ReadAllLines(Server.MapPath(@"~\app_data\plzort.csv"));
            }
        }
    }
}