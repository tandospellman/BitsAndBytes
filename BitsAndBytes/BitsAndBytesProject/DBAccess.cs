using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BitsAndBytesProject.ViewModels;
using BitsAndBytesProject.Models;

namespace BitsAndBytesProject
{
    public class DBAccess : IDBAccess
    {
        public List<usp_SelectPendingProgrammes> GetPendingProgrammes()
        {
            List<usp_SelectPendingProgrammes> ps = new List<usp_SelectPendingProgrammes>();
          
            using (DataTable dt = SqlDBHelper.Select("usp_SelectPendingProgrammes", CommandType.StoredProcedure))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_SelectPendingProgrammes ph = new usp_SelectPendingProgrammes
                        {
                            status = Convert.ToString(row["status"]),
                            programmeID = Convert.ToString(row["programmeID"]),
                            coordinatorID = Convert.ToString(row["coordinatorID"]),
                            name = Convert.ToString(row["name"]),
                            duration = Convert.ToString(row["duration"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public usp_SelectLoginDetails GetLoginDetails(string username, string password)
        {
            usp_SelectLoginDetails ph = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                        new SqlParameter("@userName", username),
                        new SqlParameter("@userPassword",password)
            };
            using (DataTable table = SqlDBHelper.ParamSelect("usp_SelectLoginDetails",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    ph = new usp_SelectLoginDetails
                    {
                        userID = Convert.ToString(row["userID"]),
                        userName = Convert.ToString(row["userName"]),
                        userType = Convert.ToString(row["userType"]),
                        userPassword = Convert.ToString(row["userPassword"])
                    };

                }
            }
            return ph;
        }
        public bool UpdateProgrammeStatus(int ProgrammeID , string status)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                        new SqlParameter("@ProgrammeID", ProgrammeID),
                        new SqlParameter("@Status",status)
            };

            return SqlDBHelper.NonQuery("usp_UpdateProgrammeStatus", CommandType.StoredProcedure, param.ToArray());
        }

        public Coordinator GetCoordinator(int LoginID)
        {
            Coordinator ph = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                        new SqlParameter("@LoginID", LoginID),
            };
            using (DataTable table = SqlDBHelper.ParamSelect("usp_SelectCoordinator",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    ph = new Coordinator
                    {
                        coordinatorID = Convert.ToString(row["coordinatorID"]),
                        lastname = Convert.ToString(row["lastname"]),
                        firstname = Convert.ToString(row["firstname"]),
                        phone = Convert.ToString(row["phone"]),
                        email = Convert.ToString(row["email"]),
                        provinceID = Convert.ToString(row["provinceID"]),
                        LoginID = Convert.ToString(row["LoginID"]),
                    };
                }
            }
            return ph;
        }

        public usp_GetDetailsForgotPassword GetDetailsForgotPassword(string username)
        {
            usp_GetDetailsForgotPassword ph = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                        new SqlParameter("@username", username),
            };
            using (DataTable table = SqlDBHelper.ParamSelect("usp_GetDetailsForgotPassword",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    ph = new usp_GetDetailsForgotPassword
                    {
                        userName = Convert.ToString(row["userName"]),
                        userPassword = Convert.ToString(row["userPassword"]),
                        userType = Convert.ToString(row["userType"]),
                    };
                }
            }
            return ph;
        }

        public bool UpdateCoordinator(usp_UpdateCoordinator s)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            foreach (var prop in s.GetType().GetProperties())
            {
                if (prop.GetValue(s) != null)
                {
                    param.Add(new SqlParameter("@" +
                        prop.Name.ToString(), prop.GetValue(s)));
                }
            }
            return SqlDBHelper.NonQuery("usp_UpdateCoordinator", CommandType.StoredProcedure, param.ToArray());
        }

        public bool UpdateApplicationStatus(string status, string applicationno)
        {
            SqlParameter[] param = new SqlParameter[]
           {
                        new SqlParameter("@status", status),
                        new SqlParameter("@applicationno",applicationno)
           };

            return SqlDBHelper.NonQuery("usp_UpdateApplicationStatus", CommandType.StoredProcedure, param.ToArray());
        }

        public bool CreateManager(usp_CreateManager s)
        {

            List<SqlParameter> param = new List<SqlParameter>();
            foreach (var prop in s.GetType().GetProperties())
            {
                if (prop.GetValue(s) != null)
                {
                    param.Add(new SqlParameter("@" +
                        prop.Name.ToString(), prop.GetValue(s)));
                }
            }
            return SqlDBHelper.NonQuery("usp_CreateManager", CommandType.StoredProcedure, param.ToArray());

        }

        public List<usp_SelectApplications> GetApplications(string status)
        {
            List<usp_SelectApplications> ps = new List<usp_SelectApplications>();
            SqlParameter[] pars = new SqlParameter[]
            {
                        new SqlParameter("@status", status),
            };
            using (DataTable dt = SqlDBHelper.ParamSelect("usp_SelectApplications", CommandType.StoredProcedure,pars))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_SelectApplications ph = new usp_SelectApplications
                        {
                            status = Convert.ToString(row["status"]),
                            FullName = Convert.ToString(row["FullName"]),
                            parentID = Convert.ToString(row["parentID"]),
                            coordinatorID = Convert.ToString(row["coordinatorID"]),
                            applicationno = Convert.ToString(row["applicationno"]),
                            date = Convert.ToString(row["date"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public List<usp_GetAllProvinces> GetAllProvinces()
        {
            List<usp_GetAllProvinces> ps = new List<usp_GetAllProvinces>();

            using (DataTable dt = SqlDBHelper.Select("usp_GetAllProvinces", CommandType.StoredProcedure))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetAllProvinces ph = new usp_GetAllProvinces
                        {
                            provinceID = Convert.ToString(row["provinceID"]),
                            provincename = Convert.ToString(row["provincename"]),
                            country = Convert.ToString(row["country"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public List<usp_GetRegions> GetRegions(int ProvinceID)
        {
            List<usp_GetRegions> ps = new List<usp_GetRegions>();
            SqlParameter[] pars = new SqlParameter[]
           {
                        new SqlParameter("@ProvinceID", ProvinceID),
           };

            using (DataTable dt = SqlDBHelper.ParamSelect("usp_GetRegions", CommandType.StoredProcedure,pars))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetRegions ph = new usp_GetRegions
                        {
                            provinceID = Convert.ToString(row["provinceID"]),
                            regionID = Convert.ToString(row["regionID"]),
                            regionname = Convert.ToString(row["regionname"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public List<usp_GetTotalActivityParticipants> GetTotalActivityParticipants()
        {
            List<usp_GetTotalActivityParticipants> ps = new List<usp_GetTotalActivityParticipants>();

            using (DataTable dt = SqlDBHelper.Select("usp_GetTotalActivityParticipants", CommandType.StoredProcedure))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetTotalActivityParticipants ph = new usp_GetTotalActivityParticipants
                        {
                            activityID = Convert.ToString(row["activityID"]),
                            topic = Convert.ToString(row["topic"]),
                            total = Convert.ToString(row["total"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public List<usp_GetParticipantsByGender> GetParticipantsByGenders()
        {
            List<usp_GetParticipantsByGender> ps = new List<usp_GetParticipantsByGender>();

            using (DataTable dt = SqlDBHelper.Select("usp_GetParticipantsByGender", CommandType.StoredProcedure))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetParticipantsByGender ph = new usp_GetParticipantsByGender
                        {
                            activityID = Convert.ToString(row["activityID"]),
                            topic = Convert.ToString(row["topic"]),
                            Male = Convert.ToString(row["Male"]),
                            Female = Convert.ToString(row["Female"]),
                            total = Convert.ToString(row["total"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public bool InsertSchedule(Schedule s)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            foreach (var prop in s.GetType().GetProperties())
            {
                if (prop.GetValue(s) != null)
                {
                    param.Add(new SqlParameter("@" +
                        prop.Name.ToString(), prop.GetValue(s)));
                }
            }
            return SqlDBHelper.NonQuery("usp_InsertSchedule", CommandType.StoredProcedure, param.ToArray());
        }

        public List<usp_GetAllActivities> GetAllActivities()
        {
            List<usp_GetAllActivities> ps = new List<usp_GetAllActivities>();

            using (DataTable dt = SqlDBHelper.Select("usp_GetAllActivities", CommandType.StoredProcedure))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetAllActivities ph = new usp_GetAllActivities
                        {
                            activityID = Convert.ToString(row["activityID"]),
                            date = Convert.ToString(row["date"]),
                            topic = Convert.ToString(row["topic"]),
                            classID = Convert.ToString(row["classID"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public List<usp_GetUpcomingActivities> GetUpcomingActivities(string date)
        {
            List<usp_GetUpcomingActivities> ps = new List<usp_GetUpcomingActivities>();
            SqlParameter[] pars = new SqlParameter[]
           {
                        new SqlParameter("@date", date),
           };

            using (DataTable dt = SqlDBHelper.ParamSelect("usp_GetUpcomingActivities", CommandType.StoredProcedure, pars))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetUpcomingActivities ph = new usp_GetUpcomingActivities
                        {
                            name = Convert.ToString(row["name"]),
                            scheduleID = Convert.ToString(row["scheduleID"]),
                            topic = Convert.ToString(row["topic"]),
                            date = Convert.ToString(row["date"]),
                        };
                        ps.Add(ph);
                    }
                }
            }
            return ps;
        }

        public List<usp_GetAllCenters> GetAllCenters()
        {
            List<usp_GetAllCenters> ps = new List<usp_GetAllCenters>();

            using (DataTable dt = SqlDBHelper.Select("usp_GetAllCenters", CommandType.StoredProcedure))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetAllCenters ph = new usp_GetAllCenters
                        {
                            name = Convert.ToString(row["name"]),
                            centreID = Convert.ToString(row["centreID"]),
                            dateregistered = Convert.ToString(row["dateregistered"]),
                        };
                        ps.Add(ph);
                    }
                }
            }

            return ps;
        }

        public List<usp_GetUpcomingActivities> GetTosdaysActivities(int centreID, string date)
        {
            List<usp_GetUpcomingActivities> ps = new List<usp_GetUpcomingActivities>();
            SqlParameter[] pars = new SqlParameter[]
           {
                        new SqlParameter("@date", date),
                        new SqlParameter("@centreID", centreID),
           };

            using (DataTable dt = SqlDBHelper.ParamSelect("usp_GetTodaysActivity", CommandType.StoredProcedure, pars))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetUpcomingActivities ph = new usp_GetUpcomingActivities
                        {
                            name = Convert.ToString(row["name"]),
                            scheduleID = Convert.ToString(row["scheduleID"]),
                            topic = Convert.ToString(row["topic"]),
                            date = Convert.ToString(row["date"]),
                            activityID = Convert.ToString(row["activityID"]),
                        };
                        ps.Add(ph);
                    }
                }
            }
            return ps;
        }

        public List<usp_GetStudentInClass> GetStudentInClasses(int activityID)
        {
            List<usp_GetStudentInClass> ps = new List<usp_GetStudentInClass>();
            SqlParameter[] pars = new SqlParameter[]
           {
                        new SqlParameter("@activityID", activityID),
           };

            using (DataTable dt = SqlDBHelper.ParamSelect("usp_GetStudentInClass", CommandType.StoredProcedure, pars))
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        usp_GetStudentInClass ph = new usp_GetStudentInClass
                        {
                            studentID = Convert.ToString(row["studentID"]),
                            FullName = Convert.ToString(row["FullName"]),
                        };
                        ps.Add(ph);
                    }
                }
            }
            return ps;
        }

        public bool InsertStudentAttendance(usp_InsertStudentAttendance s)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            foreach (var prop in s.GetType().GetProperties())
            {
                if (prop.GetValue(s) != null)
                {
                    param.Add(new SqlParameter("@" +
                        prop.Name.ToString(), prop.GetValue(s)));
                }
            }
            return SqlDBHelper.NonQuery("usp_InsertStudentAttendance", CommandType.StoredProcedure, param.ToArray());
        }
    }
}