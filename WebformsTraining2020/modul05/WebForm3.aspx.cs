using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul05
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = Request.QueryString;
            var f = Request.GetFriendlyUrlSegments() ;
            var i = Request.Form["eins"];
            var c = Request.Cookies;
        
        }
    }
}