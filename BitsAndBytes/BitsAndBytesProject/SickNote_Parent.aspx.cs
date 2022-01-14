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
    public partial class SickNote_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage0.Visible = false;
            cmbStudent.Visible = true;
            lblmessage1.Visible = false;






        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

     

        protected void chkReceipt_CheckedChanged(object sender, EventArgs e)
        {

        }
        
        public string SqlConnection(string queryString)
        {
            using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString))
            using (var cmd = conn.CreateCommand())
            {
                conn.Open();
                cmd.CommandText = queryString;
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                       
                       // lblmessage1.Text = SqlConnection("SELECT pupilID FROM tblPupil WHERE firstname = "+ cmbSelectStudent.Text +"");
                        
                        return reader.GetString(0);
                    }
                }
                return null;
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            int parentID = 0;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                int lastParentID = 0;

                #region GetParentID()
                string sqlSelectLastUserID = "SELECT TOP 1(ParentID) AS LastID FROM Parent ";
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

                lblmessage0.Text = lastParentID.ToString();

                int attendanceID = 0,
                    lastAttendID = 0;

                #region GetAttendance()
                string sqlSelectAttendID = "SELECT TOP 1(attendanceID) AS LastID FROM Attendance ORDER BY attendanceID DESC";
                SqlDataReader dr2;
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = sqlSelectAttendID;
                cmd2.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {
                        lastAttendID = int.Parse(dr2["LastID"].ToString());
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
                #endregion GetAttendance()

                attendanceID = lastAttendID + 1;

                int studentID = 0,
                    laststudID =0;

                #region GetstudentID()
                string sqlSelectStudentID = "SELECT TOP 1(studentID) AS LastID FROM Student ORDER BY studentID DESC";
                SqlDataReader dr3;
                SqlCommand cmd3 = new SqlCommand();
                cmd3.CommandText = sqlSelectStudentID;
                cmd3.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr3 = cmd3.ExecuteReader();

                    while (dr3.Read())
                    {
                        laststudID = int.Parse(dr3["LastID"].ToString());
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
                #endregion GetstudentId()

                studentID = laststudID;


                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspUploadSickNote", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;

            

                dbCmd.Parameters.AddWithValue("@attendanceID", attendanceID);
                dbCmd.Parameters.AddWithValue("@comment", txtDocEmail.Text);
                dbCmd.Parameters.AddWithValue("@sicknotedescription", txtDocname.Text);
                dbCmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
                dbCmd.Parameters.AddWithValue("@studentID", studentID);

                dbCmd.ExecuteNonQuery();
                dbConn.Close();




            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            string dateInput = cmbAttendDate.Text;
            string comment = "Sick";
            var parsedDate = DateTime.Parse(dateInput);


            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspUpdateAttendance", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;
             



                dbCmd.Parameters.AddWithValue("@comment", comment);
                dbCmd.Parameters.AddWithValue("@date",parsedDate);

                lblmessage.Text = "Uploaded Successfull!";

                dbCmd.ExecuteNonQuery();
                dbConn.Close();

            }
            
        }

        protected void cmbSelectStudIndexChanged(object sender, EventArgs e)
        {
           // cmbStudent.Visible = true;
        }

        protected void cmbAttendDate_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            fsDetails.Visible = false;
            fsFiles.Visible = true ;
            
        }

       

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            fsDetails.Visible = true;
            fsFiles.Visible = false;
            
        }

     
    }
}