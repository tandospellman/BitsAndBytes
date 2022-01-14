using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject.CenterManager
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.To.Add(txtToEmail.Text);
                    mailMessage.From = new MailAddress("BitsAndBytesGroup50@gmail.com");
                    mailMessage.IsBodyHtml = true;
                    if (flAttachments.HasFile)
                    {
                        HttpFileCollection fc = Request.Files;
                        for (int i = 0; i < fc.Count; i++)
                        {
                            HttpPostedFile pf = fc[i];
                            Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                            mailMessage.Attachments.Add(attach);
                        }
                    }

                    mailMessage.Subject = txtSubject.Text;
                    mailMessage.Body = txtMessage.Text;
                    mailMessage.Sender = new MailAddress("BitsAndBytesGroup50@gmail.com");
                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Timeout = 10000;
                        smtp.UseDefaultCredentials = false;
                        smtp.EnableSsl = true;
                        smtp.Credentials = new System.Net.NetworkCredential("BitsAndBytesGroup50@gmail.com", "grp50-2021");
                        smtp.Send(mailMessage);

                    }

                    lblError.Text = "<script>alert('Email sent successfully.');</script>";

            }
            catch (Exception ex)
            {
                lblError.Text = "<script>alert('Kokota:" + ex.Message + "');</script>";

            }
        }
    }
}