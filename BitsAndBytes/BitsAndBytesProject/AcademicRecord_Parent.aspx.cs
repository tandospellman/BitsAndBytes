using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data;
using System.IO;

namespace BitsAndBytes
{
    public partial class AcademicRecord_Parent : System.Web.UI.Page

    {

        static string connString = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
        //Record record = new Record();

        protected void Page_Load(object sender, EventArgs e)

        {

            BindGrid();

            btnPDF.Visible = false;

            cmbSelectStudent.Visible = true;
            cmbSubject.Visible = false;
            lblActive.Visible = false;
           lblParent.Visible = false;
            lblStudent.Visible = false;
            lblsearchsubj.Visible = false;

           if (cmbSelectOption.Text != "View All")
            {
                dgvSubject.Visible = false;
                dgvSem2.Visible = false;
                dgvSem1.Visible = false;
                

                dgvAllMarks.Visible = false;

                cmbSelectStudent.Visible = true;

            }
           


            cmbSelectOption.Visible = true;

            int lastStudID = 0,
               studentID = 0;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                #region GetstudentID()
                string sqlSelectStudID = "SELECT (pupilID) AS LastID FROM tblPupil WHERE firstName = '" + cmbSelectStudent.Text + "' ";
                SqlDataReader dr2;
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = sqlSelectStudID;
                cmd2.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {
                        lastStudID = int.Parse(dr2["LastID"].ToString());
                    }

                    dr2.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetStudentID()


                studentID = lastStudID;

                lblStudent.Text = studentID.ToString();
            }

            //int parentID = 0;

          //  string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                int lastParentID = 0;

                #region GetParentID()
                string sqlSelectLastUserID = "SELECT TOP 1(ParentID) AS LastID FROM Parent";
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sqlSelectLastUserID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        lastParentID = int.Parse(dr["LastID"].ToString());
                    }

                    dr.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetLastID()


               // parentID = lastParentID;

               lblParent.Text = lastParentID.ToString(); 

               // lblParent.Text = "1";

              


            }
        }



        protected void BindGrid()
        {
            DataTable dt = new DataTable();
            string queryString = "SELECT [comment], [percentage], [result], [date] FROM [tblMarks] WHERE [pupilID] = '"+ lblStudent.Text  + "' ";
            string conn = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ToString();
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
            dgvAllMarkPrint.DataSource = dt;
            dgvAllMarkPrint.DataBind();
            Session["Data"] = dt;
        }



        protected void cmbSelectOption_SelectedIndexChanged(object sender, EventArgs e)
        {



            if (cmbSelectOption.Text == "View All")
            {
                btnPDF.Visible = true;

                dgvSubject.Visible = false;

                dgvSem2.Visible = false;
                dgvSem1.Visible = false;

                dgvAllMarks.Visible = true;
                cmbSelectStudent.Visible = true;
            }
            else if (cmbSelectOption.Text == "View Semester 1")
            {
                cmbSelectStudent.Visible = true;
                dgvAllMarks.Visible = false;
                dgvSubject.Visible = false;
                dgvSem2.Visible = false;
                dgvSem1.Visible = true;

                cmbSelectStudent.Visible = true;


            }
            else if (cmbSelectOption.Text == "View Semester 2")
            {

                dgvAllMarks.Visible = false;
                dgvSubject.Visible = false;
                dgvSem2.Visible = true;
                dgvSem1.Visible = false;

                cmbSelectStudent.Visible = true;


            }
            else if (cmbSelectOption.Text == "Search By Subject")
            {
                cmbSubject.Visible = true;

                dgvAllMarks.Visible = false;
               
                dgvSem2.Visible = false;
                dgvSem1.Visible = false;

                cmbSelectStudent.Visible = true;

                dgvSubject.Visible = true;

                lblsearchsubj.Visible = true;


            }
        }

      

        protected void cmbSubject_SelectedIndexChanged(object sender, EventArgs e)
        {

            //getactivity ID

            int activID = 1;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
               

                #region GetactivID()
                string sqlSelectID = "SELECT activityID AS activID FROM tblActivity WHERE topic = '" + cmbSubject.Text + "'  ";
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sqlSelectID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        activID = int.Parse(dr["activID"].ToString());
                    }

                    dr.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetactiveID()




                lblActive.Text = activID.ToString();

               // dgvSubject.Visible = true;
                //cmbSelectStudent.Visible = true;
            }

            dgvSubject.Visible = true;
        }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cmbSelectStudent.Visible = false;

            int lastStudID = 0,
              studentID = 0;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                #region GetstudentID()
                string sqlSelectStudID = "SELECT (pupilID) AS LastID FROM tblPupil WHERE firstName = '" + cmbSelectStudent.Text + "' ";
                SqlDataReader dr2;
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = sqlSelectStudID;
                cmd2.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {
                        lastStudID = int.Parse(dr2["LastID"].ToString());
                    }

                    dr2.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetStudentID()


                studentID = lastStudID;

                lblStudent.Text = studentID.ToString();
            }


        }

        protected void DSMarks_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void cmbSelectStudIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPDF_Click(object sender, EventArgs e)
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
                    strActualRecords += "<tr><td style=\"width: 5%;white-space: nowrap;\">comment</td><td style=\"width: 5%;\">percentage</td><td style=\"width: 5%;\">result</td>" + "<td style=\"width: 5%;\">date</td></tr>";
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        strActualRecords += "<tr>";
                        strActualRecords += "<td style=\"width: 5%;\">" + dt.Rows[i]["comment"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["percentage"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["result"].ToString() + "</td>" + "<td style=\"width: 5%;\">" + dt.Rows[i]["date"].ToString() +"</td>";
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