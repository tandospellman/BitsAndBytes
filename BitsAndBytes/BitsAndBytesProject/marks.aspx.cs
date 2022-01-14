using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace SignUp
{
    public partial class marks : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BBConS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            mark.Visible = false;
            GridView1.Visible = false;

            BindGrid();

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllMarks", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridMarks.DataSource = ds;
                GridMarks.DataBind();
                con.Close();

                int rowcount = GridMarks.Rows.Count;

                if (rowcount == 0)
                {
                    zeroAlert.Visible = true;
                }
                else
                {
                    zeroAlert.Visible = false;
                }
            }
        }

        protected void LinkDash1_Click(object sender, EventArgs e)
        {
            Server.Transfer("teacherDash.aspx");
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
                SqlCommand dc = new SqlCommand("InsertMarkByPupilID", con);
                dc.CommandType = CommandType.StoredProcedure;
                dc.Parameters.AddWithValue("@actvityID", Int32.Parse(DropDownList1.SelectedItem.Text));
                dc.Parameters.AddWithValue("@comment", TextBox1.Text);
                dc.Parameters.AddWithValue("@percentage",Convert.ToDecimal( TextBox2.Text));
                dc.Parameters.AddWithValue("@result", DropDownList2.SelectedItem.Text);
                dc.Parameters.AddWithValue("@date", DateTime.Now);
                dc.Parameters.AddWithValue("@pupilID", Int32.Parse(dropPupilID.SelectedItem.Text));
                dc.ExecuteNonQuery();
                con.Close();


                mark.Visible = true;
            }
        }

        protected void load1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetAllMarks", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridMarks.DataSource = ds;
                GridMarks.DataBind();
                con.Close();

                int rowcount = GridMarks.Rows.Count;

                if (rowcount == 0)
                {
                    zeroAlert.Visible = true;
                }
                else
                {
                    zeroAlert.Visible = false;
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GetMarksByPupilID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pupilID", SelectPupil.SelectedItem.Text);
                SqlDataAdapter dba = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dba.Fill(ds);
                GridMarks.DataSource = ds;
                GridMarks.DataBind();

                int rowcounts = GridMarks.Rows.Count;

                if (rowcounts == 0)
                {
                    zeroAlert.Visible = true;
                }
                else
                {
                    zeroAlert.Visible = false;
                }
            }
        }

        protected void BindGrid()
        {

            DataTable dt = new DataTable();
            string queryString = "SELECT * FROM [tblMarks]";
            string conn = ConfigurationManager.ConnectionStrings["BBConS"].ToString();
            var table = new DataTable();
            using (SqlConnection sql = new SqlConnection(conn))
            {
                SqlCommand command = new SqlCommand(queryString, sql);
                sql.Open();
                SqlDataAdapter da = new SqlDataAdapter(command);
                da.Fill(table);
                sql.Close();
                da.Dispose();
            }
            dt = table;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Session["Data"] = dt;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string Err = string.Empty;
                DataTable dt = (DataTable)Session["Data"];
                Document pdfDocument = new Document();
                StringBuilder sb = new StringBuilder();
                //pdfDocument Content in HTml Format  
                if (dt.Rows.Count > 0)
                {
                    sb.Append("<html>< head ><title></title></head><body>");
                    string strActualRecords = string.Empty;
                    strActualRecords = "<table style=\"width:100%;font-size: 9pt; font-family: verdana; \" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">";
                    strActualRecords += "<tr><td style=\"width: 5%;white-space: nowrap;\">markID</td><td style=\"width: 5%;\">actvityID</td><td style=\"width: 5%;\">comment</td>" + "<td style=\"width: 5%;\">percentage</td>" + "<td style=\"width: 5%;\">result</td>" + "< td style =\"width: 5%;\">date</td> " + "<td style =\"width: 5%;\">pupilID</td> </tr>";
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        strActualRecords += "<tr>";
                        strActualRecords += "<td style=\"width: 5%;\">" + dt.Rows[i]["markID"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["actvityID"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["comment"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["percentage"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["result"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["date"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["pupilID"].ToString() + " </td>";
                        strActualRecords += "</tr>";
                    }
                    strActualRecords += "</table>";
                    sb.Append(strActualRecords);
                    sb.Append("</body></html>");
                }
                string pdffilename = DateTime.Now.Ticks.ToString() + ".pdf";
                PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDocument, HttpContext.Current.Response.OutputStream);
                pdfDocument.Open();
                String htmlText = sb.ToString();
                StringReader str = new StringReader(htmlText);
                HTMLWorker htmlworker = new HTMLWorker(pdfDocument);
                htmlworker.Parse(str);
                pdfWriter.CloseStream = false;
                pdfDocument.Close();
                //Download Pdf  
                Response.Buffer = true;
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + pdffilename);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDocument);
                Response.Flush();
                Response.End();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}