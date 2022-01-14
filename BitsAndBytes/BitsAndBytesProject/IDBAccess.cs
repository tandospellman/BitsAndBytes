using BitsAndBytesProject.Models;
using BitsAndBytesProject.ViewModels;
using System.Collections.Generic;
using System.Data;

namespace BitsAndBytesProject
{
    public interface IDBAccess
    {
        #region Query
        List<usp_GetStudentInClass> GetStudentInClasses(int activityID);
        List<usp_GetUpcomingActivities> GetTosdaysActivities(int centreID, string date);
        List<usp_SelectPendingProgrammes> GetPendingProgrammes();
        List<usp_SelectApplications> GetApplications(string status);
        List<usp_GetAllActivities> GetAllActivities();
        List<usp_GetUpcomingActivities> GetUpcomingActivities(string date);
        List<usp_GetAllCenters> GetAllCenters();
        Coordinator GetCoordinator(int LoginID);
        List<usp_GetAllProvinces> GetAllProvinces();
        List<usp_GetRegions> GetRegions(int ProvinceID);
        usp_GetDetailsForgotPassword GetDetailsForgotPassword(string username);
        List<usp_GetTotalActivityParticipants> GetTotalActivityParticipants();
        List<usp_GetParticipantsByGender> GetParticipantsByGenders();
        usp_SelectLoginDetails GetLoginDetails(string username, string password);
        #endregion
        #region NonQuery

        bool UpdateProgrammeStatus(int ProgrammeID, string Status);
        bool InsertSchedule(Schedule s);
        bool InsertStudentAttendance(usp_InsertStudentAttendance s);
        bool UpdateCoordinator(usp_UpdateCoordinator c);
        bool UpdateApplicationStatus(string status, string applicationno);
        bool CreateManager(usp_CreateManager s);
        //bool AddStudentToClass(int StudentID, int ClassID);
        //bool InsertClassPicture(ClassPicture cp);
        //bool InsertCenterReport(sp_GetCenterReport cp);
        #endregion
    }
}