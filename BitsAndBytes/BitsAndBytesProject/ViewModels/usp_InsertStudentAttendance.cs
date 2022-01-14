using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject.ViewModels
{
    public class usp_InsertStudentAttendance
    {
        public string Date { get; set; }
        public string StudentID { get; set; }
        public string ActivityID { get; set; }
    }
}