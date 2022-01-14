using BitsAndBytesProject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject.CenterManager
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
            if (!IsPostBack)
            {
                IDBAccess db = new DBAccess();
                DBHandler handler = new DBHandler(db);
                var x = handler.GetAllCenters();
                if(x.Count>0)
                {
                    drpCenter.DataSource = x;
                    drpCenter.DataTextField = "name";
                    drpCenter.DataValueField = "centreID";
                    drpCenter.DataBind();
                    drpCenter.SelectedIndex = 0;
                    drpCenter_SelectedIndexChanged(sender, EventArgs.Empty);
                }
            }
        }

        protected void rdActivities_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblError.Visible = false;
            lblError.Text = "";
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
                var x = handler.GetStudentInClasses(int.Parse(rdActivities.SelectedValue));
                if (x.Count > 0)
                {
                    chkRegister.DataSource = x;
                    chkRegister.DataTextField = "FullName";
                    chkRegister.DataValueField = "studentID";
                    chkRegister.DataBind();
                }
            }
            catch
            {

            }
         
        }

        protected void drpCenter_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblError.Visible = false;
            lblError.Text = "";
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            var x = handler.GetTosdaysActivities(int.Parse(drpCenter.SelectedValue), DateTime.Now.ToString("yyyy/MM/dd"));
            if (x.Count>0)
            {
                rdActivities.Visible = true;
                rdActivities.DataSource = x;
                rdActivities.DataTextField = "topic";
                rdActivities.DataValueField = "activityID";
                rdActivities.DataBind();
                rdActivities.SelectedIndex = 0;
                rdActivities_SelectedIndexChanged(sender, EventArgs.Empty);
            }
            else
            {
                rdActivities.Visible = false;
                lblError.Visible = true;
                lblError.Text = "<script>alert('No activities have been scheduled for today.')</script>";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            usp_InsertStudentAttendance sa = new usp_InsertStudentAttendance();
            sa.ActivityID = rdActivities.SelectedValue;
            sa.Date = DateTime.Now.ToString("yyyy/MM/dd");
            bool passed = false;
            foreach(ListItem l in chkRegister.Items)
            {
                if (l.Selected==true)
                {
                    try
                    {
                        sa.StudentID = l.Value;
                        passed=  handler.InsertStudentAttendance(sa);
                    }
                    catch
                    {
                        passed = false;
                        break;
                    }
                }
            }
            if(passed)
            {
                lblError.Visible = true;
                lblError.Text = "<script>alert('Register Submitted Successfully')</script>";

            }
        }
    }
}