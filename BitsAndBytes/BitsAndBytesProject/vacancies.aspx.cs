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
    public partial class vacancies : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetCentreAndSuburb", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                gridCentres.DataSource = ds;
                gridCentres.DataBind();
                con.Close();

                int rowcount = gridCentres.Rows.Count;

                if (rowcount == 0)
                {
                    showList.Visible = true;
                }
                else
                {
                    showList.Visible = false;
                }

            }


            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetCentreNameandClasses", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridNumber.DataSource = ds;
                GridNumber.DataBind();
                con.Close();

               
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("SignUp.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("default.aspx");
        }
    }
}