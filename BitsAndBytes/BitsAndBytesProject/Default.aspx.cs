using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sign_Click(object sender, EventArgs e)
        {
            Server.Transfer("SignUp.aspx");
        }

        protected void Log_Click(object sender, EventArgs e)
        {
            Server.Transfer("frmLogin.aspx");
        }
    }
}