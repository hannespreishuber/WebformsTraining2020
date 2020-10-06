using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul02
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int MyProperty { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            MyProperty = 42;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox1.Text.ToUpper();
            Label1.Text = TextBox1.Text;
        }
    }
}