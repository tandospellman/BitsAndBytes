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
    public partial class attendance : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Div1.Visible = false;
            report.Visible = false;

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllAttendance", con);
                cmd.CommandType = CommandType.StoredProcedure;
               
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridAtt.DataSource = ds;
                GridAtt.DataBind();
                con.Close();

                int rowcount = GridAtt.Rows.Count;

                if (rowcount == 0)
                {
                    notAlert.Visible = true;
                }
                else
                {
                    notAlert.Visible = false;
                }

            }
        }

        protected void Linkback1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void add2_Click(object sender, EventArgs e)
        {
            report.Visible = true;
            report.Focus();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            report.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cm = new SqlCommand("InsertAttendanceByPupilID", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@comment", DropDownList1.SelectedItem.Text);
                cm.Parameters.AddWithValue("@date", DateTime.Now);
                cm.Parameters.AddWithValue("@pupilID", Int32.Parse(DropDownList2.SelectedItem.Text));
                cm.ExecuteNonQuery();
                con.Close();
                report.Visible = true;
                Div1.Visible = true;
                Div1.Focus();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllAttendance", con);
                cmd.CommandType = CommandType.StoredProcedure;              
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridAtt.DataSource = ds;
                GridAtt.DataBind();
                con.Close();

                int rowcount = GridAtt.Rows.Count;

                if (rowcount == 0)
                {
                    notAlert.Visible = true;
                }
                else
                {
                    notAlert.Visible = false;
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAttendanceByPupilID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pupilID", DropSubject.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridAtt.DataSource = ds;
                GridAtt.DataBind();
                con.Close();

                int rowcount = GridAtt.Rows.Count;

                if (rowcount == 0)
                {
                    notAlert.Visible = true;
                }
                else
                {
                    notAlert.Visible = false;
                }

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }
    }
}