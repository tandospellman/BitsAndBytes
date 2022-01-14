using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace BitsandBytesProject
{
    public partial class logComplaint : System.Web.UI.Page
    {
        BusinessLogicLayer bll = new BusinessLogicLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

       
        if (Session["studentID"] == null || Session["UserID"] == null || Session["firstname"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }

    int UserID = int.Parse(Session["UserID"].ToString());


            if (bll.GetUserDetailsByID(UserID).Rows.Count == 0)
            {
                ShowError();
    lblError.Visible = true;
            }
            else
{
    lblError.Visible = false;
}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fullname = Session["firstname"].ToString();
            int sid = int.Parse("StudentID");
            // int cid = Session["StudentID"].ToStringa();
            int cid = int.Parse("complaintID");
            int Date = int.Parse("date");
            //string n = String.Format("{0}", Request.Form["date"]);
            Complaint com = new Complaint(sid, cid, Date, Select1.SelectedItem.Text.ToString(), txtMessage.Text.ToString());
            // Complaint com = new Complaint(FullName, id, n, Select1.SelectedItem.Text.ToString(), txtMessage.Text.ToString(), Date);
            int x = bll.LogComplaint(com);
            if (x > 0)
            {

                string to = "hopeskaap@gmail.com"; //To address;
                string from = "bitsandbytesgroup50@gmail.com"; //From address    
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Logged By: " + fullname + "<br/>Student Number:" + sid + "<br/>Date Of Incident: "+Date + "<br/>Complaint Description: " + cid;
                message.Subject = Select1.SelectedItem.Text.ToString() + " Complaint";
                message.Body = mailbody;
                message.BodyEncoding = System.Text.Encoding.UTF8;
                message.IsBodyHtml = true;
                //bitsandbytesClient client = new bitsandbytesClient("smtp.gmail.com", 587);//Gmail smtp        
                //client.EnableSsl = true;
                //client.UseDefaultCredentials = false;
                //client.DeliveryMethod = SmtpDeliveryMethod.Network;
                //System.Net.NetworkCredential basicCredential1 = new
                //System.Net.NetworkCredential("BitsandBytes@gmail.com", "bitsandbytes");
                //client.Credentials = basicCredential1;
                try
                { }
                //    client.Send(message);
                //}

                catch (Exception ex)
                {
                    throw ex;
                }
                Response.Redirect("ComplaintThanks.aspx");
            }
        }

private void ShowError()
{

    Label1.Visible = false;
    Label2.Visible = false;
    Label3.Visible = false;
    Select1.Visible = false;
    Table1.Visible = false;
    txtMessage.Visible = false;
    Button1.Visible = false;
    myID.Visible = false;
}
    }
}