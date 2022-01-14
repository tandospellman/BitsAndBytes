using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Data;


namespace BitsAndBytes
{
    public partial class ViewMessages_Parent : System.Web.UI.Page
    {
        static string connString = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);

        protected void Page_Load(object sender, EventArgs e)
        {
          

           

        }

        public string ValueCheck(string value)
        {
            string result = "";

            if (value == "&nbsp;")
                result = "";
            else
                result = value;

            return result;
        }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

            string query = "SELECT message FROM tblMessage WHERE subject = 'Parents' AND date = '" + cmbDate.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {


                    //  txtTeacherName.Text = ValueCheck(dr["firstname"].ToString());
                    txtMessage.Text = ValueCheck(dr["message"].ToString());




                }

            }
            catch (Exception err)
            {

            }
            finally
            {
                con.Close();
            }


            string query2 = "SELECT firstname FROM tblTeacher WHERE teacherID = '3' ";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlDataReader dr2;

            try
            {
                con.Open();
                dr2 = cmd2.ExecuteReader();

                while (dr2.Read())
                {


                    //  txtTeacherName.Text = ValueCheck(dr["firstname"].ToString());
                    txtTeacherName.Text = ValueCheck(dr2["firstName"].ToString());




                }

            }
            catch (Exception err)
            {

            }
            finally
            {
                con.Close();
            }


        }
    }
}