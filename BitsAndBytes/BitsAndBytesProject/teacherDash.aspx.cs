using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SignUp
{
    public partial class teacherDash : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            lblTeacher.Text = Session["username"].ToString();

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetTeacherIDByEmail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", lblTeacher.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Session["teacherID"] = dr.GetValue(0).ToString();
                    }
                }
                con.Close();

            }

        }

        protected void linkProfile_Click(object sender, EventArgs e)
        {
            Server.Transfer("userProfile.aspx");
        }

        protected void linkClass_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddClass.aspx");
        }

        protected void linkStat_Click(object sender, EventArgs e)
        {
            Server.Transfer("Order.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("SendEmail.aspx");
        }

        protected void linkList_Click(object sender, EventArgs e)
        {
            Server.Transfer("medHistory.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Classes.aspx");
        }

        protected void linkMarks_Click(object sender, EventArgs e)
        {
            Server.Transfer("marks.aspx");
        }

        protected void linkAttendance_Click(object sender, EventArgs e)
        {
            Server.Transfer("attendance.aspx");
        }

        protected void linkActivities_Click(object sender, EventArgs e)
        {
            Server.Transfer("activity.aspx");
        }

        protected void Linkpupil_Click(object sender, EventArgs e)
        {
            Server.Transfer("pupils.aspx");
        }
    }
}