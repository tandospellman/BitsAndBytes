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
    public partial class activity : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            sent.Visible = false;

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetClassActivityByClassID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@classID", '1');
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridactive1.DataSource = ds;
                Gridactive1.DataBind();
                con.Close();

                int numrow = Gridactive1.Rows.Count;

                if (numrow == 0)
                {
                    alertNot.Visible = true;
                }
                else
                {
                    alertNot.Visible = false;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cd = new SqlCommand("InsertClassActivity", con);
                cd.CommandType = CommandType.StoredProcedure;
                cd.Parameters.AddWithValue("@date", DateTime.Now);
                cd.Parameters.AddWithValue("@topic", txtTpoc.Text);
                cd.Parameters.AddWithValue("@classID", Int32.Parse(classID.Text));
                cd.ExecuteNonQuery();
                con.Close();

                sent.Visible = true;
            } 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetClassActivityByClassID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@classID", '1');
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridactive1.DataSource = ds;
                Gridactive1.DataBind();
                con.Close();

                int numrow = Gridactive1.Rows.Count;

                if (numrow == 0)
                {
                    alertNot.Visible = true;
                }
                else
                {
                    alertNot.Visible = false;
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cm = new SqlCommand("GetClassIDByClassName", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@name", dropclassName.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cm);
                DataTable dt = new DataTable();
                dba.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    classID.Text = dt.Rows[0]["classID"].ToString();
                }
            }
        }
    }
}