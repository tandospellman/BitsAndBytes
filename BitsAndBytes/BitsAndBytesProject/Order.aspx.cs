using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SignUp
{
    public partial class Order : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            alert1.Visible = false;
            txtTeacherID.Visible = false;
            txtEmail.Text = Session["username"].ToString();

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cd = new SqlCommand("GetTeacherIDByEmail", con);
                cd.CommandType = CommandType.StoredProcedure;
                cd.Parameters.AddWithValue("@email", txtEmail.Text);
                SqlDataAdapter da = new SqlDataAdapter(cd);
                DataTable dta = new DataTable();
                da.Fill(dta);
                if (dta.Rows.Count > 0)
                {
                    txtTeacherID.Text = dta.Rows[0]["teacherID"].ToString();
                }
                con.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void btnSee_Click(object sender, EventArgs e)
        {
            Server.Transfer("Stationery.aspx");
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cd = new SqlCommand("InsertStationeryReq", con);
                cd.CommandType = CommandType.StoredProcedure;
                cd.Parameters.AddWithValue("@date", DateTime.Now);
                cd.Parameters.AddWithValue("@description", TextBox1.Text);
                cd.Parameters.AddWithValue("@orderStatus", "Completed");
                cd.Parameters.AddWithValue("@deliveryStatus", "Awaiting Pickup");
                cd.Parameters.AddWithValue("@teacherID", Int16.Parse(txtTeacherID.Text));
                cd.ExecuteNonQuery();


                alert1.Visible = true;
                con.Close();
            }
        }
    }
}