using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ILOProject.App_Code;
using System.Data;
using System.Collections;

namespace ILOProject.Forms
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {

            txtDateToFill.Value = Convert.ToDateTime("2070-1-1").ToShortDateString();
            txtBirthdateTO.Value = Convert.ToDateTime("2070-1-1").ToShortDateString();
            chkAbuseType.DataSource = ILODBAccess.getDropDownData("tblAbuseType");
            chkAbuseType.DataTextField = "fldAbuseTypeDesc";
            chkAbuseType.DataValueField = "fldAbuseTypeID";
            chkAbuseType.DataBind();

            ddlEmployerCast.DataSource = ILODBAccess.getDropDownData("tblCast");
            ddlEmployerCast.DataTextField = "fldCastDesc";
            ddlEmployerCast.DataValueField = "fldCastID";
            ddlEmployerCast.DataBind();

            ddlChildCastInfo.DataSource = ILODBAccess.getDropDownData("tblCast");
            ddlChildCastInfo.DataTextField = "fldCastDesc";
            ddlChildCastInfo.DataValueField = "fldCastID";
            ddlChildCastInfo.DataBind();

            ddlChildSex.DataSource = ILODBAccess.getDropDownData("tblGender");
            ddlChildSex.DataTextField = "fldGenderDesc";
            ddlChildSex.DataValueField = "fldGenderID";
            ddlChildSex.DataBind();

            ddlFamilyMember1Sex.DataSource = ILODBAccess.getDropDownData("tblGender");
            ddlFamilyMember1Sex.DataTextField = "fldGenderDesc";
            ddlFamilyMember1Sex.DataValueField = "fldGenderID";
            ddlFamilyMember1Sex.DataBind();
            //ddlFamilyMember2Sex.DataSource = ILODBAccess.getDropDownData("tblGender");
            //ddlFamilyMember2Sex.DataTextField = "fldGenderDesc";
            //ddlFamilyMember2Sex.DataValueField = "fldGenderID";
            //ddlFamilyMember2Sex.DataBind();
            //ddlFamilyMember3Sex.DataSource = ILODBAccess.getDropDownData("tblGender");
            //ddlFamilyMember3Sex.DataTextField = "fldGenderDesc";
            //ddlFamilyMember3Sex.DataValueField = "fldGenderID";
            //ddlFamilyMember3Sex.DataBind();

            ddlHealthService.DataSource = ILODBAccess.getDropDownData("tblHealthStatus");
            ddlHealthService.DataTextField = "fldHealthStatusDesc";
            ddlHealthService.DataValueField = "fldHealthStatusID";
            ddlHealthService.DataBind();


            chkJobAgreement.DataSource = ILODBAccess.getDropDownData("tblJobAgreement");
            chkJobAgreement.DataTextField = "fldJAgreementDesc";
            chkJobAgreement.DataValueField = "fldJAgreementID";
            chkJobAgreement.DataBind();

            ddlLabourCause.DataSource = ILODBAccess.getDropDownData("tblLabourCause");
            ddlLabourCause.DataTextField = "fldLCauseDesc";
            ddlLabourCause.DataValueField = "fldLCauseID";
            ddlLabourCause.DataBind();

            ddlHowChildSearched.DataSource = ILODBAccess.getDropDownData("tblLabourTaken");
            ddlHowChildSearched.DataTextField = "fldLTakenDesc";
            ddlHowChildSearched.DataValueField = "fldLTakenID";
            ddlHowChildSearched.DataBind();

            //ILODBAccess.getDropDownData("tblLabourType");
            //ILODBAccess.getDropDownData("tblLabourWentHow");

            chkLoveway.DataSource = ILODBAccess.getDropDownData("tblLoveWay");
            chkLoveway.DataTextField = "fldLovewayDesc";
            chkLoveway.DataValueField = "fldLoveWayID";
            chkLoveway.DataBind();

            chkWhyNotReturnChild.DataSource = ILODBAccess.getDropDownData("tblNoReturnHome");
            chkWhyNotReturnChild.DataTextField = "fldNReturnHomeDesc";
            chkWhyNotReturnChild.DataValueField = "fldNReturnHomeID";
            chkWhyNotReturnChild.DataBind();


            ddlPayementReceiver.DataSource = ILODBAccess.getDropDownData("tblPaymentReceiver");
            ddlPayementReceiver.DataTextField = "fldPReceiverDesc";
            ddlPayementReceiver.DataValueField = "fldPReceiverID";
            ddlPayementReceiver.DataBind();

            ddlEmployerProfession.DataSource = ILODBAccess.getDropDownData("tblProfession");
            ddlEmployerProfession.DataTextField = "fldProfessionDesc";
            ddlEmployerProfession.DataValueField = "fldProfessionID";
            ddlEmployerProfession.DataBind();

            ddlWhoLovesMost.DataSource = ILODBAccess.getDropDownData("tblRelation");
            ddlWhoLovesMost.DataTextField = "fldRelationDesc";
            ddlWhoLovesMost.DataValueField = "fldRelationID";
            ddlWhoLovesMost.DataBind();

            ddlWhoHatesMost.DataSource = ILODBAccess.getDropDownData("tblRelation");
            ddlWhoHatesMost.DataTextField = "fldRelationDesc";
            ddlWhoHatesMost.DataValueField = "fldRelationID";
            ddlWhoHatesMost.DataBind();

            ddlFamilyMember1Relation.DataSource = ILODBAccess.getDropDownData("tblRelation");
            ddlFamilyMember1Relation.DataTextField = "fldRelationDesc";
            ddlFamilyMember1Relation.DataValueField = "fldRelationID";
            ddlFamilyMember1Relation.DataBind();


            ddlEmployerReligion.DataSource = ILODBAccess.getDropDownData("tblReligion");
            ddlEmployerReligion.DataTextField = "fldReligionDesc";
            ddlEmployerReligion.DataValueField = "fldReligionID";
            ddlEmployerReligion.DataBind();

            ddlChildReligion.DataSource = ILODBAccess.getDropDownData("tblReligion");
            ddlChildReligion.DataTextField = "fldReligionDesc";
            ddlChildReligion.DataValueField = "fldReligionID";
            ddlChildReligion.DataBind();

            ddlSalaryInfo.DataSource = ILODBAccess.getDropDownData("tblSalary");
            ddlSalaryInfo.DataTextField = "fldSalaryDesc";
            ddlSalaryInfo.DataValueField = "fldSalaryID";
            ddlSalaryInfo.DataBind();

            ddlHabitantStatus.DataSource = ILODBAccess.getDropDownData("tblStayTypeHome");
            ddlHabitantStatus.DataTextField = "fldStayTypeDesc";
            ddlHabitantStatus.DataValueField = "fldStayTypeID";
            ddlHabitantStatus.DataBind();

            ddlChildHome.DataSource = ILODBAccess.getDropDownData("tblStayTypeHome");
            ddlChildHome.DataTextField = "fldStayTypeDesc";
            ddlChildHome.DataValueField = "fldStayTypeID";
            ddlChildHome.DataBind();


            ddlWhoPaysEducation.DataSource = ILODBAccess.getDropDownData("tblStudyExpense");
            ddlWhoPaysEducation.DataTextField = "fldStudyExpenseDesc";
            ddlWhoPaysEducation.DataValueField = "fldStudyExpenseID";
            ddlWhoPaysEducation.DataBind();

            ddlIsChildGoingStudy.DataSource = ILODBAccess.getDropDownData("tblStudyState");
            ddlIsChildGoingStudy.DataTextField = "fldStudyStateDesc";
            ddlIsChildGoingStudy.DataValueField = "fldStudyStateID";
            ddlIsChildGoingStudy.DataBind();

            ddlStudyType.DataSource = ILODBAccess.getDropDownData("tblStudyType");
            ddlStudyType.DataTextField = "fldStudyTypeDesc";
            ddlStudyType.DataValueField = "fldStudyTypeID";
            ddlStudyType.DataBind();

            DataTable dtTimeInterval = ILODBAccess.getDropDownData("tblTimeInterval");
            ddlVacationFrequency.DataSource = dtTimeInterval;
            ddlVacationFrequency.DataTextField = "fldTIntervalDesc";
            ddlVacationFrequency.DataValueField = "fldTIntervalID";
            ddlVacationFrequency.DataBind();


            ddlSalaryObtainFrequency.DataSource = dtTimeInterval;
            ddlSalaryObtainFrequency.DataTextField = "fldTIntervalDesc";
            ddlSalaryObtainFrequency.DataValueField = "fldTIntervalID";
            ddlSalaryObtainFrequency.DataBind();

            ddlParentContactFrequency.DataSource = dtTimeInterval;
            ddlParentContactFrequency.DataTextField = "fldTIntervalDesc";
            ddlParentContactFrequency.DataValueField = "fldTIntervalID";
            ddlParentContactFrequency.DataBind();

            DataTable dtDistrict = ILODBAccess.getDropDownData("distinct District,District_id", "tblVDC", "1=1");
            drpPermanentDistrict.DataSource = dtDistrict;
            drpPermanentDistrict.DataTextField = "District";
            drpPermanentDistrict.DataValueField = "District_id";
            drpPermanentDistrict.DataBind();

            drpTempDistrict.DataSource = dtDistrict;
            drpTempDistrict.DataTextField = "District";
            drpTempDistrict.DataValueField = "District_id";
            drpTempDistrict.DataBind();
            //Ilodb
            //HireFire_DataAccess.getIndustryList()
            //lstIndustry.DataSource = Session("myIndustryList")
            //        lstIndustry.DataTextField = "fldIndustryName"
            //        lstIndustry.DataValueField = "fldIndustryID"
            //        lstIndustry.DataBind()
            //        lstIndustry.Items.Insert(0, SearchIndustrylistFirstValues)
            //        lstIndustry.SelectedIndex = 0
        }

        protected void drpPermanentDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            drpPermanentMunorVdc.DataSource = ILODBAccess.getDropDownData("distinct VDC_name,VDC_id", "tblVDC", " District_id=" + drpPermanentDistrict.SelectedValue.ToString());
            drpPermanentMunorVdc.DataTextField = "VDC_name";
            drpPermanentMunorVdc.DataValueField = "VDC_id";
            drpPermanentMunorVdc.DataBind();
        }

        protected void drpTempDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            drpTempMunOrVdc.DataSource = ILODBAccess.getDropDownData("distinct VDC_name,VDC_id", "tblVDC", " District_id=" + drpTempDistrict.SelectedValue.ToString());
            drpTempMunOrVdc.DataTextField = "VDC_name";
            drpTempMunOrVdc.DataValueField = "VDC_id";
            drpTempMunOrVdc.DataBind();
        }

        private void BindGrid(int rowcount)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add(new System.Data.DataColumn("परिवारको सदस्यहरुको नामावली", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("लिङ्ग", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("उमेर", typeof(int)));
            dt.Columns.Add(new System.Data.DataColumn("बालक/बालिकाको नाता", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("शैक्षिक अवस्था", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("पेशागत विवरण", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("जिवित/मृत्यु/अपाङ्ग", typeof(String)));
            //dt.Columns.Add(new System.Data.DataColumn("जिवित/मृत्यु/अपाङ्ग", typeof(String)));
            if (ViewState["CurrentData"] != null)
            {
                for (int i = 0; i < rowcount + 1; i++)
                {
                    dt = (DataTable)ViewState["CurrentData"];
                    if (dt.Rows.Count > 0)
                    {
                        dr = dt.NewRow();
                        dr[0] = dt.Rows[0][0].ToString();

                    }
                }
                dr = dt.NewRow();
                dr[0] = txtFamilyMember1Name.Text;
                dr[1] = ddlFamilyMember1Sex.SelectedItem.Text;
                dr[2] = txtFamilyMember1Age.Text;
                dr[3] = ddlFamilyMember1Relation.SelectedItem.Text;
                dr[4] = txtFamilyMember1EducationStatus.Text;
                dr[5] = txtFamilyMember1Profession.Text;
                dr[6] = ddlFamilyMember1CurrentStatus.SelectedItem.Text;



                dt.Rows.Add(dr);

            }
            else
            {
                dr = dt.NewRow();
                dr[0] = txtFamilyMember1Name.Text;
                dr[1] = ddlFamilyMember1Sex.SelectedItem.Text;
                dr[2] = txtFamilyMember1Age.Text;
                dr[3] = ddlFamilyMember1Relation.SelectedItem.Text;
                dr[4] = txtFamilyMember1EducationStatus.Text;
                dr[5] = txtFamilyMember1Profession.Text;
                dr[6] = ddlFamilyMember1CurrentStatus.SelectedItem.Text;

                dt.Rows.Add(dr);

            }

            // If ViewState has a data then use the value as the DataSource
            if (ViewState["CurrentData"] != null)
            {
                gdvFamilyDetails.DataSource = (DataTable)ViewState["CurrentData"];
                gdvFamilyDetails.DataBind();
            }
            else
            {
                // Bind GridView with the initial data assocaited in the DataTable
                gdvFamilyDetails.DataSource = dt;
                gdvFamilyDetails.DataBind();

            }
            // Store the DataTable in ViewState to retain the values
            ViewState["CurrentData"] = dt;

        }
        protected void btnAddRow_Click(object sender, EventArgs e)
        {
            if (ViewState["CurrentData"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentData"];
                int count = dt.Rows.Count;
                BindGrid(count);
            }
            else
            {
                BindGrid(1);
            }
            txtFamilyMember1Name.Text = string.Empty;

            txtFamilyMember1Name.Focus();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblMain mainClass = new tblMain();
            mainClass.fldTypeID = 1;
            mainClass.fldLocation = ddlMunicipality.SelectedItem.Text.Trim();
            mainClass.fldSerialNo = txtFormSerialNo.Text.Trim();
            mainClass.fldFormNo = int.Parse(txtFormNp.Text.Trim());
            mainClass.fldFormFillPlace = txtFomFillPlace.Text.Trim();
            mainClass.fldFormFillDate = DateTime.Parse(txtDateFormFill.Value.Trim());
            mainClass.fldFormAgree = Convert.ToBoolean(int.Parse(rblFormAgree.SelectedValue));
            mainClass.fldAnswererName = txtAnswererName.Text.Trim();
            mainClass.fldAnsContactNo = txtAnsContactNo.Text.Trim();
            mainClass.fldMainName = txtEmployerFullName.Text.Trim();
            mainClass.fldMainProfessionID = int.Parse(ddlEmployerProfession.SelectedValue);
            mainClass.fldMainCastID = int.Parse(ddlEmployerCast.SelectedValue);
            mainClass.fldMainReligionID = int.Parse(ddlEmployerReligion.SelectedValue);
            mainClass.fldMainStayTypeID = int.Parse(ddlHabitantStatus.SelectedValue);
            mainClass.fldMainMenNo = int.Parse(txtEmployerFamilyMenNo.Text.Trim());
            mainClass.fldMainWomenNo = int.Parse(txtEmployerFamilyWomenNo.Text.Trim());
            mainClass.fldMainBoysNo = int.Parse(txtEmployerFamilyBoysNo.Text.Trim());
            mainClass.fldMainGirlsNo = int.Parse(txtEmployerFamilyGirlsNo.Text.Trim());
            mainClass.fldMainFamilyTotal = mainClass.fldMainMenNo + mainClass.fldMainWomenNo + mainClass.fldMainGirlsNo + mainClass.fldMainBoysNo;
            mainClass.fldMainEducation = txtEmployerEducation.Text.Trim();
            mainClass.fldSurveyerName = txtSurveyerName.Text.Trim();
            mainClass.fldSubmitDate = DateTime.Parse(txtSubmitDates.Value.Trim());
            mainClass.fldSurveyerNote = txtSurveyerNote.Text.Trim();
            mainClass.fldMainNote = txtEmployerNote.Text.Trim();
            mainClass.fldNote = "";
            mainClass.fldWorkPlace = "";



            tblAddress addPermanent = new tblAddress();
            addPermanent.fldAddType = "स्थायी";
            addPermanent.fldDistrict = int.Parse(drpPermanentDistrict.SelectedValue);
            addPermanent.fldVillage = Convert.ToBoolean(int.Parse(rblPermanentVillage.SelectedValue));
            addPermanent.fldVMName = drpPermanentMunorVdc.SelectedItem.Text.ToString();
            addPermanent.fldWardNo = int.Parse(txtPermanentWardNo.Text.Trim());
            addPermanent.fldTole = txtPermanentTole.Text.Trim();
            addPermanent.fldHouseNo = txtPermanentHouseNo.Text.Trim();
            addPermanent.fldAddNote = txtPermanetNote.Text.Trim();

            tblAddress addTemp = new tblAddress();
            addTemp.fldAddType = "अस्थायी";
            addTemp.fldDistrict = int.Parse(drpTempDistrict.SelectedValue);
            addTemp.fldVillage = Convert.ToBoolean(int.Parse(rblTempVillage.SelectedValue));
            addTemp.fldVMName = drpTempMunOrVdc.SelectedItem.Text.ToString();
            addTemp.fldWardNo = int.Parse(txtTempWardNo.Text.Trim());
            addTemp.fldTole = txtTempTole.Text.Trim();
            addTemp.fldHouseNo = txtTempHouseNo.Text.Trim();
            addTemp.fldAddNote = txtTempNote.Text.Trim();

            tblKnowledge knowledgeClass = new tblKnowledge();
            knowledgeClass.fldChildRight = Convert.ToBoolean(int.Parse(ddlKnowChildRight.SelectedValue));
            knowledgeClass.fldChildRightDesc = txtWhatIsChildRight.Text.Trim();
            knowledgeClass.fldNoWorkBelow14 = Convert.ToBoolean(int.Parse(ddlNoChildLaborBelow14.SelectedValue));
            knowledgeClass.fldAgreeNoWorkBelow14 = Convert.ToBoolean(int.Parse(ddlViewAboutNoChildLaborBelow14.SelectedValue));
            knowledgeClass.fldNoWorkBelow14Desc = txtViewAboutNoChildLaborBelow14.Text.Trim();
            knowledgeClass.fldChildLabourRisk = Convert.ToBoolean(int.Parse(ddlKnowThreeEffectsOfChildLabor.SelectedValue));
            knowledgeClass.fldNoChildLabourDesc = "";
            knowledgeClass.fldKnowChildAbuse = false;
            knowledgeClass.fldKnowAdultAvailable = Convert.ToBoolean(int.Parse(ddlKnowMaturedLabor.SelectedValue));
            knowledgeClass.fldUseAdultNotChild = Convert.ToBoolean(int.Parse(ddlUseAdultNotChild.SelectedValue));
            knowledgeClass.fldUseAdultNotChildDesc = txtWhyMaturedLabor.Text.Trim();

            tblChildLabour childLabourClass = new tblChildLabour();
            childLabourClass.fldChildName = txtChildName.Text.Trim();
            childLabourClass.fldChildGenderID = int.Parse(ddlChildSex.SelectedValue);
            childLabourClass.fldChildBirthDate = DateTime.Parse(txtBirthDate.Value.Trim());
            childLabourClass.fldChildAge = int.Parse(txtChildAge.Text.Trim());
            childLabourClass.fldChildCastID = int.Parse(ddlChildCastInfo.SelectedValue);
            childLabourClass.fldChildReligionID = int.Parse(ddlChildReligion.SelectedValue);
            childLabourClass.fldChildHealth = txtChildPhysicalStatus.Text.Trim();
            childLabourClass.fldChildBirthReg = Convert.ToBoolean(int.Parse(ddlIsBirthRegistration.SelectedValue));
            childLabourClass.fldChildStayTypeID = int.Parse(ddlChildHome.SelectedValue);
            childLabourClass.fldChildAdditionalIncome = txtOtherIncomeSource.Text.Trim();

            tblChildLabourDetails childLabourDetailClass = new tblChildLabourDetails();
            childLabourDetailClass.fldChildStudyStateID = int.Parse(ddlIsChildGoingStudy.SelectedValue);
            childLabourDetailClass.fldChildStudyTypeID = int.Parse(ddlStudyType.SelectedValue);
            childLabourDetailClass.fldChildSchool = txtSchoolOrCenterNameAndClass.Text.Trim();
            childLabourDetailClass.fldChildSchoolGrade = int.Parse(txtSchoolOrCenterClass.Text.Trim());
            childLabourDetailClass.fldChildSchoolExpenseID = int.Parse(ddlWhoPaysEducation.SelectedValue);
            childLabourDetailClass.fldChildLeaveSchoolGrade = int.Parse(txtAtWhatClassSchoolLeft.Text.Trim());
            childLabourDetailClass.fldChildLeaveSchoolDesc = txtWhySchoolLeft.Text.Trim();
            childLabourDetailClass.fldChildTraining = Convert.ToBoolean(int.Parse(ddlWantVocationalTraining.SelectedValue));
            childLabourDetailClass.fldChildTrainingPlace = txtWhereVocationalTraining.Text.Trim();

            childLabourDetailClass.fldChildTrainingStay = txtWhereToStayDuringVocationalTraining.Text.Trim();
            childLabourDetailClass.fldChildInterestedArea = txtWhatWantToDo.Text.Trim();
            //childLabourDetailClass.fldChildStudyContinue = 0;
            childLabourDetailClass.fldChildStudyHelpSelf = txtHelpYourself.Text.Trim();
            childLabourDetailClass.fldChildStudyHelpFamily = txtHelpFamily.Text.Trim();
            childLabourDetailClass.fldChildStudyHelpOther = txtHelpOther.Text.Trim();

            tblChildWorkState childWorkClass = new tblChildWorkState();
            childWorkClass.fldWorkStartTime = float.Parse(txtChildWorkedYear.Text.Trim()) + float.Parse(txtChildWorkedMonth.Text.Trim()) / 12;
            childWorkClass.fldWorkPlaceKnow = Convert.ToBoolean(int.Parse(ddlParentKnowWorkingStation.SelectedValue));
            childWorkClass.fldWorkContactTypeID = int.Parse(ddlParentContactFrequency.SelectedValue);
            childWorkClass.fldWorkContact = Convert.ToBoolean(int.Parse(ddlIsAllowedToContactParent.SelectedValue));
            childWorkClass.fldWorkTimePerDay = float.Parse(txtChildDailyHoursToWork.Text.Trim());
            childWorkClass.fldWorkTimeDay = float.Parse(txtChildMorningWorkTime.Text.Trim());
            childWorkClass.fldWorkTimeEvening = float.Parse(txtChildEveningWorkTime.Text.Trim());
            childWorkClass.fldWorkDesc = txtChildWhatTasksToDo.Text.Trim();
            childWorkClass.fldWorkPayAmonunt = float.Parse(txtMonthlySalary.Text.Trim());
            childWorkClass.fldWorkPayTypeID = int.Parse(ddlSalaryObtainFrequency.Text.Trim());
            childWorkClass.fldWorkPayReceiverID = int.Parse(ddlPayementReceiver.SelectedValue);
            childWorkClass.fldWorkHoliday = Convert.ToBoolean(int.Parse(ddlIsVacation.SelectedValue));
            childWorkClass.fldWorkHolidayID = int.Parse(ddlVacationFrequency.SelectedValue);
            childWorkClass.fldWorkPayReceiverName = txtOtherPersonToTakeSalary.Text.Trim();

            tblMainFamilyBehaviour mainFamilyBehaviourClass = new tblMainFamilyBehaviour();
            mainFamilyBehaviourClass.fldLoveMost = int.Parse(ddlWhoLovesMost.SelectedValue);

            string strLoveway = "";
            for (int i = 0; i < chkLoveway.Items.Count; i++)
                if (chkLoveway.Items[i].Selected)
                {
                    strLoveway += chkLoveway.Items[i].Value + ";";

                }

            mainFamilyBehaviourClass.fldLoveWay = strLoveway;
            mainFamilyBehaviourClass.fldAbuse = false;
            mainFamilyBehaviourClass.fldAbusePerson = int.Parse(ddlWhoHatesMost.SelectedValue);
            string strHateway = "";
            for (int i = 0; i < chkAbuseType.Items.Count; i++)
                if (chkAbuseType.Items[i].Selected)
                {
                    strHateway += chkAbuseType.Items[i].Value + ";";

                }
            mainFamilyBehaviourClass.fldAbuseType = strHateway;
            mainFamilyBehaviourClass.fldAbuseReport = Convert.ToBoolean(int.Parse(ddlProblemShare.SelectedValue));
            mainFamilyBehaviourClass.fldAbuseReportDesc = txtProblemShareToWhom.Text.Trim();
            mainFamilyBehaviourClass.fldFoodStatus = chkFooding.Checked;
            mainFamilyBehaviourClass.fldSleepStatus = chkSleeping.Checked;
            mainFamilyBehaviourClass.fldStayStatus = chkStaying.Checked;
            mainFamilyBehaviourClass.fldEntertainmentStatus = chkEntertainment.Checked;
            mainFamilyBehaviourClass.fldSecuritySeperateRoom = Convert.ToBoolean(int.Parse(ddlSeparateRoom.SelectedValue));
            mainFamilyBehaviourClass.fldSecurityDesc = txtRequiredSecurityEnvironment.Text.Trim();
            mainFamilyBehaviourClass.fldHealthStatusID = int.Parse(ddlHealthService.SelectedValue);
            //mainFamilyBehaviourClass.fldCertificate=0
            mainFamilyBehaviourClass.fldFuturePlan = txtFuturePlan.Text.Trim();
            mainFamilyBehaviourClass.fldPlanReturnHome = Convert.ToBoolean(int.Parse(ddlWantToReturnChild.SelectedValue));

            string strNoReturnHome = "";
            for (int i = 0; i < chkWhyNotReturnChild.Items.Count; i++)
                if (chkWhyNotReturnChild.Items[i].Selected)
                {
                    strNoReturnHome += chkWhyNotReturnChild.Items[i].Value + ";";

                }
            mainFamilyBehaviourClass.fldNoPlanReturnHomeID = strNoReturnHome;
            mainFamilyBehaviourClass.fldWhyLeaveHome = int.Parse(ddlLabourCause.SelectedValue);

            tblAboutChildLabour aboutChildLabour = new tblAboutChildLabour();
            aboutChildLabour.fldStayTypeID = 1;
            aboutChildLabour.fldAdditionalIncome = "";
            aboutChildLabour.fldChildLabour = false;
            aboutChildLabour.fldChildBoysNo = int.Parse(txtChildBoyNoInOffice.Text.Trim());
            aboutChildLabour.fldChildGirlsNo = int.Parse(txtChildGirlNoInOffice.Text.Trim());
            aboutChildLabour.fldChildTotal = int.Parse(txtChildTotalNoInOffice.Text.Trim());
            aboutChildLabour.fldChildSchoolYes = int.Parse(txtChildGoingSchoolNo.Text.Trim());
            aboutChildLabour.fldChildSchoolNo = int.Parse(txtChildNotGoingSchoolNo.Text.Trim());
            aboutChildLabour.fldSchoolName = txtChildShcoolName.Text.Trim();
            aboutChildLabour.fldSchoolAddress = txtChildSchoolAddress.Text.Trim();
            aboutChildLabour.fldLabourTakenID = int.Parse(ddlHowChildSearched.SelectedValue);
            aboutChildLabour.fldLabourCause = "";
            aboutChildLabour.fldLabourWentHow = "";
            aboutChildLabour.fldJobAggrement = ddlIsEmploymentAgreement.SelectedValue.ToString();

            string strJobAgreementPt = "";
            for (int i = 0; i < chkJobAgreement.Items.Count; i++)
                if (chkJobAgreement.Items[i].Selected)
                {
                    strJobAgreementPt += chkJobAgreement.Items[i].Value + ";";

                }

            aboutChildLabour.fldJobAgreementPoints = strJobAgreementPt;
            aboutChildLabour.fldChildWorkReason = txtMainResonToChildLabor.Text.Trim();
            aboutChildLabour.fldTimeIntervalMonth = int.Parse(txtWhenChildStartedWork.Text.Trim());
            aboutChildLabour.fldSalaryID = int.Parse(ddlSalaryInfo.SelectedValue);
            aboutChildLabour.fldContactTimes = int.Parse(txtFamilyMeetNo.Text.Trim());
            aboutChildLabour.fldLabourTypeID = 1;

            tblChildLabourMainKa childLabourKa1 = new tblChildLabourMainKa();
            tblChildLabourMainKa childLabourKa2 = new tblChildLabourMainKa();
            tblChildLabourMainKa childLabourKa3 = new tblChildLabourMainKa();
            tblChildLabourMainKa childLabourKa4 = new tblChildLabourMainKa();

            childLabourKa1.fldChildNameKa = txtChildName.Text.Trim();
            childLabourKa1.fldChildAgeKa = int.Parse(txtChildAge.Text.Trim());
            childLabourKa1.fldParentNameKa = txtChildParentName.Text.Trim();
            childLabourKa1.fldAddressKa = txtChildParentAddress.Text.Trim();
            childLabourKa1.fldContactNoKa = txtChildParentContact.Text.Trim();

            childLabourKa2.fldChildNameKa = txtChildName2.Text.Trim();
            childLabourKa2.fldChildAgeKa = int.Parse(txtChidlAge3.Text.Trim());
            childLabourKa2.fldParentNameKa = txtChildParentName2.Text.Trim();
            childLabourKa2.fldAddressKa = txtChildParentAddress2.Text.Trim();
            childLabourKa2.fldContactNoKa = txtChildParentContact2.Text.Trim();

            childLabourKa3.fldChildNameKa = txtChildName3.Text.Trim();
            childLabourKa3.fldChildAgeKa = int.Parse(txtChidlAge3.Text.Trim());
            childLabourKa3.fldParentNameKa = txtChildParentName3.Text.Trim();
            childLabourKa3.fldAddressKa = txtChildParentAddress3.Text.Trim();
            childLabourKa3.fldContactNoKa = txtChildParentContact3.Text.Trim();

            childLabourKa4.fldChildNameKa = txtChildName4.Text.Trim();
            childLabourKa4.fldChildAgeKa = int.Parse(txtChidlAge4.Text.Trim());
            childLabourKa4.fldParentNameKa = txtChildParentName4.Text.Trim();
            childLabourKa4.fldAddressKa = txtChildParentAddress4.Text.Trim();
            childLabourKa4.fldContactNoKa = txtChildParentContact4.Text.Trim();

            ArrayList arr = new ArrayList();

            if (childLabourKa1.fldChildNameKa != "")
                arr.Add(childLabourKa1);
            if (childLabourKa2.fldChildNameKa != "")
                arr.Add(childLabourKa2);

            if (childLabourKa3.fldChildNameKa != "")
                arr.Add(childLabourKa3);

            if (childLabourKa4.fldChildNameKa != "")
                arr.Add(childLabourKa4);

            int mainID = ILODBAccess.saveDataIntblMain(mainClass);
            knowledgeClass.fldID = mainID;
            ILODBAccess.saveDataIntblKnowledge(knowledgeClass);
            childLabourClass.fldID = mainID;
            int childLabourID = ILODBAccess.saveDataIntblChildLabour(childLabourClass);
            childLabourDetailClass.fldID = mainID;
            childLabourDetailClass.fldChildLabourID = childLabourID;
            ILODBAccess.saveDataIntblChildLabourDetails(childLabourDetailClass);
            aboutChildLabour.fldID = mainID;
            ILODBAccess.saveDataIntblAboutChildLabour(aboutChildLabour);

            for (int i = 0; i < arr.Count; i++)
            {
                tblChildLabourMainKa tmpChildMainKa = (tblChildLabourMainKa)arr[i];
                tmpChildMainKa.fldID = mainID;
                ILODBAccess.saveDataIntblChildLabourMainKa(tmpChildMainKa);
            }


            DataTable dtFamilyDetails = (DataTable)ViewState["CurrentData"];
            if (dtFamilyDetails != null && dtFamilyDetails.Rows.Count > 0)
            {
                ////insert the family details

                for (int i = 0; i < dtFamilyDetails.Rows.Count; i++)
                {
                    tblFamilyDetails tmpFamilyDetailsClass = new tblFamilyDetails();
                    tmpFamilyDetailsClass.fldChildLabourID = childLabourID;
                    tmpFamilyDetailsClass.fldID = mainID;
                    tmpFamilyDetailsClass.fldFamilyName = dtFamilyDetails.Rows[i][0].ToString();
                    DataTable dt = ILODBAccess.getDropDownData("fldGenderID", "tblGender", " fldGenderDesc=N'" + dtFamilyDetails.Rows[i][1].ToString() + "'");
                    tmpFamilyDetailsClass.fldFamilyGenderID = int.Parse(dt.Rows[0][0].ToString());
                    tmpFamilyDetailsClass.fldFamilyAge = int.Parse(dtFamilyDetails.Rows[i][2].ToString());
                    DataTable dt1 = ILODBAccess.getDropDownData("fldRelationID", "tblRelation", " fldRelationDesc=N'" + dtFamilyDetails.Rows[i][3].ToString() + "'");
                    tmpFamilyDetailsClass.fldFamilyRelationID = int.Parse(dt1.Rows[0][0].ToString());
                    tmpFamilyDetailsClass.fldFamilyEducation = dtFamilyDetails.Rows[i][4].ToString();
                    tmpFamilyDetailsClass.fldFamilyOccupation = dtFamilyDetails.Rows[i][5].ToString();
                    tmpFamilyDetailsClass.fldFamilyIdentitydoc = false;
                    tmpFamilyDetailsClass.fldFamilyLabourStatus = "";
                    tmpFamilyDetailsClass.fldFamilyCurState = dtFamilyDetails.Rows[i][6].ToString();
                    ILODBAccess.saveDataIntblFamilyDetails(tmpFamilyDetailsClass);
                }
            }
            childWorkClass.fldID = mainID;
            childWorkClass.fldChildLabourID = childLabourID;
            ILODBAccess.saveDataIntblChildWorkState(childWorkClass);

            mainFamilyBehaviourClass.fldID = mainID;
            mainFamilyBehaviourClass.fldChildLabourID = childLabourID;
            ILODBAccess.saveDataIntblMainFamilyBehaviour(mainFamilyBehaviourClass);

            addPermanent.fldId = mainID;
            addTemp.fldId = mainID;
            ILODBAccess.saveDataIntblAddress(addPermanent);
            ILODBAccess.saveDataIntblAddress(addTemp);
        }

    }
}