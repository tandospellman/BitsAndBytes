using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytes
{
    public partial class Dashboard_Parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnApp_Click(object sender, EventArgs e)
        {

            Response.Redirect("Applications_Parent.aspx");

        }

        protected void btnAcad_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcademicRecord_Parent.aspx");
        }

        protected void btnSched_Click(object sender, EventArgs e)
        {
            Response.Redirect("Schedule_Parent.aspx");
        }

        protected void btnNutr_Click(object sender, EventArgs e)
        {
            Response.Redirect("Medicine_Parent.aspx");
        }

        protected void btnCom_Click(object sender, EventArgs e)
        {
            Response.Redirect("Complaints_Parent.aspx");
        }

        protected void btnInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_Parent.aspx");
        }

        protected void btnSick_Click(object sender, EventArgs e)
        {
            Response.Redirect("Attendance_Parent.aspx");
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMessages_Parent.aspx");
        }
    }
}