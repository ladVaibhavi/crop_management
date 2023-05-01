using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cropManagment
{
    public partial class BuyerHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void oil_Click(object sender, ImageClickEventArgs e)
        {
            Session["category"] = "Oil";
           
        }

        protected void grains_Click(object sender, ImageClickEventArgs e)
        {
            Session["category"] = "Grain";
        }

        protected void nuts_Click(object sender, ImageClickEventArgs e)
        {
            Session["category"] = "DryFruts";
        }

        protected void buyerProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BuyerProfile.aspx");
        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            string query = "INSERT INTO Cart (ProductName,Price) VALUES(@pn,@price)";
            
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@pn",GridView1.SelectedRow.Cells[1].Text);
                        cmd.Parameters.AddWithValue("@price", GridView1.SelectedRow.Cells[2].Text);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Erros : " + ex.Message);
            }
            
            Response.Write("hiiiiii");
        }

        protected void cartbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cart.aspx");
        }
    }
}