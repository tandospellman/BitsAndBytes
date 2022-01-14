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
    public partial class Complaints_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // btnView0.Visible = false;
            lblmessage0.Visible = false;

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
            }

            }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            btnView0.Visible = true;

            string message = txtMessage.Text,
                   complaintType = txtComplaintT.Text;
            int complaintID = 0,
                studentID = 0;


            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                int lastComplaintID = 0;

                #region GetcomplaintID()
                string sqlSelectLastUserID = "SELECT TOP 1(complaintID) AS LastID FROM Complaint ORDER BY complaintID DESC";
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
                        lastComplaintID = int.Parse(dr["LastID"].ToString());
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
                #endregion GetComplaintID()


                complaintID = lastComplaintID;

                int lastStudID = 0;

                #region GetstudentID()
                string sqlSelectStudID = "SELECT (studentID) AS LastID FROM Student WHERE (firstname = cmdSelectStudent.Text)";
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




                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspCreateComplaint", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;


                dbCmd.Parameters.AddWithValue("@complaintID", complaintID+1);

                dbCmd.Parameters.AddWithValue("@studentID", studentID);

                dbCmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());

                dbCmd.Parameters.AddWithValue("@complaintType", complaintType);

                dbCmd.Parameters.AddWithValue("@message", message);



                dbCmd.ExecuteNonQuery();
                dbConn.Close();

            }
        }

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMessages_Parent.aspx");
        }
    }
}