using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

namespace BitsAndBytes
{
    public partial class Applications_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = true;
            fsAddress.Visible = false;
            fsmedical.Visible = false;

        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
            int x = 0;

            string firstName = txtFirstName.Text,
                          lastname = txtSurname.Text,
                          status = "Pending";
            int coodinatorID = 1,
                parentID = 0;


            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                int lastParentID = 0, lastCoID = 0;

                #region GetParentID()
                string sqlSelectLastUserID = "SELECT TOP 1(ParentID) AS LastID FROM Parent";
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
               // parentID = 1;

                #region GetCoordID()
                string sqlSelectLastCoordID = "SELECT TOP 1(coordinatorID) AS LastID FROM RegionalCoOrdinator ORDER BY coordinatorID DESC";
                SqlDataReader dr2;
                SqlCommand cmd2 = new SqlCommand();
                cmd.CommandText = sqlSelectLastCoordID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {
                        lastCoID = int.Parse(dr2["LastID"].ToString());
                    }

                    dr2.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetLastID()


                coodinatorID = lastCoID;

                int lastappID = 0,
                    newappID = 0;

                 #region GetLastAppID()
                string sqlSelectLastAppID = "SELECT TOP 1(Applicationno) AS LastID FROM Application ORDER BY applicationno DESC";
                SqlDataReader dr3;
                SqlCommand cmd3 = new SqlCommand();
                cmd.CommandText = sqlSelectLastAppID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr3 = cmd3.ExecuteReader();
                    
                    while (dr3.Read())
                    {
                        lastappID = int.Parse(dr3["LastID"].ToString());
                    }

                    dr3.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetLastID()

                
                newappID = lastappID + 1;
                



                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspCreateStudentApp", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;

                //dbCmd.Parameters.AddWithValue("@firstName", firstName);
                //dbCmd.Parameters.AddWithValue("@lastName", lastname);

               // dbCmd.Parameters.AddWithValue("@applicationno", newappID);

                dbCmd.Parameters.AddWithValue("@parentID", parentID);

                dbCmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());

                dbCmd.Parameters.AddWithValue("@status", status);

                dbCmd.Parameters.AddWithValue("@coordinatorID", coodinatorID);


                dbCmd.ExecuteNonQuery();
                dbConn.Close();

                fsAddress.Visible = true;
                fsPersonalDetails.Visible = false;
                lblRegistrationSuccess.Text = "Successfully Registration!";
                /*

                try
                {
                    dbConn.Open();
                    x = dbCmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }

                if (x != 0)
                {

                    fsAddress.Visible = true;
                    fsPersonalDetails.Visible = false;
                    lblRegistrationSuccess.Text = "Successfully Registration!";
                }
                else
                {
                   fsAddress.Visible = true;
                    fsPersonalDetails.Visible = false;
                    lblRegistrationSuccess.Text = "Registration Failed!";

                }
                */


            }


        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = false;
            fsAddress.Visible = false;
            fsmedical.Visible = true;
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = false;
            fsAddress.Visible = true;
            fsmedical.Visible = false;
        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = true;
            fsAddress.Visible = false;
            fsmedical.Visible = false;
        }

        protected void btnPrevious2_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = false;
            fsAddress.Visible = false;
            fsmedical.Visible = true;
         
        }

    }
}