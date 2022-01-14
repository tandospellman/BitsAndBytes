using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Configuration;

namespace BitsAndBytes
{
    public partial class Schedule_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage0.Visible = false;
            lblmessage0.Text = "1";
            // dgvAll.Visible = false;
            lblmessage1.Visible = false;
            //txtDate.Visible = false;
           // lblDate.Visible = false;



           

            // txtDate.Text = Format(txtDate.Text, "yyyy-mm-dd");


            int parentID = 0;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                int lastParentID = 0;

                #region GetParentID()
                string sqlSelectLastUserID = "SELECT TOP 1(ParentID) AS LastID FROM Parent ORDER BY parentID DESC";
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sqlSelectLastUserID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        lastParentID = int.Parse(dr["LastID"].ToString());
                    }

                    dr.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetLastID()


                parentID = lastParentID;

                // lblmessage0.Text = lastParentID.ToString();
               
            }


        }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}