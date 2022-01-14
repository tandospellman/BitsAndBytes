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
    public partial class SendEmail : System.Web.UI.Page
    {
        
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            sent.Visible = false;
            txtEmail.Text = Session["username"].ToString();

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllMessages", con);
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridmess1.DataSource = ds;
                Gridmess1.DataBind();
               

                int rowcount = Gridmess1.Rows.Count;

                if (rowcount == 0)
                {
                    alertNot.Visible = true;
                }
                else
                {
                    alertNot.Visible = false;
                }

                SqlCommand cd = new SqlCommand("GetTeacherIDByEmail", con);
                cd.CommandType = CommandType.StoredProcedure;
                cd.Parameters.AddWithValue("@email", txtEmail.Text);
                SqlDataAdapter da = new SqlDataAdapter(cd);
                DataTable dta = new DataTable();
                da.Fill(dta);
                 if (dta.Rows.Count> 0)
                {
                    teacherID.Text = dta.Rows[0]["teacherID"].ToString();
                }
                con.Close();
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
                SqlCommand cmd = new SqlCommand("InsertMessage", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@subject", dropUser.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@message", txtMess.Text);
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.Parameters.AddWithValue("@teacherID", Int16.Parse(teacherID.Text));
                cmd.ExecuteNonQuery();

                sent.Visible = true;
                con.Close();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using(SqlConnection con= new SqlConnection(CS))
            {
                con.Open();
                SqlCommand db = new SqlCommand("GetMessageBySubject", con);
                db.CommandType = CommandType.StoredProcedure;
                db.Parameters.AddWithValue("@subject", DropSubject.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(db);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                Gridmess1.DataSource = ds;
                Gridmess1.DataBind();
            }
        }

       
    }
}