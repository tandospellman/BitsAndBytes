using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject.ViewModels
{
    public class usp_GetUpcomingActivities
    {
        public string scheduleID{ get; set; }
        public string name{ get; set; }
        public string date{ get; set; }
        public string topic{ get; set; }
        public string activityID{ get; set; }
    }
}