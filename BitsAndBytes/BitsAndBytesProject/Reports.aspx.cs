using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace BitsandBytesProject
{
    public partial class Reports : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedValue == "Participation")
            {
                Label1.Text = "Participation";
              
            }
          else if (DropDownList1.SelectedValue == "Programme")
            {
                Label1.Text = "Programme";
            }
            else if (DropDownList1.SelectedValue == "Complaint")
            {
                Label1.Text = "Complaint";
            }
        }
    }
}