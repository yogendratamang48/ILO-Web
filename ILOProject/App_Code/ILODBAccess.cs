using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace ILOProject.App_Code
{
    public class ILODBAccess
    {

        public static DataTable getDropDownData(string tblName)
        {
            try
            {
                SqlCommand CMD = new SqlCommand();
                CMD.Connection = ILODBConfig.GetConnection();
                CMD.CommandType = CommandType.Text;
                CMD.CommandText = "Select * From " + tblName;
                SqlDataAdapter SDA = new SqlDataAdapter(CMD);
                DataTable DT = new DataTable();
                SDA.Fill(DT);
                ILODBConfig.GetConnection().Dispose();
                CMD.Connection.Dispose();
                CMD = null;
                SDA.Dispose();
                return DT;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }
        }
        public static DataTable getDropDownData(string tblFields, string tblName, string whereCond)
        {
            try
            {
                SqlCommand CMD = new SqlCommand();
                CMD.Connection = ILODBConfig.GetConnection();
                CMD.CommandType = CommandType.Text;
                CMD.CommandText = "Select " + tblFields + " From " + tblName + " where " + whereCond;
                SqlDataAdapter SDA = new SqlDataAdapter(CMD);
                DataTable DT = new DataTable();
                SDA.Fill(DT);
                ILODBConfig.GetConnection().Dispose();
                CMD.Connection.Dispose();
                CMD = null;
                SDA.Dispose();
                return DT;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }
        }

        public static int saveDataIntblMain(tblMain tblMainClass)
        {

            string storeProcedureName = "sp_Insert_tblMain";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldTypeID", tblMainClass.fldTypeID);
                    cmd.Parameters.AddWithValue("@fldLocation", tblMainClass.fldLocation);
                    cmd.Parameters.AddWithValue("@fldSerialNo", tblMainClass.fldSerialNo);
                    cmd.Parameters.AddWithValue("@fldFormNo", tblMainClass.fldFormNo);
                    cmd.Parameters.AddWithValue("@fldFormFillPlace", tblMainClass.fldFormFillPlace);
                    cmd.Parameters.AddWithValue("@fldFormFillDate", tblMainClass.fldFormFillDate);
                    cmd.Parameters.AddWithValue("@fldFormAgree", tblMainClass.fldFormAgree);
                    cmd.Parameters.AddWithValue("@fldAnswererName", tblMainClass.fldAnswererName);
                    cmd.Parameters.AddWithValue("@fldAnsContactNo", tblMainClass.fldAnsContactNo);
                    cmd.Parameters.AddWithValue("@fldMainName", tblMainClass.fldMainName);
                    cmd.Parameters.AddWithValue("@fldMainProfessionID", tblMainClass.fldMainProfessionID);
                    cmd.Parameters.AddWithValue("@fldMainCastID", tblMainClass.fldMainCastID);
                    cmd.Parameters.AddWithValue("@fldMainReligionID", tblMainClass.fldMainReligionID);
                    cmd.Parameters.AddWithValue("@fldMainStayTypeID", tblMainClass.fldMainStayTypeID);
                    cmd.Parameters.AddWithValue("@fldMainMenNo", tblMainClass.fldMainMenNo);
                    cmd.Parameters.AddWithValue("@fldMainWomenNo", tblMainClass.fldMainWomenNo);
                    cmd.Parameters.AddWithValue("@fldMainBoysNo", tblMainClass.fldMainBoysNo);
                    cmd.Parameters.AddWithValue("@fldMainGirlsNo", tblMainClass.fldMainGirlsNo);
                    cmd.Parameters.AddWithValue("@fldMainFamilyTotal", tblMainClass.fldMainFamilyTotal);
                    cmd.Parameters.AddWithValue("@fldMainEducation", tblMainClass.fldMainEducation);
                    cmd.Parameters.AddWithValue("@fldSurveyerName", tblMainClass.fldSurveyerName);
                    cmd.Parameters.AddWithValue("@fldSubmitDate", tblMainClass.fldSubmitDate);
                    cmd.Parameters.AddWithValue("@fldSurveyerNote", tblMainClass.fldSurveyerNote);
                    cmd.Parameters.AddWithValue("@fldMainNote", tblMainClass.fldMainNote);
                    cmd.Parameters.AddWithValue("@fldNote", tblMainClass.fldNote);
                    cmd.Parameters.AddWithValue("@fldWorkPlace", tblMainClass.fldWorkPlace);
                    rowAffected = int.Parse(cmd.ExecuteScalar().ToString());
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }


        }

        public static int saveDataIntblKnowledge(tblKnowledge tblKnowledgeClass)
        {
            string storeProcedureName = "sp_Insert_tblKnowledge";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblKnowledgeClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildRight", tblKnowledgeClass.fldChildRight);
                    cmd.Parameters.AddWithValue("@fldChildRightDesc", tblKnowledgeClass.fldChildRightDesc);
                    cmd.Parameters.AddWithValue("@fldNoWorkBelow14", tblKnowledgeClass.fldNoWorkBelow14);
                    cmd.Parameters.AddWithValue("@fldAgreeNoWorkBelow14", tblKnowledgeClass.fldAgreeNoWorkBelow14);
                    cmd.Parameters.AddWithValue("@fldNoWorkBelow14Desc", tblKnowledgeClass.fldNoWorkBelow14Desc);
                    cmd.Parameters.AddWithValue("@fldChildLabourRisk", tblKnowledgeClass.fldChildLabourRisk);
                    cmd.Parameters.AddWithValue("@fldNoChildLabourDesc", tblKnowledgeClass.fldNoChildLabourDesc);
                    cmd.Parameters.AddWithValue("@fldKnowChildAbuse", tblKnowledgeClass.fldKnowChildAbuse);
                    cmd.Parameters.AddWithValue("@fldKnowAdultAvailable", tblKnowledgeClass.fldKnowAdultAvailable);
                    cmd.Parameters.AddWithValue("@fldUseAdultNotChild", tblKnowledgeClass.fldUseAdultNotChild);
                    cmd.Parameters.AddWithValue("@fldUseAdultNotChildDesc", tblKnowledgeClass.fldUseAdultNotChildDesc);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }

        public static int saveDataIntblChildLabour(tblChildLabour tblChildLabourClass)
        {
            string storeProcedureName = "sp_Insert_tblChildLabour";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblChildLabourClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildName", tblChildLabourClass.fldChildName);
                    cmd.Parameters.AddWithValue("@fldChildGenderID", tblChildLabourClass.fldChildGenderID);
                    cmd.Parameters.AddWithValue("@fldChildBirthDate", tblChildLabourClass.fldChildBirthDate);
                    cmd.Parameters.AddWithValue("@fldChildAge", tblChildLabourClass.fldChildAge);
                    cmd.Parameters.AddWithValue("@fldChildCastID", tblChildLabourClass.fldChildCastID);
                    cmd.Parameters.AddWithValue("@fldChildReligionID", tblChildLabourClass.fldChildReligionID);
                    cmd.Parameters.AddWithValue("@fldChildHealth", tblChildLabourClass.fldChildHealth);
                    cmd.Parameters.AddWithValue("@fldChildBirthReg", tblChildLabourClass.fldChildBirthReg);
                    cmd.Parameters.AddWithValue("@fldChildStayTypeID", tblChildLabourClass.fldChildStayTypeID);
                    cmd.Parameters.AddWithValue("@fldChildAdditionalIncome", tblChildLabourClass.fldChildAdditionalIncome);

                    rowAffected = int.Parse(cmd.ExecuteScalar().ToString());
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblChildLabourDetails(tblChildLabourDetails tblChildLabourDetailsClass)
        {
            string storeProcedureName = "sp_Insert_tblChildLabourDetails";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblChildLabourDetailsClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildLabourID", tblChildLabourDetailsClass.fldChildLabourID);
                    cmd.Parameters.AddWithValue("@fldChildStudyStateID", tblChildLabourDetailsClass.fldChildStudyStateID);
                    cmd.Parameters.AddWithValue("@fldChildStudyTypeID", tblChildLabourDetailsClass.fldChildStudyTypeID);
                    cmd.Parameters.AddWithValue("@fldChildSchool", tblChildLabourDetailsClass.fldChildSchool);
                    cmd.Parameters.AddWithValue("@fldChildSchoolGrade", tblChildLabourDetailsClass.fldChildSchoolGrade);
                    cmd.Parameters.AddWithValue("@fldChildSchoolExpenseID", tblChildLabourDetailsClass.fldChildSchoolExpenseID);
                    cmd.Parameters.AddWithValue("@fldChildLeaveSchoolGrade", tblChildLabourDetailsClass.fldChildLeaveSchoolGrade);
                    cmd.Parameters.AddWithValue("@fldChildLeaveSchoolDesc", tblChildLabourDetailsClass.fldChildLeaveSchoolDesc);
                    cmd.Parameters.AddWithValue("@fldChildTraining", tblChildLabourDetailsClass.fldChildTraining);
                    cmd.Parameters.AddWithValue("@fldChildTrainingPlace", tblChildLabourDetailsClass.fldChildTrainingPlace);
                    cmd.Parameters.AddWithValue("@fldChildTrainingStay", tblChildLabourDetailsClass.fldChildTrainingStay);
                    cmd.Parameters.AddWithValue("@fldChildInterestedArea", tblChildLabourDetailsClass.fldChildInterestedArea);
                    cmd.Parameters.AddWithValue("@fldChildStudyContinue", tblChildLabourDetailsClass.fldChildStudyContinue);
                    cmd.Parameters.AddWithValue("@fldChildStudyHelpSelf", tblChildLabourDetailsClass.fldChildStudyHelpSelf);
                    cmd.Parameters.AddWithValue("@fldChildStudyHelpFamily", tblChildLabourDetailsClass.fldChildStudyHelpFamily);
                    cmd.Parameters.AddWithValue("@fldChildStudyHelpOther", tblChildLabourDetailsClass.fldChildStudyHelpOther);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblAboutChildLabour(tblAboutChildLabour tblAboutChildLabourClass)
        {
            string storeProcedureName = "sp_Insert_tblAboutChildLabour";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblAboutChildLabourClass.fldID);
                    cmd.Parameters.AddWithValue("@fldStayTypeID", tblAboutChildLabourClass.fldStayTypeID);
                    cmd.Parameters.AddWithValue("@fldAdditionalIncome", tblAboutChildLabourClass.fldAdditionalIncome);
                    cmd.Parameters.AddWithValue("@fldChildLabour", tblAboutChildLabourClass.fldChildLabour);
                    cmd.Parameters.AddWithValue("@fldChildBoysNo", tblAboutChildLabourClass.fldChildBoysNo);
                    cmd.Parameters.AddWithValue("@fldChildGirlsNo", tblAboutChildLabourClass.fldChildGirlsNo);
                    cmd.Parameters.AddWithValue("@fldChildTotal", tblAboutChildLabourClass.fldChildTotal);
                    cmd.Parameters.AddWithValue("@fldChildSchoolYes", tblAboutChildLabourClass.fldChildSchoolYes);
                    cmd.Parameters.AddWithValue("@fldChildSchoolNo", tblAboutChildLabourClass.fldChildSchoolNo);
                    cmd.Parameters.AddWithValue("@fldSchoolName", tblAboutChildLabourClass.fldSchoolName);
                    cmd.Parameters.AddWithValue("@fldSchoolAddress", tblAboutChildLabourClass.fldSchoolAddress);
                    cmd.Parameters.AddWithValue("@fldLabourTakenID", tblAboutChildLabourClass.fldLabourTakenID);
                    cmd.Parameters.AddWithValue("@fldLabourCause", tblAboutChildLabourClass.fldLabourCause);
                    cmd.Parameters.AddWithValue("@fldLabourWentHow", tblAboutChildLabourClass.fldLabourWentHow);
                    cmd.Parameters.AddWithValue("@fldJobAggrement", tblAboutChildLabourClass.fldJobAggrement);
                    cmd.Parameters.AddWithValue("@fldJobAgreementPoints", tblAboutChildLabourClass.fldJobAgreementPoints);
                    cmd.Parameters.AddWithValue("@fldChildWorkReason", tblAboutChildLabourClass.fldChildWorkReason);
                    cmd.Parameters.AddWithValue("@fldTimeIntervalMonth", tblAboutChildLabourClass.fldTimeIntervalMonth);
                    cmd.Parameters.AddWithValue("@fldSalaryID", tblAboutChildLabourClass.fldSalaryID);
                    cmd.Parameters.AddWithValue("@fldContactTimes", tblAboutChildLabourClass.fldContactTimes);
                    cmd.Parameters.AddWithValue("@fldLabourTypeID", tblAboutChildLabourClass.fldLabourTypeID);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblChildLabourMainKa(tblChildLabourMainKa tblChildLabourMainKaClass)
        {
            string storeProcedureName = "sp_Insert_tblChildLabourMainKa";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblChildLabourMainKaClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildNameKa", tblChildLabourMainKaClass.fldChildNameKa);
                    cmd.Parameters.AddWithValue("@fldChildAgeKa", tblChildLabourMainKaClass.fldChildAgeKa);
                    cmd.Parameters.AddWithValue("@fldParentNameKa", tblChildLabourMainKaClass.fldParentNameKa);
                    cmd.Parameters.AddWithValue("@fldAddressKa", tblChildLabourMainKaClass.fldAddressKa);
                    cmd.Parameters.AddWithValue("@fldContactNoKa", tblChildLabourMainKaClass.fldContactNoKa);
                    //cmd.Parameters.AddWithValue("@fldNoteKa", tblChildLabourMainKaClass.fldNoteKa);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblFamilyDetails(tblFamilyDetails tblFamilyDetailsClass)
        {
            string storeProcedureName = "sp_Insert_tblFamilyDetails";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;
                    cmd.Parameters.AddWithValue("@fldID", tblFamilyDetailsClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildLabourID", tblFamilyDetailsClass.fldChildLabourID);
                    cmd.Parameters.AddWithValue("@fldFamilyName", tblFamilyDetailsClass.fldFamilyName);
                    cmd.Parameters.AddWithValue("@fldFamilyGenderID", tblFamilyDetailsClass.fldFamilyGenderID);
                    cmd.Parameters.AddWithValue("@fldFamilyAge", tblFamilyDetailsClass.fldFamilyAge);
                    cmd.Parameters.AddWithValue("@fldFamilyRelationID", tblFamilyDetailsClass.fldFamilyRelationID);
                    cmd.Parameters.AddWithValue("@fldFamilyEducation", tblFamilyDetailsClass.fldFamilyEducation);
                    cmd.Parameters.AddWithValue("@fldFamilyOccupation", tblFamilyDetailsClass.fldFamilyOccupation);
                    cmd.Parameters.AddWithValue("@fldFamilyIdentitydoc", tblFamilyDetailsClass.fldFamilyIdentitydoc);
                    cmd.Parameters.AddWithValue("@fldFamilyLabourStatus", tblFamilyDetailsClass.fldFamilyLabourStatus);
                    cmd.Parameters.AddWithValue("@fldFamilyCurState", tblFamilyDetailsClass.fldFamilyCurState);
                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblChildWorkState(tblChildWorkState tblChildWorkStateClass)
        {
            string storeProcedureName = "sp_Insert_tblChildWorkState";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblChildWorkStateClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildLabourID", tblChildWorkStateClass.fldChildLabourID);
                    cmd.Parameters.AddWithValue("@fldWorkStartTime", tblChildWorkStateClass.fldWorkStartTime);
                    cmd.Parameters.AddWithValue("@fldWorkPlaceKnow", tblChildWorkStateClass.fldWorkPlaceKnow);
                    cmd.Parameters.AddWithValue("@fldWorkContact", tblChildWorkStateClass.fldWorkContact);
                    cmd.Parameters.AddWithValue("@fldWorkContactTypeID", tblChildWorkStateClass.fldWorkContactTypeID);
                    cmd.Parameters.AddWithValue("@fldWorkTimePerDay", tblChildWorkStateClass.fldWorkTimePerDay);
                    cmd.Parameters.AddWithValue("@fldWorkTimeDay", tblChildWorkStateClass.fldWorkTimeDay);
                    cmd.Parameters.AddWithValue("@fldWorkTimeEvening", tblChildWorkStateClass.fldWorkTimeEvening);
                    cmd.Parameters.AddWithValue("@fldWorkDesc", tblChildWorkStateClass.fldWorkDesc);
                    cmd.Parameters.AddWithValue("@fldWorkPayAmonunt", tblChildWorkStateClass.fldWorkPayAmonunt);
                    cmd.Parameters.AddWithValue("@fldWorkPayTypeID", tblChildWorkStateClass.fldWorkPayTypeID);
                    cmd.Parameters.AddWithValue("@fldWorkPayReceiverID", tblChildWorkStateClass.fldWorkPayReceiverID);
                    cmd.Parameters.AddWithValue("@fldWorkHoliday", tblChildWorkStateClass.fldWorkHoliday);
                    cmd.Parameters.AddWithValue("@fldWorkHolidayID", tblChildWorkStateClass.fldWorkHolidayID);
                    cmd.Parameters.AddWithValue("@fldWorkPayReceiverName", tblChildWorkStateClass.fldWorkPayReceiverName);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblMainFamilyBehaviour(tblMainFamilyBehaviour tblMainFamilyBehaviourClass)
        {
            string storeProcedureName = "sp_Insert_tblMainFamilyBehaviour";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldID", tblMainFamilyBehaviourClass.fldID);
                    cmd.Parameters.AddWithValue("@fldChildLabourID", tblMainFamilyBehaviourClass.fldChildLabourID);
                    cmd.Parameters.AddWithValue("@fldLoveMost", tblMainFamilyBehaviourClass.fldLoveMost);
                    cmd.Parameters.AddWithValue("@fldLoveWay", tblMainFamilyBehaviourClass.fldLoveWay);
                    cmd.Parameters.AddWithValue("@fldAbuse", tblMainFamilyBehaviourClass.fldAbuse);
                    cmd.Parameters.AddWithValue("@fldAbusePerson", tblMainFamilyBehaviourClass.fldAbusePerson);
                    cmd.Parameters.AddWithValue("@fldAbuseType", tblMainFamilyBehaviourClass.fldAbuseType);
                    cmd.Parameters.AddWithValue("@fldAbuseReport", tblMainFamilyBehaviourClass.fldAbuseReport);
                    cmd.Parameters.AddWithValue("@fldAbuseReportDesc", tblMainFamilyBehaviourClass.fldAbuseReportDesc);
                    cmd.Parameters.AddWithValue("@fldFoodStatus", tblMainFamilyBehaviourClass.fldFoodStatus);
                    cmd.Parameters.AddWithValue("@fldSleepStatus", tblMainFamilyBehaviourClass.fldSleepStatus);
                    cmd.Parameters.AddWithValue("@fldStayStatus", tblMainFamilyBehaviourClass.fldStayStatus);
                    cmd.Parameters.AddWithValue("@fldEntertainmentStatus", tblMainFamilyBehaviourClass.fldEntertainmentStatus);
                    cmd.Parameters.AddWithValue("@fldSecuritySeperateRoom", tblMainFamilyBehaviourClass.fldSecuritySeperateRoom);
                    cmd.Parameters.AddWithValue("@fldSecurityDesc", tblMainFamilyBehaviourClass.fldSecurityDesc);
                    cmd.Parameters.AddWithValue("@fldHealthStatusID", tblMainFamilyBehaviourClass.fldHealthStatusID);
                    cmd.Parameters.AddWithValue("@fldCertificate", tblMainFamilyBehaviourClass.fldCertificate);
                    cmd.Parameters.AddWithValue("@fldFuturePlan", tblMainFamilyBehaviourClass.fldFuturePlan);
                    cmd.Parameters.AddWithValue("@fldPlanReturnHome", tblMainFamilyBehaviourClass.fldPlanReturnHome);
                    cmd.Parameters.AddWithValue("@fldNoPlanReturnHomeID", tblMainFamilyBehaviourClass.fldNoPlanReturnHomeID);
                    cmd.Parameters.AddWithValue("@fldWhyLeaveHome", tblMainFamilyBehaviourClass.fldWhyLeaveHome);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
        public static int saveDataIntblAddress(tblAddress tblAddressClass)
        {
            string storeProcedureName = "sp_Insert_tblAddress";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = ILODBConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldId", tblAddressClass.fldId);
                    cmd.Parameters.AddWithValue("@fldAddType", tblAddressClass.fldAddType);
                    cmd.Parameters.AddWithValue("@fldDistrict", tblAddressClass.fldDistrict);
                    cmd.Parameters.AddWithValue("@fldVillage", tblAddressClass.fldVillage);
                    cmd.Parameters.AddWithValue("@fldVMName", tblAddressClass.fldVMName);
                    cmd.Parameters.AddWithValue("@fldWardNo", tblAddressClass.fldWardNo);
                    cmd.Parameters.AddWithValue("@fldTole", tblAddressClass.fldTole);
                    cmd.Parameters.AddWithValue("@fldHouseNo", tblAddressClass.fldHouseNo);
                    cmd.Parameters.AddWithValue("@fldAddNote", tblAddressClass.fldAddNote);

                    rowAffected = cmd.ExecuteNonQuery();
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                ILODBConfig.GetConnection().Close();
            }

        }
    }
}