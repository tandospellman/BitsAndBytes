using BitsAndBytesProject.Models;
using BitsAndBytesProject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BitsAndBytesProject
{
    public class DBHandler
    {
        private readonly IDBAccess dbaccess;
        public DBHandler(IDBAccess db)
        {
            this.dbaccess = db;
        }
        public bool InsertStudentAttendance(usp_InsertStudentAttendance s)
        {
            return dbaccess.InsertStudentAttendance(s);
        }
        public List<usp_GetStudentInClass> GetStudentInClasses(int activityID)
        {
            return dbaccess.GetStudentInClasses(activityID);
        }
        public List<usp_GetUpcomingActivities> GetTosdaysActivities(int centreID, string date)
        {
            return dbaccess.GetTosdaysActivities(centreID,date);
        }
        public List<usp_GetAllCenters> GetAllCenters()
        {
            return dbaccess.GetAllCenters();
        }
        public List<usp_GetUpcomingActivities> GetUpcomingActivities(string date)
        {
            return dbaccess.GetUpcomingActivities(date);
        }
        public List<usp_GetAllActivities> GetAllActivities()
        {
            return dbaccess.GetAllActivities();
        }
        public bool InsertSchedule(Schedule s)
        {
            return dbaccess.InsertSchedule(s);
        }
        public List<usp_GetParticipantsByGender> GetParticipantsByGenders()
        {
            return dbaccess.GetParticipantsByGenders();
        }
        public List<usp_GetTotalActivityParticipants> GetTotalActivityParticipants()
        {
            return dbaccess.GetTotalActivityParticipants();
        }
        public List<usp_GetAllProvinces> GetAllProvinces()
        {
            return dbaccess.GetAllProvinces();
        }
        public List<usp_GetRegions> GetRegions(int ProvinceID)
        {
            return dbaccess.GetRegions(ProvinceID);
        }
        public bool CreateManager(usp_CreateManager s)
        {
            return dbaccess.CreateManager(s);
        }

        public List<usp_SelectApplications> GetApplications(string status)
        {
            return dbaccess.GetApplications(status);
        }

        public Coordinator GetCoordinator(int LoginID)
        {
            return dbaccess.GetCoordinator(LoginID);
        }

        public usp_GetDetailsForgotPassword GetDetailsForgotPassword(string username)
        {
            return dbaccess.GetDetailsForgotPassword(username);
        }

        public usp_SelectLoginDetails GetLoginDetails(string username, string password)
        {
            return dbaccess.GetLoginDetails(username, password);
        }
        public List<usp_SelectPendingProgrammes> GetPendingProgrammes()
        {
            return dbaccess.GetPendingProgrammes();
        }

        public bool UpdateApplicationStatus(string status, string applicationno)
        {
            return dbaccess.UpdateApplicationStatus(status, applicationno);
        }

        public bool UpdateCoordinator(usp_UpdateCoordinator c)
        {
            return dbaccess.UpdateCoordinator(c);
        }

        public bool UpdateProgrammeStatus(int ProgrammeID, string Status)
        {
            return dbaccess.UpdateProgrammeStatus(ProgrammeID, Status);
        }
    }
    }