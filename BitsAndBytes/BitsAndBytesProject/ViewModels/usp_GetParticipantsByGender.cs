using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject.ViewModels
{
    public class usp_GetParticipantsByGender
    {
        public string activityID { get; set; }
        public string topic { get; set; }
        public string total { get; set; }
        public string Male { get; set; }
        public string Female { get; set; }
    }
}