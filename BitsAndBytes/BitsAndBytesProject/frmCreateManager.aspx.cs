using BitsAndBytesProject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            if(!IsPostBack)
            {
                drpProvinces.DataSource = handler.GetAllProvinces();
                drpProvinces.DataTextField = "provincename";
                drpProvinces.DataValueField = "provinceID";
                drpProvinces.DataBind();
                if(handler.GetAllProvinces().Count>0)
                {
                    drpProvinces.SelectedIndex = 0;
                    drpRegion.DataSource = handler.GetRegions(int.Parse(drpProvinces.SelectedValue));
                    drpRegion.DataTextField = "regionname";
                    drpRegion.DataValueField = "regionID";
                    drpRegion.DataBind();
                }

            }
        }

        protected void btnCreateManager_Click(object sender, EventArgs e)
        {
            if (password.Value != verifyPassword.Value)
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
                    usp_CreateManager uc = new usp_CreateManager();
                    uc.firstname = name.Value;
                    uc.lastname = Surname.Value;
                    uc.phone = phone.Value;
                    uc.email = emailAddress.Value;
                    uc.password = password.Value;
                    uc.regionID = drpRegion.SelectedValue;
                    //uc.coordinatorID = x.coordinatorID;
                    //uc. = LoginID;
                    bool updated = handler.CreateManager(uc);

                    if (updated)
                    {
                        lblError.Text = "<script>alert('Manager has been created successfully.');</script>";
                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = "<script>alert('System down please try again later.');</script>";
                }
            }
        }

        protected void drpProvinces_SelectedIndexChanged(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
            drpRegion.DataTextField = "regionname";
            drpRegion.DataValueField = "regionID";
            drpRegion.DataSource = handler.GetRegions(int.Parse(drpProvinces.SelectedValue));
            drpRegion.DataBind();
            }
            catch
            {
                Response.Write("ingabe likhona ingomso 🤔");
            }
        }
    }
}