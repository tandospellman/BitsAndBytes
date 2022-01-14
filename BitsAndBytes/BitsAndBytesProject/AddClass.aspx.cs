using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SignUp
{
    public partial class AddClass : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllClasses", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Grid1.DataSource = ds;
                Grid1.DataBind();
                con.Close();
            }

            alert1.Visible = false;

            alertNot.Visible = false;

        }

        protected void gridClasses_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void regi_Click(object sender, EventArgs e)
        {
            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand("InsertNewClass",dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;
                dbCmd.Parameters.AddWithValue("@ageGroup", ageGroup.Text);
                dbCmd.Parameters.AddWithValue("@name", TextBox1.Text);
                dbCmd.Parameters.AddWithValue("@datereg", DateTime.Now);
                dbCmd.Parameters.AddWithValue("@centreID",Int32.Parse( txtCentreID.Text));
                dbCmd.ExecuteNonQuery();
                dbConn.Close();

                alert1.Visible = true;
            }
        }

        protected void btnRef_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllClasses", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Grid1.DataSource = ds;
                Grid1.DataBind();
                con.Close();
            }
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetClassesByCentreID", con);
                cmd.CommandType=CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@centreID", selectCentre.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Grid1.DataSource = ds;
                Grid1.DataBind();
                con.Close();
            }

            alert1.Visible = false;

            alertNot.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cm = new SqlCommand("GetCentreIDByName", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@name", selectCentre.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cm);
                DataTable dt = new DataTable();
                dba.Fill(dt);
                if (dt.Rows.Count>0)
                {
                    txtCentreID.Text= dt.Rows[0]["centreID"].ToString();
                }
            }
        }
    }

 }
    