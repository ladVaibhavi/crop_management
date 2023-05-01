using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace cropManagment
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            int id=0;
            using (con)
            {

                con.Open();
                SqlCommand command = new SqlCommand("SELECT Id FROM Buyer where Email = '" + Session["email"].ToString() + "'", con);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        
                        id = reader.GetInt32(0);
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
                con.Close();

            }
            Response.Write(id);

            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            using (con1)
            {
                con1.Open();
                SqlDataAdapter Adp = new SqlDataAdapter("select ProductName,Price from Cart where bid = '" + id + "' ", con1);
                DataTable Dt = new DataTable();
                Adp.Fill(Dt);
               // GridViewcart.DataSource = Dt;
                GridViewcart.DataBind();
            }

        }
    }
}