using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;


namespace BitsandBytesProject
{
    public partial class AddCoordinator : System.Web.UI.Page
    {
        BusinessLogicLayer bll = new BusinessLogicLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Form.DefaultFocus = firstname.Text;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string userID = "";
            User user = new User(email.Text.ToString(), Password.Text.ToString(), Type.Text.ToString());
            int x = bll.InsertUser(user, ref userID);


            if (x > 0)
            {
                int txtphone = int.Parse("contact.Text");
                ReginalCoOrdinator rc = new ReginalCoOrdinator(firstname.Text, lastname.Text, email.Text, txtphone);
                int c = bll.InsertCoordinator(rc);
                if (c > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Reginal Coordinator Inserted Sucessfully')", true);


                    Response.Redirect("ViewCoordinator.aspx");
                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' No Coordinator Inserted')", true);
            }
        }
    }
}