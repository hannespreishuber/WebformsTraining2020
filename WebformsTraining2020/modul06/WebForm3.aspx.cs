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
            var _liste= new List<PLZORT>();
            var daten = File.ReadAllLines(Server.MapPath("~/app_data/plzort.csv"));
            foreach (var item in daten)
            {
                var s = item.Split(';');
                _liste.Add(new PLZORT() { PLZ = s[0], Ort = s[1] });
            }
            int number;

            bool success = Int32.TryParse(TextBox1.Text, out number);
            if (success) //PLZ
            {
                Liste = _liste.Where(x => x.PLZ.Contains(TextBox1.Text)).ToList(); //LINQ

            }
            else //Ort
            {
                Liste = _liste.Where(x => x.Ort.ToLower().Contains(TextBox1.Text.ToLower())).ToList();
            }

        }
    }
}