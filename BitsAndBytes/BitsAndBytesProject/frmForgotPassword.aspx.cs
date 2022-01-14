using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
                var x = handler.GetDetailsForgotPassword(emailAddress.Value);
                if (!String.IsNullOrEmpty(x.userName))
                {

                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(emailAddress.Value);
                mailMessage.From = new MailAddress("BitsAndBytesGroup50@gmail.com@gmail.com");
                mailMessage.IsBodyHtml = true;


                mailMessage.Subject = "LOGIN DETAILS";
                mailMessage.Body = "These are your login details username:"+x.userName+"<br><b>Password:<b>"+x.userPassword+", please make sure to change your pin frequently.";
                mailMessage.Sender = new MailAddress("BitsAndBytesGroup50@gmail.com@gmail.com");
                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Timeout = 10000;
                    smtp.UseDefaultCredentials = false;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new System.Net.NetworkCredential("BitsAndBytesGroup50@gmail.com@gmail.com", "grp50-2021");
                    smtp.Send(mailMessage);

                }

                lblError.Text = "<script>alert('Your Details have been sent via email.');</script>";
            
                }
                }
            catch(Exception ex)
            {
                lblError.Text = "<script>alert('Kokota:"+ex.Message+"');</script>";

            }
        }
    }
}