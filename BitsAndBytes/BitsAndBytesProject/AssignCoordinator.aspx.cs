using System;
using System.Drawing;
using DAL;
using BLL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsandBytesProject
{
    public partial class AssignCoordinator : System.Web.UI.Page
    {
        BusinessLogicLayer bll = new BusinessLogicLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Date.Text = Session["type"].ToString();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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

            //Session["floorid"] = bll.GetCoordinatorByname(co.SelectedItem.Text.ToString(), GridView1.SelectedRow.Cells[0].Text).Rows[0]["coordinatorID"].ToString();
            string firstname = GridView1.SelectedRow.Cells[0].Text;
            string lastname = GridView1.SelectedRow.Cells[1].Text;
            string id = bll.GetAssignID(firstname, lastname).Rows[0]["assignID"].ToString();
            Task f = new Task(int.Parse(id));
            int x = bll.Assign(f);
            if (x > 0)
            {
                Response.Redirect("task.aspx");
            }


        }
        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }
    }
}
