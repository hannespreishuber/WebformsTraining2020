using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsTraining2020.modul09;

namespace WebformsTraining2020.Modul14
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Customers> liste { get; set; }
        protected void Button1_Click(object sender, EventArgs e)
        {


            var db = new Model1();
            if (Cache["customers"] == null)
            {
                liste = db.Customers.ToList();
                Cache.Add("customers", liste,null,DateTime.Now.AddMinutes(10),new TimeSpan(0,0,10),
                    System.Web.Caching.CacheItemPriority.Normal,null);
                Label1.Text = "aus  cache";
            }
            else
            {
             liste    = (List<Customers>)Cache["customers"];

                Label1.Text = "frische daten";
            }

        }
    }
}