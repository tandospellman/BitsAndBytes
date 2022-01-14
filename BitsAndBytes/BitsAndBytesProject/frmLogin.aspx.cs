using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                IDBAccess db = new DBAccess();
                DBHandler handler = new DBHandler(db);
                var e45 = handler.GetLoginDetails(username.Value, password.Value);
                if (e45!=null)
                {
                    var x = handler.GetLoginDetails(username.Value, password.Value);
                    if (x.userType=="Coordinator")
                    {
                        Session["LoginID"] = x.userID;
                        Response.Redirect("frmCoordinatorDashboard");
                    }
                    else if(x.userType=="Manager")
                    {
                        Response.Redirect("CenterManager/frmCenterManagerLanding.aspx");
                    }
                    else if (x.userType == "Parent")
                    {
                        Response.Redirect("Dashboard_Parent.aspx");
                    }
                    else if (x.userType == "Teacher")
                    {
                        Session["username"] = username.Value;
                        Response.Redirect("teacherDash.aspx");

                       
                    }

                    else if (x.userType == "Liason")
                    {
                        Session["Name"] = username.Value;
                        Response.Redirect("Welcom.aspx");

                    }


                }
                else
                {
                    lblError.Text = "Incorrect Username or Password";
                }
            }
            catch(Exception ex)
            {
                lblError.Text = "Incorrect Username or Password";
            }
        }
    }
}