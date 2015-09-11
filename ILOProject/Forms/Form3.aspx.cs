using ILOProject.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ILOProject.Forms
{
    public partial class Form3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {
            txtDateToFill.Value = Convert.ToDateTime("2070-1-1").ToShortDateString();
            

            ddlMainCast.DataSource = ILODBAccess.getDropDownData("tblCast");
            ddlMainCast.DataTextField = "fldCastDesc";
            ddlMainCast.DataValueField = "fldCastID";
            ddlMainCast.DataBind();

            //ddlChildCastInfo.DataSource = ILODBAccess.getDropDownData("tblCast");
            //ddlChildCastInfo.DataTextField = "fldCastDesc";
            //ddlChildCastInfo.DataValueField = "fldCastID";
            //ddlChildCastInfo.DataBind();

            //ddlChildSex.DataSource = ILODBAccess.getDropDownData("tblGender");
            //ddlChildSex.DataTextField = "fldGenderDesc";
            //ddlChildSex.DataValueField = "fldGenderID";
            //ddlChildSex.DataBind();

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

            //ddlHealthService.DataSource = ILODBAccess.getDropDownData("tblHealthStatus");
            //ddlHealthService.DataTextField = "fldHealthStatusDesc";
            //ddlHealthService.DataValueField = "fldHealthStatusID";
            //ddlHealthService.DataBind();


            chkJobAgreement.DataSource = ILODBAccess.getDropDownData("tblJobAgreement");
            chkJobAgreement.DataTextField = "fldJAgreementDesc";
            chkJobAgreement.DataValueField = "fldJAgreementID";
            chkJobAgreement.DataBind();

            cblLabourCause.DataSource = ILODBAccess.getDropDownData("tblLabourCause");
            cblLabourCause.DataTextField = "fldLCauseDesc";
            cblLabourCause.DataValueField = "fldLCauseID";
            cblLabourCause.DataBind();

            ddlWhoTakesChild.DataSource = ILODBAccess.getDropDownData("tblLabourTaken");
            ddlWhoTakesChild.DataTextField = "fldLTakenDesc";
            ddlWhoTakesChild.DataValueField = "fldLTakenID";
            ddlWhoTakesChild.DataBind();

            cblChildLabourWentHow.DataSource = ILODBAccess.getDropDownData("tblLabourWentHow");
            cblChildLabourWentHow.DataTextField = "fldLabourWentHowDesc";
            cblChildLabourWentHow.DataValueField = "fldLabourWentHowID";
            cblChildLabourWentHow.DataBind();

            //ILODBAccess.getDropDownData("tblLabourType");
            //ILODBAccess.getDropDownData("tblLabourWentHow");

            //chkLoveway.DataSource = ILODBAccess.getDropDownData("tblLoveWay");
            //chkLoveway.DataTextField = "fldLovewayDesc";
            //chkLoveway.DataValueField = "fldLoveWayID";
            //chkLoveway.DataBind();

            //chkWhyNotReturnChild.DataSource = ILODBAccess.getDropDownData("tblNoReturnHome");
            //chkWhyNotReturnChild.DataTextField = "fldNReturnHomeDesc";
            //chkWhyNotReturnChild.DataValueField = "fldNReturnHomeID";
            //chkWhyNotReturnChild.DataBind();


            //ddlPayementReceiver.DataSource = ILODBAccess.getDropDownData("tblPaymentReceiver");
            //ddlPayementReceiver.DataTextField = "fldPReceiverDesc";
            //ddlPayementReceiver.DataValueField = "fldPReceiverID";
            //ddlPayementReceiver.DataBind();

            ddlMainProfession.DataSource = ILODBAccess.getDropDownData("tblProfession");
            ddlMainProfession.DataTextField = "fldProfessionDesc";
            ddlMainProfession.DataValueField = "fldProfessionID";
            ddlMainProfession.DataBind();

            //ddlWhoLovesMost.DataSource = ILODBAccess.getDropDownData("tblRelation");
            //ddlWhoLovesMost.DataTextField = "fldRelationDesc";
            //ddlWhoLovesMost.DataValueField = "fldRelationID";
            //ddlWhoLovesMost.DataBind();

            ddlLabourNature.DataSource = ILODBAccess.getDropDownData("tblLabourType");
            ddlLabourNature.DataTextField = "fldLabourTypeDesc";
            ddlLabourNature.DataValueField = "fldLabourTypeID";
            ddlLabourNature.DataBind();

            //ddlWhoHatesMost.DataSource = ILODBAccess.getDropDownData("tblRelation");
            //ddlWhoHatesMost.DataTextField = "fldRelationDesc";
            //ddlWhoHatesMost.DataValueField = "fldRelationID";
            //ddlWhoHatesMost.DataBind();

            ddlFamilyMember1Relation.DataSource = ILODBAccess.getDropDownData("tblRelation");
            ddlFamilyMember1Relation.DataTextField = "fldRelationDesc";
            ddlFamilyMember1Relation.DataValueField = "fldRelationID";
            ddlFamilyMember1Relation.DataBind();


            ddlMainReligion.DataSource = ILODBAccess.getDropDownData("tblReligion");
            ddlMainReligion.DataTextField = "fldReligionDesc";
            ddlMainReligion.DataValueField = "fldReligionID";
            ddlMainReligion.DataBind();

            //ddlChildReligion.DataSource = ILODBAccess.getDropDownData("tblReligion");
            //ddlChildReligion.DataTextField = "fldReligionDesc";
            //ddlChildReligion.DataValueField = "fldReligionID";
            //ddlChildReligion.DataBind();

            //ddlSalaryInfo.DataSource = ILODBAccess.getDropDownData("tblSalary");
            //ddlSalaryInfo.DataTextField = "fldSalaryDesc";
            //ddlSalaryInfo.DataValueField = "fldSalaryID";
            //ddlSalaryInfo.DataBind();

            ddlHabitantStatus.DataSource = ILODBAccess.getDropDownData("tblStayTypeHome");
            ddlHabitantStatus.DataTextField = "fldStayTypeDesc";
            ddlHabitantStatus.DataValueField = "fldStayTypeID";
            ddlHabitantStatus.DataBind();

            ddlMainHomeInfo.DataSource = ILODBAccess.getDropDownData("tblStayTypeHome");
            ddlMainHomeInfo.DataTextField = "fldStayTypeDesc";
            ddlMainHomeInfo.DataValueField = "fldStayTypeID";
            ddlMainHomeInfo.DataBind();

            ddlWhoPaysEducation.DataSource = ILODBAccess.getDropDownData("tblStudyExpense");
            ddlWhoPaysEducation.DataTextField = "fldStudyExpenseDesc";
            ddlWhoPaysEducation.DataValueField = "fldStudyExpenseID";
            ddlWhoPaysEducation.DataBind();

            ddlDoesChildStudy.DataSource = ILODBAccess.getDropDownData("tblStudyState");
            ddlDoesChildStudy.DataTextField = "fldStudyStateDesc";
            ddlDoesChildStudy.DataValueField = "fldStudyStateID";
            ddlDoesChildStudy.DataBind();

            ddlStudyType.DataSource = ILODBAccess.getDropDownData("tblStudyType");
            ddlStudyType.DataTextField = "fldStudyTypeDesc";
            ddlStudyType.DataValueField = "fldStudyTypeID";
            ddlStudyType.DataBind();

            //DataTable dtTimeInterval = ILODBAccess.getDropDownData("tblTimeInterval");
            //ddlVacationFrequency.DataSource = dtTimeInterval;
            //ddlVacationFrequency.DataTextField = "fldTIntervalDesc";
            //ddlVacationFrequency.DataValueField = "fldTIntervalID";
            //ddlVacationFrequency.DataBind();


            //ddlSalaryObtainFrequency.DataSource = dtTimeInterval;
            //ddlSalaryObtainFrequency.DataTextField = "fldTIntervalDesc";
            //ddlSalaryObtainFrequency.DataValueField = "fldTIntervalID";
            //ddlSalaryObtainFrequency.DataBind();

            //ddlParentContactFrequency.DataSource = dtTimeInterval;
            //ddlParentContactFrequency.DataTextField = "fldTIntervalDesc";
            //ddlParentContactFrequency.DataValueField = "fldTIntervalID";
            //ddlParentContactFrequency.DataBind();

            DataTable dtDistrict = ILODBAccess.getDropDownData("distinct District,District_id", "tblVDC", "1=1");
            ddlPermanentDistrict.DataSource = dtDistrict;
            ddlPermanentDistrict.DataTextField = "District";
            ddlPermanentDistrict.DataValueField = "District_id";
            ddlPermanentDistrict.DataBind();



            ddlTempDistrict.DataSource = dtDistrict;
            ddlTempDistrict.DataTextField = "District";
            ddlTempDistrict.DataValueField = "District_id";
            ddlTempDistrict.DataBind();

            ddlProbableDistrict.DataSource = dtDistrict;
            ddlProbableDistrict.DataTextField = "District";
            ddlProbableDistrict.DataValueField = "District_id";
            ddlProbableDistrict.DataBind();





            //Ilodb
            //HireFire_DataAccess.getIndustryList()
            //lstIndustry.DataSource = Session("myIndustryList")
            //        lstIndustry.DataTextField = "fldIndustryName"
            //        lstIndustry.DataValueField = "fldIndustryID"
            //        lstIndustry.DataBind()
            //        lstIndustry.Items.Insert(0, SearchIndustrylistFirstValues)
            //        lstIndustry.SelectedIndex = 0
        }

     
  

        private void BindFamilyGrid(int rowcount)
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
            dt.Columns.Add(new System.Data.DataColumn("क्षममा गएको/नगएको जाने अवस्था", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("जन्मदर्ता/नागरिकता छ/छैन", typeof(String)));


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
                dr[7] = ddlChildLabourProbability.SelectedItem.Text;
                dr[8] = ddlHasBrOrCitizenship.SelectedItem.Value;


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
                dr[7] = ddlChildLabourProbability.SelectedItem.Text;
                dr[8] = ddlHasBrOrCitizenship.SelectedItem.Value;

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
                BindFamilyGrid(count);
            }
            else
            {
                BindFamilyGrid(1);
            }
            txtFamilyMember1Name.Text = string.Empty;

            txtFamilyMember1Name.Focus();
        }



        protected void drpPermanentMunorVdc_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void drpTempMunOrVdc_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlTempMunOrVdc.DataSource = ILODBAccess.getDropDownData("distinct VDC_name,VDC_id", "tblVDC", " District_id=" + ddlTempDistrict.SelectedValue.ToString());
            ddlTempMunOrVdc.DataTextField = "VDC_name";
            ddlTempMunOrVdc.DataValueField = "VDC_id";
            ddlTempMunOrVdc.DataBind();
        }




        private void BindProbablePlaces(int rowcount)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add(new System.Data.DataColumn("क्र.स.", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("जिल्ला", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("नगर/गा.वि.स", typeof(string)));
            dt.Columns.Add(new System.Data.DataColumn("गाउँ/वडा", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("टोल", typeof(String)));
            dt.Columns.Add(new System.Data.DataColumn("सम्पर्क नम्बर", typeof(String)));
            if (ViewState["CurrentData2"] != null)
            {
                for (int i = 0; i < rowcount + 1; i++)
                {
                    dt = (DataTable)ViewState["CurrentData2"];
                    if (dt.Rows.Count > 0)
                    {
                        dr = dt.NewRow();
                        dr[0] = dt.Rows[0][0].ToString();

                    }
                }
                dr = dt.NewRow();
                dr[0] = txtSN.Text;
                dr[1] = ddlProbableDistrict.SelectedItem.Text;
                dr[2] = ddlProbableMunOrVdc.SelectedItem.Text;
                dr[3] = txtVillageOrWard.Text;
                dr[4] = txtProbableTole.Text;
                dr[5] = txtProbableNumber.Text;



                dt.Rows.Add(dr);

            }
            else
            {
                dr = dt.NewRow();
                dr[0] = txtSN.Text;
                dr[1] = ddlProbableDistrict.SelectedItem.Text;
                dr[2] = ddlProbableMunOrVdc.SelectedItem.Text;
                dr[3] = txtVillageOrWard.Text;
                dr[4] = txtProbableTole.Text;
                dr[5] = txtProbableNumber.Text;

                dt.Rows.Add(dr);

            }

            // If ViewState has a data then use the value as the DataSource
            if (ViewState["CurrentData2"] != null)
            {
                gdvProbablePlaces.DataSource = (DataTable)ViewState["CurrentData2"];
                gdvProbablePlaces.DataBind();
            }
            else
            {
                // Bind GridView with the initial data assocaited in the DataTable
                gdvProbablePlaces.DataSource = dt;
                gdvProbablePlaces.DataBind();

            }
            // Store the DataTable in ViewState to retain the values
            ViewState["CurrentData2"] = dt;

        }

        protected void btnAddOtherPlace_Click(object sender, EventArgs e)
        {
            if (ViewState["CurrentData2"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentData2"];
                int count = dt.Rows.Count;
                BindProbablePlaces(count);
            }
            else
            {
                BindProbablePlaces(1);
            }
            txtSN.Text = string.Empty;


        }

        protected void ddlProbableDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlProbableMunOrVdc.DataSource = ILODBAccess.getDropDownData("distinct VDC_name,VDC_id", "tblVDC", " District_id=" + ddlProbableDistrict.SelectedValue.ToString());
            ddlProbableMunOrVdc.DataTextField = "VDC_name";
            ddlProbableMunOrVdc.DataValueField = "VDC_id";
            ddlProbableMunOrVdc.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblMain mainClass = new tblMain();
            mainClass.fldTypeID = 3;
            mainClass.fldLocation = ddlMunicipality.SelectedItem.Text.Trim();
            mainClass.fldSerialNo = txtFormSerialNo.Text.Trim();
            mainClass.fldFormNo = int.Parse(txtFormNp.Text.Trim());
            mainClass.fldFormFillPlace = txtFomFillPlace.Text.Trim();
            mainClass.fldFormFillDate = DateTime.Parse(txtDateFormFill.Value.Trim());
            mainClass.fldFormAgree = Convert.ToBoolean(int.Parse(rblFormAgree.SelectedValue));
            mainClass.fldAnswererName = txtAnswererName.Text.Trim();
            mainClass.fldAnsContactNo = txtAnsContactNo.Text.Trim();
            mainClass.fldMainName = txtMainFullName.Text.Trim();
            mainClass.fldMainProfessionID = int.Parse(ddlMainProfession.SelectedValue);
            mainClass.fldMainCastID = int.Parse(ddlMainCast.SelectedValue);
            mainClass.fldMainReligionID = int.Parse(ddlMainReligion.SelectedValue);
            mainClass.fldMainStayTypeID = int.Parse(ddlHabitantStatus.SelectedValue);
            mainClass.fldMainMenNo = int.Parse(txtMainFamilyMenNo.Text.Trim());
            mainClass.fldMainWomenNo = int.Parse(txtMainFamilyWomenNo.Text.Trim());
            mainClass.fldMainBoysNo = int.Parse(txtMainFamilyBoysNo.Text.Trim());
            mainClass.fldMainGirlsNo = int.Parse(txtMainFamilyGirlsNo.Text.Trim());
            mainClass.fldMainFamilyTotal = mainClass.fldMainMenNo + mainClass.fldMainWomenNo + mainClass.fldMainGirlsNo + mainClass.fldMainBoysNo;
            mainClass.fldMainEducation = txtMainEducation.Text.Trim();
            mainClass.fldSurveyerName = txtSurveyerName.Text.Trim();
            mainClass.fldSubmitDate = DateTime.Parse(txtFormSubmitDate.Value.Trim());
            mainClass.fldSurveyerNote = txtSurveyerNote.Text.Trim();
            mainClass.fldMainNote = txtMainNote.Text.Trim();
            mainClass.fldNote = "";
            mainClass.fldWorkPlace = "";



            tblAddress addPermanent = new tblAddress();
            addPermanent.fldAddType = "स्थायी";
            addPermanent.fldDistrict = int.Parse(ddlPermanentDistrict.SelectedValue);
            addPermanent.fldVillage = Convert.ToBoolean(int.Parse(rblPermanentVillage.SelectedValue));
            addPermanent.fldVMName = ddlPermanentMunorVdc.SelectedItem.Text.ToString();
            addPermanent.fldWardNo = int.Parse(txtPermanentWardNo.Text.Trim());
            addPermanent.fldTole = txtPermanentTole.Text.Trim();
            addPermanent.fldHouseNo = txtPermanentHouseNo.Text.Trim();
            addPermanent.fldAddNote = txtPermanentNote.Text.Trim();
            addPermanent.fldContactNo = "";

            tblAddress addTemp = new tblAddress();
            addTemp.fldAddType = "अस्थायी";
            addTemp.fldDistrict = int.Parse(ddlTempDistrict.SelectedValue);
            addTemp.fldVillage = Convert.ToBoolean(int.Parse(rblTempVillage.SelectedValue));
            addTemp.fldVMName = ddlTempMunOrVdc.SelectedItem.Text.ToString();
            addTemp.fldWardNo = int.Parse(txtTempWardNo.Text.Trim());
            addTemp.fldTole = txtTempTole.Text.Trim();
            addTemp.fldHouseNo = txtTempHouseNo.Text.Trim();
            addTemp.fldAddNote = txtTempNote.Text.Trim();
            addTemp.fldContactNo = "";

            tblKnowledge knowledgeClass = new tblKnowledge();
            knowledgeClass.fldChildRight = Convert.ToBoolean(int.Parse(rblKnowChildRight.SelectedValue));
            knowledgeClass.fldChildRightDesc = txtWhatIsChildRight.Text.Trim();
            knowledgeClass.fldNoWorkBelow14 = Convert.ToBoolean(int.Parse(ddlNoChildLaborBelow14.SelectedValue));
            knowledgeClass.fldAgreeNoWorkBelow14 = Convert.ToBoolean(int.Parse(ddlViewAboutNoChildLaborBelow14.SelectedValue));
            knowledgeClass.fldNoWorkBelow14Desc = txtViewAboutNoChildLaborBelow14.Text.Trim();
            knowledgeClass.fldChildLabourRisk = Convert.ToBoolean(int.Parse(ddlKnowThreeEffectsOfChildLabor.SelectedValue));
            knowledgeClass.fldNoChildLabourDesc = "";
            knowledgeClass.fldKnowChildAbuse = Convert.ToBoolean(int.Parse(ddlKnowChildAbuse.SelectedValue));
            //Only for Form A
            knowledgeClass.fldKnowAdultAvailable = false;
            knowledgeClass.fldUseAdultNotChild = false;
            knowledgeClass.fldUseAdultNotChildDesc = "";

            tblChildLabour childLabourClass = new tblChildLabour();
            childLabourClass.fldChildName = "";
            childLabourClass.fldChildGenderID = 1;
            childLabourClass.fldChildBirthDate = DateTime.Parse("1/1/2070");
            childLabourClass.fldChildAge = 0;
            childLabourClass.fldChildCastID = 1;
            childLabourClass.fldChildReligionID = 1;
            childLabourClass.fldChildHealth = "";
            childLabourClass.fldChildBirthReg = false;
            childLabourClass.fldChildStayTypeID = 1;
            childLabourClass.fldChildAdditionalIncome = "";

            tblChildLabourDetails childLabourDetailClass = new tblChildLabourDetails();
            childLabourDetailClass.fldChildStudyStateID = int.Parse(ddlDoesChildStudy.SelectedValue);
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
            childLabourDetailClass.fldChildStudyContinue = Convert.ToBoolean(int.Parse(ddlWantContinuation.SelectedValue));
            childLabourDetailClass.fldChildStudyHelpSelf = txtHelpYourself.Text.Trim();
            childLabourDetailClass.fldChildStudyHelpFamily = txtHelpFamily.Text.Trim();
            childLabourDetailClass.fldChildStudyHelpOther = txtHelpOther.Text.Trim();

            tblChildWorkState childWorkClass = new tblChildWorkState();
            
            childWorkClass.fldWorkStartTime = float.Parse(txtYearWasChildInLabor.Text.Trim()) + float.Parse(txtMonthWasChildInLabor.Text.Trim()) / 12;
            //From 3 8.1 
            childWorkClass.fldWorkPlaceKnow = Convert.ToBoolean(int.Parse(ddlWasChildInLabor.SelectedValue)); 
            childWorkClass.fldWorkContactTypeID = 1;
            //From 3 8.1
            childWorkClass.fldWorkContact = false;
            childWorkClass.fldWorkTimePerDay = 0;
            childWorkClass.fldWorkTimeDay = 0;
            childWorkClass.fldWorkTimeEvening = 0;
            childWorkClass.fldWorkDesc = txtFreeChildLaborRegion.Text.Trim();
            //Form 3 , FreeChild txtFreeChildLaborRegion 
            //childWorkClass.fldWorkPayAmonunt = 0;
            childWorkClass.fldWorkPayTypeID = 1;
            childWorkClass.fldWorkPayReceiverID = 1;
            //Form 9.1
            childWorkClass.fldWorkHoliday = Convert.ToBoolean(int.Parse(ddlFreeChildLaborRegion.SelectedValue));
            childWorkClass.fldWorkHolidayID = 1;

            //From 3 your role in free child labour region
            childWorkClass.fldWorkPayReceiverName = txtYourRoleInFreeChildLaborRegion.Text.Trim();

            //tblMainFamilyBehaviour mainFamilyBehaviourClass = new tblMainFamilyBehaviour();
            //mainFamilyBehaviourClass.fldLoveMost = 1;

            
            //mainFamilyBehaviourClass.fldLoveWay = "";
            //mainFamilyBehaviourClass.fldAbuse = false;
            //mainFamilyBehaviourClass.fldAbusePerson = 1;
            //string strHateway = "";
           
            //mainFamilyBehaviourClass.fldAbuseType = strHateway;
            //mainFamilyBehaviourClass.fldAbuseReport = false;
            //mainFamilyBehaviourClass.fldAbuseReportDesc = "";
            //mainFamilyBehaviourClass.fldFoodStatus = false;
            //mainFamilyBehaviourClass.fldSleepStatus = false;
            //mainFamilyBehaviourClass.fldStayStatus = false;
            //mainFamilyBehaviourClass.fldEntertainmentStatus = false;
            //mainFamilyBehaviourClass.fldSecuritySeperateRoom = false;
            //mainFamilyBehaviourClass.fldSecurityDesc = "";
            //mainFamilyBehaviourClass.fldHealthStatusID = 1;
            //mainFamilyBehaviourClass.fldCertificate = false;
            ////mainFamilyBehaviourClass.fldFuturePlan = txtFuturePlan.Text.Trim();

            ////Form 3 बालकश्रम मुक्त घोषण गर्न उपयुक्त ८.१
            //mainFamilyBehaviourClass.fldPlanReturnHome = Convert.ToBoolean(int.Parse(ddlFreeChildLaborRegion.SelectedValue));
            ////string futurePlan="";
            ////futurePlan = txtFreeChildLaborRegion.Text + ";" + txtYourRoleInFreeChildLaborRegion.Text;
            //mainFamilyBehaviourClass.fldFuturePlan = txtFuturePlan.Text.Trim();
            //string strNoReturnHome = "";
       
            //mainFamilyBehaviourClass.fldNoPlanReturnHomeID = strNoReturnHome;
            //mainFamilyBehaviourClass.fldWhyLeaveHome = int.Parse(ddlLabourCause.SelectedValue);

            tblAboutChildLabour aboutChildLabour = new tblAboutChildLabour();
            aboutChildLabour.fldStayTypeID = 1;
            aboutChildLabour.fldAdditionalIncome = "";
            aboutChildLabour.fldChildLabour = false;
            aboutChildLabour.fldChildBoysNo = int.Parse(txtChildBoyNoInOffice.Text.Trim());
            aboutChildLabour.fldChildGirlsNo = int.Parse(txtChildGirlNoInOffice.Text.Trim());
            aboutChildLabour.fldChildTotal = int.Parse(txtChildTotalNoInOffice.Text.Trim());
            aboutChildLabour.fldChildSchoolYes = int.Parse(txtChildGoingSchoolNo.Text.Trim());
            aboutChildLabour.fldChildSchoolNo = int.Parse(txtChildNotGoingSchoolNo.Text.Trim());
            aboutChildLabour.fldSchoolName = txtChildScoolName.Text.Trim();
            aboutChildLabour.fldSchoolAddress = txtChildScoolAddress.Text.Trim();
           
            aboutChildLabour.fldLabourTakenID = int.Parse(ddlWhoTakesChild.SelectedValue);
            string strLabourWentHow = "";
            for (int i = 0; i < cblChildLabourWentHow.Items.Count; i++)
                if (cblChildLabourWentHow.Items[i].Selected)
                {
                    strLabourWentHow += cblChildLabourWentHow.Items[i].Value + ";";

                }

            aboutChildLabour.fldLabourWentHow = strLabourWentHow;

            string strLabourCause = "";
            for (int i = 0; i < cblLabourCause.Items.Count; i++)
                if (cblLabourCause.Items[i].Selected)
                {
                    strLabourCause += cblLabourCause.Items[i].Value + ";";

                }
            aboutChildLabour.fldLabourCause = strLabourCause;
            aboutChildLabour.fldJobAggrement = ddlAgreementNeeded.SelectedValue.ToString();

            string strJobAgreementPt = "";
            for (int i = 0; i < chkJobAgreement.Items.Count; i++)
                if (chkJobAgreement.Items[i].Selected)
                {
                    strJobAgreementPt += chkJobAgreement.Items[i].Value + ";";

                }

            aboutChildLabour.fldJobAgreementPoints = strJobAgreementPt;
            aboutChildLabour.fldChildWorkReason = txtMainResonToChildLabor.Text.Trim();
            aboutChildLabour.fldTimeIntervalMonth = 1; //Not Required
            aboutChildLabour.fldSalaryID = 1; //Not Required
            aboutChildLabour.fldContactTimes = 1; //Not Required
            aboutChildLabour.fldLabourTypeID = int.Parse(ddlLabourNature.SelectedValue);

            //tblChildLabourMainKa childLabourKa1 = new tblChildLabourMainKa();
            //tblChildLabourMainKa childLabourKa2 = new tblChildLabourMainKa();
            //tblChildLabourMainKa childLabourKa3 = new tblChildLabourMainKa();
            //tblChildLabourMainKa childLabourKa4 = new tblChildLabourMainKa();

            //childLabourKa1.fldChildNameKa = txtChildName.Text.Trim();
            //childLabourKa1.fldChildAgeKa = int.Parse(txtChildAge.Text.Trim());
            //childLabourKa1.fldParentNameKa = txtChildParentName.Text.Trim();
            //childLabourKa1.fldAddressKa = txtChildParentAddress.Text.Trim();
            //childLabourKa1.fldContactNoKa = txtChildParentContact.Text.Trim();

            //childLabourKa2.fldChildNameKa = txtChildName2.Text.Trim();
            //childLabourKa2.fldChildAgeKa = int.Parse(txtChidlAge3.Text.Trim());
            //childLabourKa2.fldParentNameKa = txtChildParentName2.Text.Trim();
            //childLabourKa2.fldAddressKa = txtChildParentAddress2.Text.Trim();
            //childLabourKa2.fldContactNoKa = txtChildParentContact2.Text.Trim();

            //childLabourKa3.fldChildNameKa = txtChildName3.Text.Trim();
            //childLabourKa3.fldChildAgeKa = int.Parse(txtChidlAge3.Text.Trim());
            //childLabourKa3.fldParentNameKa = txtChildParentName3.Text.Trim();
            //childLabourKa3.fldAddressKa = txtChildParentAddress3.Text.Trim();
            //childLabourKa3.fldContactNoKa = txtChildParentContact3.Text.Trim();

            //childLabourKa4.fldChildNameKa = txtChildName4.Text.Trim();
            //childLabourKa4.fldChildAgeKa = int.Parse(txtChidlAge4.Text.Trim());
            //childLabourKa4.fldParentNameKa = txtChildParentName4.Text.Trim();
            //childLabourKa4.fldAddressKa = txtChildParentAddress4.Text.Trim();
            //childLabourKa4.fldContactNoKa = txtChildParentContact4.Text.Trim();

            //ArrayList arr = new ArrayList();

            //if (childLabourKa1.fldChildNameKa != "")
            //    arr.Add(childLabourKa1);
            //if (childLabourKa2.fldChildNameKa != "")
            //    arr.Add(childLabourKa2);

            //if (childLabourKa3.fldChildNameKa != "")
            //    arr.Add(childLabourKa3);

            //if (childLabourKa4.fldChildNameKa != "")
            //    arr.Add(childLabourKa4);

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

            //for (int i = 0; i < arr.Count; i++)
            //{
            //    tblChildLabourMainKa tmpChildMainKa = (tblChildLabourMainKa)arr[i];
            //    tmpChildMainKa.fldID = mainID;
            //    ILODBAccess.saveDataIntblChildLabourMainKa(tmpChildMainKa);
            //}


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
                    tmpFamilyDetailsClass.fldFamilyIdentitydoc = Convert.ToBoolean(dtFamilyDetails.Rows[i][8].ToString());
                    tmpFamilyDetailsClass.fldFamilyLabourStatus = dtFamilyDetails.Rows[i][7].ToString();
                    tmpFamilyDetailsClass.fldFamilyCurState = dtFamilyDetails.Rows[i][6].ToString();
                    ILODBAccess.saveDataIntblFamilyDetails(tmpFamilyDetailsClass);
                }


                DataTable dtProbableAddress = (DataTable)ViewState["CurrentData2"];
                if (dtProbableAddress != null && dtProbableAddress.Rows.Count > 0)
                {
                    ////insert the family details

                    for (int i = 0; i < dtProbableAddress.Rows.Count; i++)
                    {
                        tblAddress tmpAddress = new tblAddress();
                        //dtProbableAddress.fldChildLabourID = childLabourID;
                        tmpAddress.fldId = mainID;
                        tmpAddress.fldAddType = "सम्भावित श्रम स्थान";
                        DataTable dt = ILODBAccess.getDropDownData("DISTINCT District_id", "tblVDC", " District='" + dtProbableAddress.Rows[i][1].ToString() + "'");
                        tmpAddress.fldDistrict = int.Parse(dt.Rows[0][0].ToString());
                        //tmpAddress.fldFamilyAge = int.Parse(dtFamilyDetails.Rows[i][2].ToString());
                        //DataTable dt1 = ILODBAccess.getDropDownData("VDC_id", "tblVDC", "VDC_name='" + dtProbableAddress.Rows[i][2].ToString() + "'");
                        tmpAddress.fldVMName = dtProbableAddress.Rows[i][2].ToString();
                        tmpAddress.fldVillage = true;
                        tmpAddress.fldWardNo = int.Parse(dtProbableAddress.Rows[0][3].ToString());
                        tmpAddress.fldTole = dtProbableAddress.Rows[i][4].ToString();
                        tmpAddress.fldContactNo = dtProbableAddress.Rows[i][5].ToString();


                        ILODBAccess.saveDataIntblAddress(tmpAddress);
                    }



                }

                childWorkClass.fldID = mainID;
                childWorkClass.fldChildLabourID = childLabourID;
                ILODBAccess.saveDataIntblChildWorkState(childWorkClass);

                //mainFamilyBehaviourClass.fldID = mainID;
                //mainFamilyBehaviourClass.fldChildLabourID = childLabourID;
                //ILODBAccess.saveDataIntblMainFamilyBehaviour(mainFamilyBehaviourClass);

                addPermanent.fldId = mainID;
                addTemp.fldId = mainID;
                ILODBAccess.saveDataIntblAddress(addPermanent);
                ILODBAccess.saveDataIntblAddress(addTemp);
            }
        }

        protected void ddlPermanentDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlPermanentMunorVdc.DataSource = ILODBAccess.getDropDownData("distinct VDC_name,VDC_id", "tblVDC", " District_id=" + ddlPermanentDistrict.SelectedValue.ToString());
            ddlPermanentMunorVdc.DataTextField = "VDC_name";
            ddlPermanentMunorVdc.DataValueField = "VDC_id";
            ddlPermanentMunorVdc.DataBind();
        }

        protected void ddlTempDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlTempMunOrVdc.DataSource = ILODBAccess.getDropDownData("distinct VDC_name,VDC_id", "tblVDC", " District_id=" + ddlTempDistrict.SelectedValue.ToString());
            ddlTempMunOrVdc.DataTextField = "VDC_name";
            ddlTempMunOrVdc.DataValueField = "VDC_id";
            ddlTempMunOrVdc.DataBind();
        }
    }
}