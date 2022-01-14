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
    public partial class medHistory : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cm = new SqlCommand("GetMedicals", con);
                cm.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cm);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                gridMed.DataSource = ds;
                gridMed.DataBind();

                int rowcount = gridMed.Rows.Count;

                if (rowcount == 0)
                {
                    alertList.Visible = true;
                }
                else
                {
                    alertList.Visible = false;
                }
                con.Close();
            }
        }

        protected void linkBackTo_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cm = new SqlCommand("GetMedicalsByPupilID", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@pupilID", SelectPupilID.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cm);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                gridMed.DataSource = ds;
                gridMed.DataBind();

                int rowcount = gridMed.Rows.Count;

                if (rowcount == 0)
                {
                    alertList.Visible = true;
                }
                else
                {
                    alertList.Visible = false;
                }
                con.Close();
            }
        }
    }
}