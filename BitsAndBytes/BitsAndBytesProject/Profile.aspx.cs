using System;
using System.Data;
using BLL;
using DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsandBytesProject
{
    public partial class Profile : System.Web.UI.Page
    {
        BusinessLogicLayer bll = new BusinessLogicLayer();
        [System.Web.Services.WebMethod]
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["liaisonID"] == null || Session["UserID"] == null || Session["firstname"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }

            int userID = int.Parse(Session["liaisonID"].ToString());
            int liaisonID = int.Parse(Session["liaisonID"].ToString());
            ProvincialLiaison  pl = new ProvincialLiaison(liaisonID);
            if (!IsPostBack)
            {
                //bll.GetProvincialLiaison();
                bll.GetUserDetailsByID(userID);
                txtfirstname.Text = bll.GetProvincialLiaison(pl).Rows[0]["firstName"].ToString();
                txtlastname.Text = bll.GetProvincialLiaison(pl).Rows[0]["lastName"].ToString();
                cmbprovince.Text = bll.GetProvincialLiaison(pl).Rows[0]["provinceID"].ToString();
                txtemail.Text = bll.GetUserDetailsByID(userID).Rows[0]["email"].ToString();
                contact.Text = bll.GetUserDetailsByID(userID).Rows[0]["phone"].ToString();

            }

            btnUpdate.Enabled = false;
            btnCancel.Enabled = false;
            txtlastname.Enabled = false;
            cmbprovince.Enabled = false;
            txtfirstname.Enabled = false;
            contact.Enabled = false;
            txtemail.Enabled = false;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            btnUpdate.Enabled = true;
            btnCancel.Enabled = true;
            cmbprovince.Enabled = true;
            txtlastname.Enabled = true;
            txtfirstname.Enabled = true;
            contact.Enabled = true;
           
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int userID = int.Parse(Session["UserID"].ToString());
            int liaisonID = int.Parse(Session["liaisonID"].ToString());
            int txtphone = int.Parse("contact.Text"); 

            ProvincialLiaison pl = new ProvincialLiaison(txtfirstname.Text, txtlastname.Text, cmbprovince.SelectedValue.ToString(),txtphone);
            User user = new User(userID, txtemail.Text);
            int x = bll.UpdateLiaison(pl);
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Details updated Sucessfully')", true);
                Response.Redirect(Request.RawUrl);
                btnUpdate.Enabled = false;
                btnCancel.Enabled = false;
                btnUpdate.Enabled = false;
                btnCancel.Enabled = false;
                txtlastname.Enabled = false;
                cmbprovince.Enabled = false;
                txtfirstname.Enabled = false;
                contact.Enabled = false;
                txtemail.Enabled = false;
            }
        }
    }
}
      