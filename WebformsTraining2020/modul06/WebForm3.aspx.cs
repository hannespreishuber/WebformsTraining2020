using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebformsTraining2020.modul06
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public List<PLZORT> Liste { get; set; } = new List<PLZORT>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var daten = File.ReadAllLines(Server.MapPath("~/app_data/plzort.csv"));
            foreach (var item in daten)
            {
                var s = item.Split(';');
                Liste.Add(new PLZORT() { PLZ = s[0], Ort = s[1] });
            }

        }
    }
}