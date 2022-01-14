using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Data;



namespace BitsAndBytes
{
    public partial class Update_Parent : System.Web.UI.Page
    {
       static string connString = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
    


        protected void Page_Load(object sender, EventArgs e)
        {
            lblStudent.Visible = false;
            btnUpdate.Visible = false;
            lblUnregister.Visible = false;

            divSearchByStudent.Visible = false;
            divUnregister.Visible = false;
            divParentInfo.Visible = false;
            divStudentPersonalInfo.Visible = false;
           
            lblUpdateSuccess.Visible = false;
            lblStudSuccess.Visible = false;

            // lblmessage0.Visible = false;
            // set txtId to last user id

            

            int parentID = 0;

           string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
                int lastParentID = 0;

                #region GetParentID()
                string sqlSelectLastUserID = "SELECT TOP 1(ParentID) AS LastID FROM Parent";
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sqlSelectLastUserID;
                cmd.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        lastParentID = int.Parse(dr["LastID"].ToString());
                    }

                    dr.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetLastID()


                parentID = lastParentID;
            }

             txtParentID.Text = parentID.ToString();
            //txtParentID.Text = "1";

           

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string
               firstName = txtFirstName.Text,
               surname = txtSurname.Text,
               email = txtEmail.Text;





            // password = txtPassword.Text;
            int userID = int.Parse(txtParentID.Text),
                phone = int.Parse(txtPhone.Text),
                suburbid = int.Parse(txtSubID.Text);




            int x = 0;


            

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {
               

                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspUpdateParent", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;



                dbCmd.Parameters.AddWithValue("@parentID", txtParentID.Text);
                dbCmd.Parameters.AddWithValue("@firstName", firstName);
                dbCmd.Parameters.AddWithValue("@lastName", surname);

                dbCmd.Parameters.AddWithValue("@surburbID", suburbid);

                dbCmd.Parameters.AddWithValue("@email", email);

                dbCmd.Parameters.AddWithValue("@phone", phone);

               // dbCmd.ExecuteNonQuery();
               // dbConn.Close();


                try
                 {
                     con.Open();
                     x = dbCmd.ExecuteNonQuery();
                 }
                 catch (Exception err)
                 {

                 }
                 finally
                 {
                     con.Close();
                 }

                if (x != 0)
                {
                    lblUpdateSuccess.Visible = true;
                    Fieldset3.Visible = true;
                    divParentInfo.Visible = true;
                    lblUpdateSuccess.Text = "Successfully Updated!";
                }
                else
                {
                    lblUpdateSuccess.Visible = true;
                    Fieldset3.Visible = true;
                    lblUpdateSuccess.Text = "Update Failed!";

                }

                
                     
                   
                


            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string[] userName;
            string searchValue = "";

            searchValue = txtStudName.Text;
            userName = searchValue.Split(' ');

            if (userName.Length > 1)
            {
                int lastStudID = 0,
                   studentID = 0;

                string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

                using (SqlConnection dbConn = new SqlConnection(CS))
                {



                    #region GetstudentID()
                    string sqlSelectStudID = "SELECT (pupilID) AS LastID FROM tblPupil WHERE firstName = '" + userName[0] + "' ";
                    SqlDataReader dr3;
                    SqlCommand cmd3 = new SqlCommand();
                    cmd3.CommandText = sqlSelectStudID;
                    cmd3.Connection = dbConn;

                    try
                    {
                        dbConn.Open();
                        dr3 = cmd3.ExecuteReader();

                        while (dr3.Read())
                        {
                            lastStudID = int.Parse(dr3["LastID"].ToString());
                        }

                        dr3.Close();
                    }
                    catch (Exception err)
                    {

                    }
                    finally
                    {
                        dbConn.Close();
                    }
                    #endregion GetStudentID()


                    studentID = lastStudID;

                    lblStudent.Text = studentID.ToString();

                }

                //Returns user information
                string query = "SELECT * FROM tblPupil WHERE parentID = '" + txtParentID.Text + "' AND firstName = '" + userName[0] + "' AND lastName = '" + userName[1] + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr;

                try
                {
                    con.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {

                       txtParentID.Text = ValueCheck(dr["parentID"].ToString());
                        txtStudFName.Text = ValueCheck(dr["firstname"].ToString());
                        txtStudSurname.Text = ValueCheck(dr["lastname"].ToString());
                        txtDOB.Text = ValueCheck(dr["DOB"].ToString());

                        //fill student after panel
                        // txtEmail.Text = ValueCheck(dr["parentID"].ToString());

                        // txtPassword.Text = ValueCheck(dr["userPassword"].ToString());



                    }
                }
                catch (Exception err)
                {

                }
                finally
                {
                    con.Close();
                }

                if (String.IsNullOrEmpty(txtStudent.Text))
                {
                    lblNotFound.Text = "No record found. Make sure correct name is entered.";
                }
                else
                {
                    lblNotFound.Text = "";
                   
                    divStudentPersonalInfo.Visible = true;

                    btnUpdateStud.Visible = true;
                }


                string query2 = "SELECT * FROM tblMedicalHistory WHERE pupilID = '" + lblStudent.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                SqlDataReader dr2;

                try
                {
                    con.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {

                        txtAllergy.Text = ValueCheck(dr2["allergy"].ToString());
                        txtill.Text = ValueCheck(dr2["illnesses"].ToString());
                        txtdoct.Text = ValueCheck(dr2["docName"].ToString());
                        txtdocnum.Text = ValueCheck(dr2["docPhone"].ToString());

                    }
                }
                catch (Exception err)
                {

                }
                finally
                {
                    con.Close();
                }

                //Returns user information


                if (String.IsNullOrEmpty(txtStudent.Text))
                {
                    lblNotFound.Text = "No record found. Make sure correct name is entered.";
                }
                else
                {
                    lblNotFound.Text = "";

                    divStudentPersonalInfo.Visible = true;

                    btnUpdateStud.Visible = true;
                }



            }







            /* else
             {
                 lblNotFound.Text = "No record found. Make sure correct name is entered.";
             }*/

        }

        public string ValueCheck(string value)
        {
            string result = "";

            if (value == "&nbsp;")
                result = "";
            else
                result = value;

            return result;
        }

        protected void btnUpdateP_Click(object sender, EventArgs e)
        {
            //show parents
            btnUpdateP.Visible = false;
            btnUpdateSt.Visible = false;

            divParentInfo.Visible = true;
            //change btn to be in div
            btnUpdate.Visible = true; 


            //Returns user information
            string query = "SELECT * FROM Parent WHERE parentID = '" + txtParentID.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    txtParentID.Text = ValueCheck(dr["parentID"].ToString());
                    txtFirstName.Text = ValueCheck(dr["firstname"].ToString());
                    txtSurname.Text = ValueCheck(dr["lastname"].ToString());
                    txtSubID.Text = ValueCheck(dr["surburbID"].ToString());
                    txtEmail.Text = ValueCheck(dr["email"].ToString());
                    txtPhone.Text = ValueCheck(dr["phone"].ToString());





                }

            }
            catch (Exception err)
            {

            }
            finally
            {
                con.Close();
            }

        }


            

        protected void btnUpdateSt_Click(object sender, EventArgs e)
        {
            //show student

            divSearchByStudent.Visible = true;
            btnUpdate.Visible = true;

            btnUpdateP.Visible = false;
            btnUpdateSt.Visible = false;

            
            
        }

        protected void btnUpdateStud_Click(object sender, EventArgs e)
        {


            int x = 0;

            string
              firstName = txtStudFName.Text,
              surname = txtStudSurname.Text;
            // DateTime dateOfBirth = DateTime.ParseExact(txtDOB.Text.ToString(), "yyyy-MM-dd hh: mm", CultureInfo.InvariantCulture);



            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspUpdateStudent_P", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;



                dbCmd.Parameters.AddWithValue("@parentID", txtParentID.Text);
                dbCmd.Parameters.AddWithValue("@firstName", firstName);
                dbCmd.Parameters.AddWithValue("@lastName", surname);
                dbCmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                dbCmd.Parameters.AddWithValue("@pupilID", lblStudent.Text);

                try
                {
                    con.Open();
                    x = dbCmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    con.Close();
                }

                if (x != 0)
                {
                    lblStudSuccess.Visible = true;
                    lblStudSuccess.Text = "Successfully Updated!";
                }
                    
                else
                {
                    lblStudSuccess.Visible = true;
                    lblStudSuccess.Text = "Update Failed!";

                }
                    

            }


            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspUpdateMedicalHist_P", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;



                dbCmd.Parameters.AddWithValue("@allergy", txtAllergy.Text);
                dbCmd.Parameters.AddWithValue("@illnesses", txtill.Text);
                dbCmd.Parameters.AddWithValue("@docName", txtdoct.Text);
                dbCmd.Parameters.AddWithValue("@docPhone", txtdocnum.Text);


                dbCmd.Parameters.AddWithValue("@pupilID", lblStudent.Text);

                try
                {
                    con.Open();
                    x = dbCmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    con.Close();
                }

                if (x != 0)
                {
                    lblStudSuccess.Visible = true;
                    lblStudSuccess.Text = "Successfully Updated!";
                }

                else
                {
                    lblStudSuccess.Visible = true;
                    lblStudSuccess.Text = "Update Failed!";

                }


            }


            divStudentPersonalInfo.Visible = true;

        }

        protected void btnUnregister_Click(object sender, EventArgs e)
        {


            int x = 0;




            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {




                dbConn.Open();
                SqlCommand dbCmd = new SqlCommand();
                dbCmd = new SqlCommand("uspUnregisterPupil_P", dbConn);
                dbCmd.CommandType = CommandType.StoredProcedure;




                dbCmd.Parameters.AddWithValue("@pupilID", lblStudent.Text);

               






                dbCmd.ExecuteNonQuery();
                dbConn.Close();

                /*  try
                  {
                      dbConn.Open();
                      x = dbCmd.ExecuteNonQuery();
                  }
                  catch (Exception err)
                  {

                  }
                  finally
                  {
                      dbConn.Close();
                  }

                  if (x != 0)
                  {


                      lblRegistrationSuccess.Text = "Successfully Registration!";
                  }
                  else
                  {
                      lblRegistrationSuccess.Text = "Registration Failed!";

                  }
                */


            }

        }

        protected void btnUnregisterchild_Click(object sender, EventArgs e)
        {
            divUnregister.Visible = true;
            lblUnregister.Text = "Pupil Unregistered!";
            lblUnregister.Visible = true;
        }

        protected void cmbSelectStudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            divUnregister.Visible = true;
            int lastStudID = 0,
              studentID = 0;

            string CS = ConfigurationManager.ConnectionStrings["BitesandBytesConnectionString"].ConnectionString;

            using (SqlConnection dbConn = new SqlConnection(CS))
            {


                #region GetstudentID()
                string sqlSelectStudID = "SELECT (pupilID) AS LastID FROM tblPupil WHERE firstName = '" + cmbSelectStudent.Text + "' ";
                SqlDataReader dr2;
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = sqlSelectStudID;
                cmd2.Connection = dbConn;

                try
                {
                    dbConn.Open();
                    dr2 = cmd2.ExecuteReader();

                    while (dr2.Read())
                    {
                        lastStudID = int.Parse(dr2["LastID"].ToString());
                    }

                    dr2.Close();
                }
                catch (Exception err)
                {

                }
                finally
                {
                    dbConn.Close();
                }
                #endregion GetStudentID()


                studentID = lastStudID;

                lblStudent.Text = studentID.ToString();
            }

        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
           
            fschild.Visible = false;
            fsmedical.Visible = true;


            divStudentPersonalInfo.Visible = true;


        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            fschild.Visible = true;
            fsmedical.Visible = false;

            divStudentPersonalInfo.Visible = true;
        }
    }
}