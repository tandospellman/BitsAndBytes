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
    public partial class Classes : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetPupilByClassID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@classID", '1');
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                gridClassList.DataSource = ds;
                gridClassList.DataBind();
                con.Close();

                int rowcount = gridClassList.Rows.Count;

                if (rowcount == 0)
                {
                    showList.Visible = true;
                }
                else
                {
                    showList.Visible = false;
                }

                danger.Visible = false;
                update.Visible = false;
            }
        }

        protected void linkBack_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            update.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            danger.Visible = true;
            update.Visible = true;
        }

        protected void btnCan_Click(object sender, EventArgs e)
        {

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cd = new SqlCommand("UpdateClassIDToNull", con);
                cd.CommandType = CommandType.StoredProcedure;
                cd.Parameters.AddWithValue("@pupilID", DropDownList2.SelectedItem.Text);
                cd.ExecuteNonQuery();
                con.Close();

            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetPupilByClassID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@classID", '1');
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                gridClassList.DataSource = ds;
                gridClassList.DataBind();
                con.Close();

                int rowcount = gridClassList.Rows.Count;

                if (rowcount == 0)
                {
                    showList.Visible = true;
                }
                else
                {
                    showList.Visible = false;
                }
            }
        }
    }
}