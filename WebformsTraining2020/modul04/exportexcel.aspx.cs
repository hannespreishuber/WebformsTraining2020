using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul04
{
    public partial class exportexcel : System.Web.UI.Page
    {
        public Dictionary<string,DateTime> MyListe { get; set; }=new Dictionary<string, DateTime>();
        protected void Page_Load(object sender, EventArgs e)
        {

            MyListe.Add("Franz",DateTime.Now.AddDays(232));
            MyListe.Add("Maria", DateTime.Now.AddDays(-32));
            MyListe.Add("Sepp", DateTime.Now.AddDays(34));
            MyListe.Add("Diana", DateTime.Now.AddDays(2));
            Response.ContentType = "application/vnd.ms-excel";
        }
    }
}