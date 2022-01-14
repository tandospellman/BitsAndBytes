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
    public partial class Nutrition_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStudent.Visible = false;
            lblStudSuccess.Visible = false;

            int lastStudID = 0,
              studentID = 0;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                #region GetstudentID()
                string sqlSelectStudID = "SELECT (pupilID) AS LastID FROM tblPupil WHERE firstName = '" + cmbSelectStudent.Text + "' ";
                SqlDataReader dr2;
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = sqlSelectStudID;
                cmd2.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {
                        lastStudID = int.Parse(dr2["LastID"].ToString());
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
                #endregion GetStudentID()


                studentID = lastStudID;

                lblStudent.Text = studentID.ToString();
            }


            fsPersonalDetails.Visible = true;
            fsMedicine.Visible = false;
            fsContact.Visible = false;
        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = false;
            fsMedicine.Visible = true;
            fsContact.Visible = false;
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = false;
            fsMedicine.Visible = false;
            fsContact.Visible = true;
        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = true;
            fsMedicine.Visible = false;
            fsContact.Visible = false;
        }

        protected void btnPrevious2_Click(object sender, EventArgs e)
        {
            fsPersonalDetails.Visible = false;
            fsMedicine.Visible = true;
            fsContact.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            int x = 0;

            


            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
               

               
                int lastmedID = 0,
                    newmedID = 0;

                #region GetLastmedID()
                string sqlSelectLastAppID = "SELECT TOP 1(medicalID) AS LastID FROM tblMedicine ORDER BY medicalID DESC";
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sqlSelectLastAppID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        lastmedID = int.Parse(dr["LastID"].ToString());
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
                #endregion GetLastmedID()


                newmedID = lastmedID + 1;




                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspCreateMedicineChart", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;

                
              

                dbCmd.Parameters.AddWithValue("@medicalID", newmedID);

                dbCmd.Parameters.AddWithValue("@pupilID",lblStudent.Text);

                dbCmd.Parameters.AddWithValue("@medicineName", txtNameMedi.Text);

                dbCmd.Parameters.AddWithValue("@instructions", txtInstruct.Text);

                dbCmd.Parameters.AddWithValue("@frequency", txtfreq.Text);

                dbCmd.Parameters.AddWithValue("@date", txtDate.Text);

                dbCmd.Parameters.AddWithValue("@emergencyContact", txtContact.Text);

                dbCmd.Parameters.AddWithValue("@dosage", txtdos.Text);






                dbCmd.ExecuteNonQuery();
                dbConn.Close();

                fsContact.Visible = true;
                fsPersonalDetails.Visible = false;
                lblStudSuccess.Visible = true;
                lblStudSuccess.Text = "Instructions Sent!";

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
                     fsContact.Visible = true;
                     fsPersonalDetails.Visible = false;
                     lblStudSuccess.Visible = true;
                     lblStudSuccess.Text = "Successfully Registration!";
                 }
                 else
                 {
                     fsContact.Visible = true;
                     fsPersonalDetails.Visible = false;
                     lblStudSuccess.Visible = true;
                     lblStudSuccess.Text = "Registration Failed!";

                 }
               */


            }


        }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}