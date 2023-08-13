using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace SE256_Brown_Masterbackend.Backend
{
    public partial class ControlPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] != null && Session["LoggedIn"].ToString() == "TRUE")
            {
                //we can stay here ... they are good
            }
            else
            {
                Response.Redirect("~/Backend/Default.aspx");
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Backend/Default.aspx");
        }

        protected void tableChange(object sender, EventArgs e)
        {
            


        }

        protected void changeProducts(object sender, EventArgs e)
        {
            //I want to have default (backend one) page update based on information on control panel page

            
            


            //int testID;

            //I want:
            /*
             *
             table name: testProducts
            testID

             what is usually with a product
            description - text
            manufacturer - nvarchar(80)
            later: price - float


             */

            /*
            string description = "";
            string manufacturer = "";


            /*public string AddARecord()
            {
                string strResult = "";

                SqlConnection Conn = new SqlConnection();

                Conn.ConnectionString = GetConnected();

                //string strSQL = 
                //"INSERT INTO testProducts (description, manufacturer) VALUES (@description, @manufacturer)";

                string strSQL = "INSERT INTO testProducts (description, manufacturer) VALUES (@description, @manufacturer)";

                SqlCommand comm = new SqlCommand();
                comm.CommandText = strSQL;

                comm.Connection = Conn;

                comm.Parameters.AddWithValue("@description", description);
                comm.Parameters.AddWithValue("@manufacturer", manufacturer);



                
            }

            string GetConnected()
            {
                return @"Server=sql.neit.edu\studentSqlServer,4500;Database=SE133_CBrown;User Id=SE133_CBrown;Password=008017698;";
            }

          */


        }
    }
}