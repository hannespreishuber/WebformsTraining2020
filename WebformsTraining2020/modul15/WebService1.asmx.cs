using System;
using System.Collections.Generic;
using System.Dynamic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using WebformsTraining2020.modul06;
using WebformsTraining2020.modul09;

namespace WebformsTraining2020.modul15
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Wenn der Aufruf dieses Webdiensts aus einem Skript zulässig sein soll, heben Sie mithilfe von ASP.NET AJAX die Kommentarmarkierung für die folgende Zeile auf. 
  [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        //[WebMethod]
        //public List<Customers>GetCustomers()
        //{

        //    var db = new Model1();
        //    //crasht weil Serialisierung Problem LacyLoading

        //    return db.Customers.ToList();
        //}
        [WebMethod]
        [ScriptMethod(UseHttpGet =true)]
        public List<PLZORT>GetOrt(string suche)
        {
            var _liste = new List<PLZORT>();
            var Liste = new List<PLZORT>();
            var daten = File.ReadAllLines(Server.MapPath("~/app_data/plzort.csv"));
            foreach (var item in daten)
            {
                var s = item.Split(';');
                _liste.Add(new PLZORT() { PLZ = s[0], Ort = s[1] });
            }
            int number;

            bool success = Int32.TryParse(suche, out number);
            if (success) //PLZ
            {
                Liste = _liste.Where(x => x.PLZ.Contains(suche)).ToList(); //LINQ

            }
            else //Ort
            {
                Liste = _liste.Where(x => x.Ort.ToLower().Contains(suche.ToLower())).ToList();
            }
            return Liste;

        }
    }
}
