using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul08
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var liste = new List<Kunden>();
            using (var con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["northwindConnectionString1"].ConnectionString))
            {
                var sql = "select * from customers where companyname like '%'+@par+'%' or contactname like '%'+@par+'%'";
                var cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@par", TextBox1.Text);
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    liste.Add(new Kunden()
                    {
                        ID = reader["CustomerID"].ToString(),
                        Firmenname = reader["CompanyName"].ToString()
                    });
                }

            }

            Repeater1.DataSource = liste;
            Repeater1.DataBind();

        }
    }
}