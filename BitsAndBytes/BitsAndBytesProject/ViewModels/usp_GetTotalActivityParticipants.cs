using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject.ViewModels
{
    public class usp_GetTotalActivityParticipants
    {
        public string activityID { get; set; }
        public string topic { get; set; }
        public string total { get; set; }
    }
}