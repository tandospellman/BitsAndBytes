using BitsAndBytesProject.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace BitsAndBytesProject
{
    /// <summary>
    /// Summary description for ClientInvoices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ReportService : System.Web.Services.WebService
    {

        // public int ClientID { get; set; }
        [WebMethod(EnableSession = true)]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void GetAttendanceData()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            List<spReportTable> inv = new List<spReportTable>();
            using (SqlConnection con = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand("spReportTable");
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    spReportTable iv = new spReportTable();
                    //iv.RequestID = Convert.ToInt32(rdr["RequestID"].ToString());
                    //iv.PatientID = Convert.ToInt32(rdr["PatientID"].ToString());
                    iv.studentID = Convert.ToString(rdr["studentID"].ToString());
                    iv.firstname = Convert.ToString(rdr["firstname"].ToString());
                    iv.surname = Convert.ToString(rdr["surname"].ToString());
                    iv.activityID = Convert.ToString(rdr["activityID"].ToString());
                    iv.topic = Convert.ToString(rdr["topic"].ToString());
                    iv.total = Convert.ToString(rdr["total"].ToString());
                    inv.Add(iv);
                }
                JavaScriptSerializer js = new JavaScriptSerializer();
                Context.Response.Write(js.Serialize(inv));
                con.Close();
            }
        }
    }
}
