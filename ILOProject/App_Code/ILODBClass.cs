using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ILOProject.App_Code
{
    public class tblMain
    {
        public int fldID { get; set; }
        public int fldTypeID { get; set; }
        public string fldLocation { get; set; }
        public string fldSerialNo { get; set; }
        public int fldFormNo { get; set; }
        public string fldFormFillPlace { get; set; }
        public DateTime fldFormFillDate { get; set; }
        public Boolean fldFormAgree { get; set; }
        public string fldAnswererName { get; set; }
        public string fldAnsContactNo { get; set; }       
        public string fldMainName { get; set; }
        public int fldMainProfessionID { get; set; }
        public int fldMainCastID { get; set; }
        public int fldMainReligionID { get; set; }
        public int fldMainStayTypeID { get; set; }
        public int fldMainMenNo { get; set; }
        public int fldMainWomenNo { get; set; }
        public int fldMainBoysNo { get; set; }
        public int fldMainGirlsNo { get; set; }
        public int fldMainFamilyTotal { get; set; }
        public string fldMainEducation { get; set; }
        public string fldSurveyerName { get; set; }
        public DateTime fldSubmitDate { get; set; }
        public string fldSurveyerNote { get; set; }
        public string fldMainNote { get; set; }
        public string fldNote { get; set; }
        public string fldWorkPlace { get; set; }
    }
    public class tblChildLabourMainKa
    {
        public int fldID { get; set; }
        public string fldChildNameKa { get; set; }
        public int fldChildAgeKa { get; set; }
        public string fldParentNameKa { get; set; }
        public string fldAddressKa { get; set; }
        public string fldContactNoKa { get; set; }
        public string fldNoteKa { get; set; }
    }
    public class tblAboutChildLabour
    {
        public int fldID { get; set; }
        public int fldStayTypeID { get; set; }
        public string fldAdditionalIncome { get; set; }
        public Boolean fldChildLabour { get; set; }
        public int fldChildBoysNo { get; set; }
        public int fldChildGirlsNo { get; set; }
        public int fldChildTotal { get; set; }
        public int fldChildSchoolYes { get; set; }
        public int fldChildSchoolNo { get; set; }
        public string fldSchoolName { get; set; }
        public string fldSchoolAddress { get; set; }
        public int fldLabourTakenID { get; set; }
        public string fldLabourCause { get; set; }
        public string fldLabourWentHow { get; set; }
        public string fldJobAggrement { get; set; }
        public string fldJobAgreementPoints { get; set; }
        public string fldChildWorkReason { get; set; }
        public int fldTimeIntervalMonth { get; set; }
        public int fldSalaryID { get; set; }
        public int fldContactTimes { get; set; }
        public int fldLabourTypeID { get; set; }
    }

    public class tblKnowledge
    {
        public int fldID { get; set; }
        public Boolean fldChildRight { get; set; }
        public string fldChildRightDesc { get; set; }
        public Boolean  fldNoWorkBelow14 { get; set; }
        public Boolean fldAgreeNoWorkBelow14 { get; set; }
        public string fldNoWorkBelow14Desc { get; set; }
        public Boolean fldChildLabourRisk { get; set; }
        public string fldNoChildLabourDesc { get; set; }
        public Boolean fldKnowChildAbuse { get; set; }
        public Boolean fldKnowAdultAvailable { get; set; }
        public Boolean fldUseAdultNotChild { get; set; }
        public string fldUseAdultNotChildDesc { get; set; }
    }
    public class tblChildLabour
    {
        public int fldChildLabourID { get; set; }
        public int fldID { get; set; }
        public string fldChildName { get; set; }
        public int fldChildGenderID { get; set; }
        public DateTime fldChildBirthDate { get; set; }
        public int fldChildAge { get; set; }
        public int fldChildCastID { get; set; }
        public int fldChildReligionID { get; set; }
        public string fldChildHealth { get; set; }
        public Boolean fldChildBirthReg { get; set; }
        public int fldChildStayTypeID { get; set; }
        public string fldChildAdditionalIncome { get; set; }
    }
    public class tblChildLabourDetails
    {
        public int fldID { get; set; }
        public int fldChildLabourID { get; set; }
        public int fldChildStudyStateID { get; set; }
        public int fldChildStudyTypeID { get; set; }
        public string fldChildSchool { get; set; }
        public int fldChildSchoolGrade { get; set; }
        public int fldChildSchoolExpenseID { get; set; }
        public int fldChildLeaveSchoolGrade { get; set; }
        public string fldChildLeaveSchoolDesc { get; set; }
        public Boolean fldChildTraining { get; set; }
        public string fldChildTrainingPlace { get; set; }
        public string fldChildTrainingStay { get; set; }
        public string fldChildInterestedArea { get; set; }
        public Boolean fldChildStudyContinue { get; set; }
        public string fldChildStudyHelpSelf { get; set; }
        public string fldChildStudyHelpFamily { get; set; }
        public string fldChildStudyHelpOther { get; set; }
    }

    public class tblFamilyDetails
    {
        public int fldID { get; set; }
        public int fldChildLabourID { get; set; }
        public string fldFamilyName { get; set; }
        public int fldFamilyGenderID { get; set; }
        public int fldFamilyAge { get; set; }
        public int fldFamilyRelationID { get; set; }
        public string fldFamilyEducation { get; set; }
        public string fldFamilyOccupation { get; set; }
        public Boolean fldFamilyIdentitydoc { get; set; }
        public string fldFamilyLabourStatus { get; set; }
        public string fldFamilyCurState { get; set; }
    }
    public class tblChildWorkState
    {
        public int fldID { get; set; }
        public int fldChildLabourID { get; set; }
        public float fldWorkStartTime { get; set; }
        public Boolean fldWorkPlaceKnow { get; set; }
        public Boolean fldWorkContact { get; set; }
        public int fldWorkContactTypeID { get; set; }
        public float fldWorkTimePerDay { get; set; }
        public float fldWorkTimeDay { get; set; }
        public float fldWorkTimeEvening { get; set; }
        public string fldWorkDesc { get; set; }
        public float fldWorkPayAmonunt { get; set; }
        public int fldWorkPayTypeID { get; set; }
        public int fldWorkPayReceiverID { get; set; }
        public Boolean fldWorkHoliday { get; set; }
        public int fldWorkHolidayID { get; set; }
        public string fldWorkPayReceiverName { get; set; }
    }

    public class tblMainFamilyBehaviour
    {
        public int fldID { get; set; }
        public int fldChildLabourID { get; set; }
        public int fldLoveMost { get; set; }
        public string fldLoveWay { get; set; }
        public Boolean fldAbuse { get; set; }
        public int fldAbusePerson { get; set; }
        public string fldAbuseType { get; set; }
        public Boolean fldAbuseReport { get; set; }
        public string fldAbuseReportDesc { get; set; }
        public Boolean fldFoodStatus { get; set; }
        public Boolean fldSleepStatus { get; set; }
        public Boolean fldStayStatus { get; set; }
        public Boolean fldEntertainmentStatus { get; set; }
        public Boolean fldSecuritySeperateRoom { get; set; }
        public string fldSecurityDesc { get; set; }
        public int fldHealthStatusID { get; set; }
        public Boolean fldCertificate { get; set; }
        public string fldFuturePlan { get; set; }
        public Boolean fldPlanReturnHome { get; set; }
        public string fldNoPlanReturnHomeID { get; set; }
        public int fldWhyLeaveHome { get; set; }
    }

    public class tblAddress
    {
        public int fldAddId { get; set; }
        public int fldId { get; set; }
        public string fldAddType { get; set; }
        public int fldDistrict { get; set; }
        public Boolean fldVillage { get; set; }
        public string fldVMName { get; set; }
        public int fldWardNo { get; set; }
        public string fldTole { get; set; }
        public string fldHouseNo { get; set; }
        public string fldAddNote { get; set; }
        public string fldContactNo { get; set; }
    }
}