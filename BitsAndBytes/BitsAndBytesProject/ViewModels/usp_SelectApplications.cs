using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject.ViewModels
{
    public class usp_SelectApplications
    {
        public string FullName { get; set; }
        public string applicationno { get; set; }
        public string parentID { get; set; }
        public string coordinatorID { get; set; }
        public string date { get; set; }
        public string status { get; set; }
    }
}