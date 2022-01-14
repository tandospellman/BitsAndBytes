using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadApplications(drpStatus.SelectedValue.ToString());
        }
        public void LoadApplications(string  val)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            try
            {
                if (handler.GetApplications(val).Count>0)
                {
                    foreach(var x in handler.GetApplications(drpStatus.SelectedValue.ToString()))
                    {
                        TableRow r = new TableRow();
                        TableCell c = new TableCell();
                        TableCell c2 = new TableCell();
                        TableCell c3 = new TableCell();
                        TableCell c4 = new TableCell();
                        c.Text = x.FullName;
                        c2.Text = x.applicationno;
                        c3.Text = x.date;
                        c4.Text = x.status;
                        if (x.status == "Approved")
                            r.CssClass = "table-success";
                        else if (x.status == "Rejected")
                            r.CssClass = "table-danger";
                        else if (x.status == "Pending")
                            r.CssClass = "table-warning";

                        r.Controls.Add(c);
                        r.Controls.Add(c2);
                        r.Controls.Add(c3);
                        r.Controls.Add(c4);
                        tblViewApplications.Controls.Add(r);
                    }
                }
            }
            catch(Exception ex)
            {

            }
        }
        protected void drpStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadApplications(drpStatus.SelectedValue);
        }
    }
}