using BitsAndBytesProject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            string LoginID = Session["LoginID"].ToString();
            var x = handler.GetCoordinator(int.Parse(LoginID));
            name.Value = x.firstname;
            Surname.Value = x.lastname;
            emailAddress.Value = x.email;
            phone.Value = x.phone;
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            if(password.Value!=verifyPassword.Value)
            {
                Response.Write("<script>alert('Passwords do not match please try again.');</script>");
            }
            else
            {
                IDBAccess db = new DBAccess();
                DBHandler handler = new DBHandler(db);
                string LoginID = Session["LoginID"].ToString();
                var x = handler.GetCoordinator(int.Parse(LoginID));
                try
                {
                    usp_UpdateCoordinator uc = new usp_UpdateCoordinator();
                    uc.firstname = name.Value;
                    uc.email = emailAddress.Value;
                    uc.coordinatorID = x.coordinatorID;
                    uc.lastname = Surname.Value;
                    uc.password = password.Value;
                    uc.phone = phone.Value;
                    uc.LoginID = LoginID;
                    bool updated = handler.UpdateCoordinator(uc);

                    if(updated)
                    {
                        lblError.Text="<script>alert('Your Details have been updated successfully.');</script>";
                    }
                }
                catch(Exception ex)
                {
                    lblError.Text = "<script>alert('System down please try again later.');</script>";
                }
            }
        }
    }
}