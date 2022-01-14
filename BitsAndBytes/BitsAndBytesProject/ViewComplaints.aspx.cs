using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
namespace BitsandBytesProject
{
    public partial class ViewComplaints : System.Web.UI.Page
    {
        BusinessLogicLayer bll = new BusinessLogicLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
            string ID = GridView1.SelectedRow.Cells[1].Text;
            string id = bll.GetStudentID(ID).Rows[0]["StudentID"].ToString();
            Session["studentID"] = id;
            Session["complaintID"] = GridView1.SelectedRow.Cells[4].Text;
            Response.Redirect("ViewPComplaint.aspx");
        }
        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }


    }   }

