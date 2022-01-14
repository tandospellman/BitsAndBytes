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
    public partial class SignUp : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;

            
        }

       

       

        protected void submit_Click(object sender, EventArgs e)
        {
            //validating
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("InsertTeacherDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@userPassword", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@userType", DropUserType.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@firstname", names.Text);
                    cmd.Parameters.AddWithValue("@lastname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@idnumber", idnumber.Text);
                    cmd.Parameters.AddWithValue("@gender", rbGender.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@phone", phone.Text);
                    cmd.Parameters.AddWithValue("@emailaddress", email.Text);
                    cmd.Parameters.AddWithValue("@qualification", quali.Text);
                    cmd.Parameters.AddWithValue("@date", DateTime.Now);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Server.Transfer("Confirmation.aspx");
                }

            }
            catch
            {
                if (txtUsername.Text.Trim() == string.Empty)
                    Label7.Visible = true;
                if (txtpassword.Text.Trim() != txtPass1.Text.Trim())
                {
                    Label8.Visible = true;
                    Label9.Visible = true;
                }
                if (names.Text.Trim() == string.Empty)
                    Label1.Visible = true;
                if (TextBox1.Text.Trim() == string.Empty)
                    Label2.Visible = true;
                if (idnumber.Text.Trim() == string.Empty)
                    Label3.Visible = true;
                if (phone.Text.Trim() == string.Empty)
                    Label4.Visible = true;
                if (email.Text.Trim() == string.Empty)
                    Label5.Visible = true;
            }
        }

        protected void backs_Click(object sender, EventArgs e)
        {
            Server.Transfer("vacancies.aspx");
        }
    }
}