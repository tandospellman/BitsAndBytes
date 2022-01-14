using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject.ViewModels
{
    public class usp_GetDetailsForgotPassword
    {
        public string userName { get; set; }
        public string userPassword{ get; set; }
        public string userType { get; set; }
    }
}