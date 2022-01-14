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
    public partial class userProfile : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmail.Text = Session["username"].ToString();

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetTeacherDetailsByEmail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", txtEmail.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        TextBox1.Text = dr[0].ToString();
                        TextBox2.Text = dr[1].ToString();
                        TextBox3.Text = dr[2].ToString();
                        TextBox4.Text = dr[4].ToString();
                        TextBox6.Text = dr[5].ToString();
                        TextBox7.Text = dr[3].ToString();
                        TextBox5.Text = dr[6].ToString();
                        TextBox8.Text = dr[7].ToString();

                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }
    }
}