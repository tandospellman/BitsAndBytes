using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            if(lblError.Text!="no data")
                LoadTable();
        }
        public void LoadTable()
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            try
            {

            if (handler.GetPendingProgrammes().Count > 0)
            {
                tblProgrammes.Rows.Clear();
                foreach (var x in handler.GetPendingProgrammes())
                {
                    TableRow r = new TableRow();
                    TableCell c = new TableCell();
                    TableCell c2 = new TableCell();
                    TableCell c3 = new TableCell();
                    TableCell c4 = new TableCell();
                    c.Text = x.name;
                    c.CssClass = "py-1";
                    c3.Text = x.status;

                    c2.Text = x.duration;

                    Button btnApprove = new Button();
                    btnApprove.Click += new EventHandler(btnApproveClick);
                    btnApprove.ID = "" + x.programmeID;
                    btnApprove.CssClass = "btn btn-success space";
                    btnApprove.Text = "Approve";



                    Button btnReject = new Button();
                    btnReject.Text = "Reject";
                    btnReject.Click += new EventHandler(btnRejectClick);
                    btnReject.ID = "#" + x.programmeID;
                    btnReject.CssClass = "btn btn-outline-danger";


                    c4.Controls.Add(btnApprove);
                    c4.Controls.Add(btnReject);
                    r.Controls.Add(c);
                    r.Controls.Add(c2);
                    r.Controls.Add(c3);
                    r.Controls.Add(c4);
                    tblProgrammes.Controls.Add(r);
                }
                tblProgrammes.DataBind();
            }
            else
                lblError.Text = "no data";
            }
            catch
            {
                lblError.Text = "no data";

            }
        }
        protected void btnRejectClick(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            Button b = (Button)sender;
            var id = b.ClientID;
            var val = id.Split('#');
            try
            {
                bool updated = handler.UpdateProgrammeStatus(int.Parse(val[1]), "Rejected");
                if (updated)
                {
                    lblError.Text = "";
                    Response.Write("<script>alert('Programme Rejected')</script>");
                    LoadTable();
                }
            }
            catch
            {

            }
        }
        protected void btnApproveClick(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            Button b = (Button)sender;
            var id = b.ClientID;
            var val = id.Split('_');
            try
            {
                bool updated = handler.UpdateProgrammeStatus(int.Parse(val[1]), "Approved");
                if (updated)
                {
                    Response.Write("<script>alert('Programme Approved')</script>");
                    //LoadTable();
                }
            }
            catch
            {

            }
        }
    }
}