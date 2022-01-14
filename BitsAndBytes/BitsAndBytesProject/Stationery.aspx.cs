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
    public partial class Stationery : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        { 

            

            //using (SqlConnection con = new SqlConnection(CS))
            //{
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("GetAllOrders");
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    SqlDataAdapter dba = new SqlDataAdapter(cmd);
            //    DataSet ds = new DataSet();
            //    dba.Fill(ds);
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //    con.Close();

            //    int rowcount = GridView1.Rows.Count;

            //    if (rowcount==0)
            //    {
            //        nothingAlert.Visible = true;
            //    }
            //    else
            //    {
            //        nothingAlert.Visible = false;
            //    }
            //}
        }

        protected void LinkDash1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllOrders");
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();

                int rowcount = GridView1.Rows.Count;

                if (rowcount == 0)
                {
                    nothingAlert.Visible = true;
                }
                else
                {
                    nothingAlert.Visible = false;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                if(DropStatus.SelectedItem.Text== "Cancel Order")
                {
                    SqlCommand cd = new SqlCommand("UpdateOrderStatusToCancel", con);
                    cd.CommandType = CommandType.StoredProcedure;
                    cd.ExecuteNonQuery();
                }

                if(DropStatus.SelectedItem.Text== "Wrong Order")
                {
                    SqlCommand cd = new SqlCommand("UpdateOrderStatusToWrongOrder", con);
                    cd.CommandType = CommandType.StoredProcedure;
                    cd.ExecuteNonQuery();
                }

                con.Close();
            }
        }
    }
}