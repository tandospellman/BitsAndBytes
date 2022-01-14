using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SignUp
{
    public partial class pupils : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            alrtSuc.Visible = false;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetPupilOut", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridpupils1.DataSource = ds;
                Gridpupils1.DataBind();
                con.Close();

                int numrow = Gridpupils1.Rows.Count;

                if (numrow == 0)
                {
                    notAlert.Visible = true;
                }
                else
                {
                    notAlert.Visible = false;
                }
            }

        }

        protected void LinkBackDash1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetPupilOut", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridpupils1.DataSource = ds;
                Gridpupils1.DataBind();
                con.Close();

                int numrow = Gridpupils1.Rows.Count;

                if (numrow == 0)
                {
                    notAlert.Visible = true;
                }
                else
                {
                    notAlert.Visible = false;
                }
            }
        }

        protected void btnSearchID_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetClassIDByClassName" , con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", DropDownList2.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dba.Fill(dt);
                 if(dt.Rows.Count> 0 )
                {
                    txtClassID.Text = dt.Rows[0]["classID"].ToString();
                }
                con.Close();
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UpdateClassIDbyPupilID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("classID", txtClassID.Text);
                cmd.Parameters.AddWithValue("@pupilID", DropDownList1.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                alrtSuc.Visible = true;

                con.Open();
                SqlCommand cd = new SqlCommand("GetPupilOut", con);
                cd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridpupils1.DataSource = ds;
                Gridpupils1.DataBind();
                con.Close();

                int numrow = Gridpupils1.Rows.Count;

                if (numrow == 0)
                {
                    notAlert.Visible = true;
                }
                else
                {
                    notAlert.Visible = false;
                }
            }
        }
    }
}