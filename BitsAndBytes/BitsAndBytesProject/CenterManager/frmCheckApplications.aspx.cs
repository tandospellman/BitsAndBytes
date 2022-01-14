using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject.CenterManager
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadApplications(drpStatus.SelectedValue.ToString());
            }

            if (lblError.Text != "No data" && (IsPostBack))
            {
                LoadApplications(drpStatus.SelectedValue.ToString());
            }
        }
        public void LoadApplications(string val)
        {

            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
                var y = handler.GetApplications(val);
                tblActionApplication.Rows.Clear();

                if (y.Count > 0)
                {

                    foreach (var x in y)
                    {
                        TableRow r = new TableRow();
                        TableCell c = new TableCell();
                        TableCell c2 = new TableCell();
                        TableCell c3 = new TableCell();
                        TableCell c4 = new TableCell();
                        TableCell c5 = new TableCell();
                        TableCell c6 = new TableCell();
                        c.Text = x.FullName;
                        c.CssClass = "py-1";
                        c2.Text = x.applicationno;
                        c3.Text = x.date;
                        c4.Text = x.status;


                        r.Controls.Add(c);
                        r.Controls.Add(c2);
                        r.Controls.Add(c3);
                        r.Controls.Add(c4);

                        if (x.status != "Approved")
                        {
                            Button btnApprove = new Button();
                            btnApprove.Text = "Approve";
                            btnApprove.CssClass = "btn btn-success btn-rounded space";
                            btnApprove.Click += new EventHandler(btnApproveClick);
                            btnApprove.ID = "@" + x.applicationno;
                            c5.Controls.Add(btnApprove);
                            r.Controls.Add(c5);
                        }

                        if (x.status != "Rejected")
                        {
                            Button btnReject = new Button();
                            btnReject.Text = "Reject";
                            btnReject.CssClass = "btn btn-danger btn-rounded";
                            btnReject.Click += new EventHandler(btnRejectClick);
                            btnReject.ID = "#" + x.applicationno;
                            c5.Controls.Add(btnReject);
                            r.Controls.Add(c5);
                        }
                        tblActionApplication.Controls.Add(r);
                    }
                    tblActionApplication.DataBind();
                }
                else
                {
                    lblError.Text = "No data";
                }

            }
            catch (Exception ex)
            {
                lblError.Text = "No data";
            }
        }
        protected void btnRejectClick(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            var x = b.ClientID.Split('#');
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            try
            {
                bool updated = handler.UpdateApplicationStatus("Rejected", x[1].ToString());
                if (updated)
                {
                    lblError.Text = "";
                    LoadApplications(drpStatus.SelectedValue);
                    Response.Write("<script>alert('Application Rejected')</script>");
                }

            }
            catch
            {
                Response.Write("<script>alert('Something Happened please try again later')</script>");
            }
        }
        protected void btnApproveClick(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            var x = b.ClientID.Split('@');
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            try
            {
                bool updated = handler.UpdateApplicationStatus("Approved", x[1].ToString());
                if (updated)
                {
                    lblError.Text = "";
                    LoadApplications(drpStatus.SelectedValue);
                    Response.Write("<script>alert('Application Approved')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('Something Happened please try again later')</script>");
            }
        }
        protected void drpStatus_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}