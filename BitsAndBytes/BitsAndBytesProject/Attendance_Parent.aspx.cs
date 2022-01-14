using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Data;

namespace BitsAndBytes
{
    public partial class Attendance_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblmessage3.Visible = false;

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

                lblmessage3.Text = studentID.ToString();
            }


            

        }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SickNote_Parent.aspx");
        }
    }
}