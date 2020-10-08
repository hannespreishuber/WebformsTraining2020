using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul09
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Der Rückgabetyp kann in 'IEnumerable' geändert werden. Damit Paginierung und Sortierung für
        // unterstützt werden, müssen jedoch die folgenden Parameter hinzugefügt werden:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<WebformsTraining2020.modul09.Customers> Repeater1_GetData()
        {
            var db = new Model1();
            return db.Customers;
        }
    }
}