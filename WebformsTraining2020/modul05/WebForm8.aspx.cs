using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul05
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var wert = Request.Cookies["hannes"];
            if (wert != null)
            {
                if (!IsPostBack)
                {
                    TextBox1.Text = wert.Value;

                }


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("hannes");
            cookie.Value = TextBox1.Text;
            cookie.Expires = DateTime.Now.AddDays(30);
            // cookie.Domain = ".ppedv.de";
            Response.Cookies.Set(cookie);
            //Response.AppendCookie(cookie);
        }
    }
}