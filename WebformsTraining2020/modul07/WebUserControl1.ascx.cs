using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul07
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public string Text { get; set; }
        public string Placeholder { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Attributes.Add("Placeholder", Placeholder);
        }
    }
}