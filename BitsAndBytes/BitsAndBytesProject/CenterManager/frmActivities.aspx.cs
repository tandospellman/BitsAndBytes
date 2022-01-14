using BitsAndBytesProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject.CenterManager
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtActivityDate.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));

            if(!IsPostBack)
            {
                IDBAccess db = new DBAccess();
                DBHandler handler = new DBHandler(db);
                drpActivity.DataSource = handler.GetAllActivities();
                drpActivity.DataTextField = "topic";
                drpActivity.DataValueField = "activityID";
                drpActivity.DataBind();
                drpCenter.DataSource = handler.GetAllCenters();
                drpCenter.DataTextField = "name";
                drpCenter.DataValueField = "centreID";
                drpCenter.DataBind();
                LoadTable();
              
            }
        }
        public void LoadTable()
        {
        try
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            var y = handler.GetUpcomingActivities(DateTime.Today.ToString());
                tblActivities.Rows.Clear();
                if (y.Count > 0)
            {
                    TableHeaderRow thr = new TableHeaderRow();
                    TableHeaderCell thc1 = new TableHeaderCell();
                    TableHeaderCell thc2 = new TableHeaderCell();
                    TableHeaderCell thc3 = new TableHeaderCell();
                    thc1.Text = "Center Name";
                    thc2.Text = "Date";
                    thc3.Text = "Activity Name";
                    thr.Controls.Add(thc1);
                    thr.Controls.Add(thc2);
                    thr.Controls.Add(thc3);
                    tblActivities.Controls.Add(thr);

                foreach (var x in y)
                {
                    TableRow r = new TableRow();
                    TableCell c1 = new TableCell();
                    TableCell c2 = new TableCell();
                    TableCell c3 = new TableCell();
                    c1.Text = x.name;
                    c2.Text = x.date;
                    c3.Text = x.topic;
                    r.Controls.Add(c1);
                    r.Controls.Add(c2);
                    r.Controls.Add(c3);
                    tblActivities.Controls.Add(r);
                }
                tblActivities.DataBind();
            }
            }
            catch
            {

            }
        }
        protected void btnInsertActivity_Click(object sender, EventArgs e)
        {
            Schedule s = new Schedule();
            s.activityID = drpActivity.SelectedValue;
            s.date = txtActivityDate.Text;
            s.centreID = drpCenter.SelectedValue;
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
                bool success = handler.InsertSchedule(s);
                if(success)
                {
                    lblError.Text = "<script>alert('Schedule Inserted Successfully')</script>";
                    LoadTable();
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }
    }
}