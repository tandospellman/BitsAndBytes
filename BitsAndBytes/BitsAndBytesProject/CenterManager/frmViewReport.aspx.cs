using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitsAndBytesProject.CenterManager
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IDBAccess db = new DBAccess();
            DBHandler handler = new DBHandler(db);


            try
            {
                var y = handler.GetTotalActivityParticipants();
                if (y.Count > 0)
                {

                    Literal l = new Literal();
                    l.Text = "  <script>";
                    l.Text += "    var ctx = document.getElementById('myChart').getContext('2d');";
                    l.Text += "  var myChart = new Chart(ctx, {";
                    l.Text += "        type: 'pie',";
                    l.Text += "          data:";
                    l.Text += "  {";
                    l.Text += "  labels:[";
                    Literal l2 = new Literal();
                    l2.Text = "";
                    foreach (var x in y)
                    {
                        l2.Text += "'" + x.topic + "',";
                    }
                    l2.Text = l2.Text.Remove(l2.Text.Length - 1, 1);
                    l.Text += l2.Text;
                    l.Text += "],";
                    // l.Text += "  labels:['Jumping', 'Reading', 'Puzzles', 'Block Building', 'Simple Counting'],";
                    l.Text += "             datasets:";
                    l.Text += "      [{";
                    l.Text += " data:[";
                    Literal l3 = new Literal();
                    l3.Text = "";
                    foreach (var x in y)
                    {
                        l3.Text += x.total + ",";
                    }
                    l3.Text = l3.Text.Remove(l3.Text.Length - 1, 1);
                    l.Text += l3.Text;
                    l.Text += "],";
                    //  l.Text += "      data:[40, 10, 6, 25, 11],";
                    l.Text += "                   borderColor:[";
                    l.Text += "                       '#3cba9f',";
                    l.Text += "                        '#ffa500',";
                    l.Text += "                        '#c45850',";
                    l.Text += "                        '#b4f020',";
                    l.Text += "                        '#cj9850',";
                    l.Text += "                        '#bgy750',";
                    l.Text += "                    ],";
                    l.Text += "                    backgroundColor:[";
                    l.Text += "                        'rgb(60,186,159,0.1)',";
                    l.Text += "                        'rgb(255,165,0,0.1)',";
                    l.Text += "                     'rgb(196,88,80,0.1)',";
                    l.Text += "                     'rgb(96,58,60,0.1)',";
                    l.Text += "                     'rgb(106,98,10,0.1)',";
                    l.Text += "                      'rgb(200,74,50,0.1)',";
                    l.Text += "                  ],";
                    l.Text += "                  borderWidth: 2,";
                    l.Text += "               }]";
                    l.Text += "             },";
                    l.Text += "            options:";
                    l.Text += "    {";
                    l.Text += "    scales:";
                    l.Text += "        {";
                    l.Text += "         xAxes:";
                    l.Text += "                    [{";
                    l.Text += "             display: false,";
                    l.Text += "                   }],";
                    l.Text += "                   yAxes:";
                    l.Text += "            [{";
                    l.Text += "           display: false,";
                    l.Text += "                   }],";
                    l.Text += "                }";
                    l.Text += "     },";
                    l.Text += "        });";

                    l.Text += "      </script>";
                    plcChart1.Controls.Add(l);
                }
            }
            catch
            {

            }
            try
            {
                var y = handler.GetParticipantsByGenders();
                if (y.Count > 0)
                {
                    Literal l = new Literal();



                    l.Text = " <script>";
                    l.Text += "       var ctx = document.getElementById('barChart').getContext('2d'); ";
                    l.Text += "   var myChart = new Chart(ctx, { ";
                    l.Text += "             type: 'bar', ";
                    l.Text += "            data: ";
                    l.Text += "   {";
                    l.Text += "  labels:[";
                    Literal l2 = new Literal();
                    l2.Text = "";
                    foreach (var x in y)
                    {
                        l2.Text += "'" + x.topic + "',";
                    }
                    l2.Text = l2.Text.Remove(l2.Text.Length - 1, 1);
                    l.Text += l2.Text;
                    l.Text += "],";
                    //l.Text += "     labels:['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'], ";
                    l.Text += "                    datasets: ";
                    l.Text += "       [{";

                    l.Text += " data:[";
                    Literal l3 = new Literal();
                    l3.Text = "";
                    foreach (var x in y)
                    {
                        l3.Text += x.total + ",";
                    }
                    l3.Text = l3.Text.Remove(l3.Text.Length - 1, 1);
                    l.Text += l3.Text;
                    l.Text += "],";
                    l.Text += "                       label: 'Total', ";
                    l.Text += "                        borderColor: 'rgb(62,149,205)', ";
                    l.Text += "                       backgroundColor: 'rgb(62,149,205,0.1)', ";
                    l.Text += "                      borderWidth: 2 ";
                    l.Text += "                    }, { ";
                    l.Text += " data:[";
                    Literal l4 = new Literal();
                    l4.Text = "";
                    foreach (var x in y)
                    {
                        l4.Text += x.Male + ",";
                    }
                    l4.Text = l4.Text.Remove(l4.Text.Length - 1, 1);
                    l.Text += l4.Text;
                    l.Text += "],";
                    l.Text += "                         label: 'Boys',  ";
                    l.Text += "                       borderColor: 'rgb(255,165,0)', ";
                    l.Text += "                        backgroundColor: 'rgb(255,165,0,0.1)',  ";
                    l.Text += "                         borderWidth: 2 ";
                    l.Text += "                     }, {  ";
                    l.Text += " data:[";
                    l4 = new Literal();
                    l4.Text = "";
                    foreach (var x in y)
                    {
                        l4.Text += x.Female + ",";
                    }
                    l4.Text = l4.Text.Remove(l4.Text.Length - 1, 1);
                    l.Text += l4.Text;
                    l.Text += "],";
                    l.Text += "                         label: 'Girls', ";
                    l.Text += "                         borderColor:  'rgb(196,88,80)', ";
                    l.Text += "                        backgroundColor: 'rgb(196,88,80,0.1)', ";
                    l.Text += "                   borderWidth: 2 ";
                    l.Text += "                   }";
                    l.Text += "                   ]";
                    l.Text += "                },";
                    l.Text += "             });";
                    l.Text += "       </script> ";
                    plcChart2.Controls.Add(l);
                }
            }
            catch
            {

            }
        }
    }
}