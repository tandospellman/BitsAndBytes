using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BitsAndBytesProject
{
    internal class SqlDBHelper
    {
        private static string connString = 
            ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;

        #region ParamSelect()
        internal static DataTable ParamSelect(string commandName, CommandType cmdType,
            SqlParameter[] pars)
        {
            DataTable table = new DataTable();
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                  
                    cmd.CommandText = commandName;
                    cmd.CommandType = cmdType;
                    cmd.Parameters.AddRange(pars);

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(table);
                        }
                    }
                    catch
                    {
                        throw;
                    }
                }
            }
            return table;
        }
        #endregion ParamSelect()
        #region NonQuery()
        internal static bool NonQuery(string commandName, CommandType cmdType,
            SqlParameter[] pars)
        {
            int result = 0;
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;
                    cmd.Parameters.AddRange(pars);
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                        result = cmd.ExecuteNonQuery();
                    }

                }
            }
            return result > 0;
        }
        #endregion NonQuery()
        #region Select()
        internal static DataTable Select(string commandName, CommandType cmdType)
        {
            DataTable table = null;
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            table = new DataTable();
                            da.Fill(table);
                        }
                    }
                    catch (SqlException ex)
                    {
                        throw new System.Exception("Not available at this time"+ ex.Message);
                    }
                }
            }
            return table;
        }
        #endregion Select()

    }
}
