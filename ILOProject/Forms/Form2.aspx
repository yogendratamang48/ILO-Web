<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form2.aspx.cs" Inherits="ILOProject.Forms.FormB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>तथ्याङ्क संकलन फारम (ख)</title>
    <style type="text/css">
                td{

            border: 4px solid white;
            background-color: #FFFFFF;
        }

              .txtShortName-style {
        height: auto;
        width: 175px;
    }
        .auto-style1 {
            width: 100%;
            background-color: #FFFFCC;
        }

        .auto-style2 {
            text-align: center;
        }

        .auto-style4 {
            width: 20%;
            background-color: #FFFFFF;
        }

        .txtNumber-style {
            height: 25;
            width: 50px;
          
        }

        .txtName-style {
            height: 25px;
            width: 200px;
        }

        .txtAddress-Style {
            height: 30px;
            width: 250px;
        }

        .txtLongAddress-Style {
            height: 30px;
            width: 300px;
        }

        /*.chzn-select ILO_DROPDOWN {
            height: auto;
        }*/
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            background-color: #FFFFCC;
        }
        .auto-style9 {
            width: 20%;
            background-color: #FFFFCC;
        }
        .auto-style10 {
            background-color: #CCCCFF;
        }
        .auto-style11 {
            width: 20%;
            background-color: #CCCCFF;
        }
        </style>

        <script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.8.17.custom.min.js"></script>
 <script src="../js/chosen.jquery.js" type="text/javascript"></script>
 <link rel="stylesheet" href="../css/chosen.css" />
    <link rel="stylesheet" href="../css/ILO_style.css" />
      <script type="text/javascript">
        jQuery.noConflict();
        jQuery(function () {
            jQuery(".chzn-select").chosen();
            jQuery(".chzn-select-deselect").chosen({ allow_single_deselect: true });

        });
		</script>
</head>

<body style="font-size: small">
    <form id="form1" runat="server">
        <div id="mainDiv">
            <div id="topHeading">

                <%--MainTop --%>
                <%--<div id="MainTop"style="float: left; width: 48%">--%>
                <table class="auto-style1" align="left">
                    <tr>
                        <td class="auto-style2">
                            <h1>जिल्ला बाल कल्याण समिति, काभ्रेपलाञ्चोक<br />
                                तथ्याङ्क संकलन फारम (ख) - २०७१, काभ्रेपलाञ्चोक
                            </h1>
                            <p>&nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style9">नगरपालिका छान्नुहोस् </td>
                                    <td class="auto-style8">
                                        <asp:DropDownList ID="ddlMunicipality" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                            <asp:ListItem Value="1">धुलिखेल</asp:ListItem>
                                            <asp:ListItem Value="3">पनौती</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style9">सुचना दिन तपाई सहमत हुनुहुन्छ ?</td>
                                    <td class="auto-style8">
                                        <asp:RadioButtonList ID="rblFormAgree" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>

                                        </asp:RadioButtonList>


                                    </td>

                                </tr>
                                <tr>
                                    <td class="auto-style9">सिलसिलेबर नम्बर</td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="txtFormSerialNo" runat="server" CssClass="txtNumber-style"></asp:TextBox>
                                    </td>
                                    <td class="auto-style9">फारम नम्बर</td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="txtFormNp" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">फारम भरेको मिति </td>
                                    <td class="auto-style8">
                                        <input id="txtDateFormFill" name="txtDateFormFill" value="" size="12" onfocus="this.blur()" readonly   runat="server" />
<input id="txtDateToFill" name="txtDateToFill" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtDateFormFill,document.forms[0].txtDateToFill);return false;" ><img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt=""></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRangeNew/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>
                                    </td>
                                    <td class="auto-style9">फारम भरेको स्थान </td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="txtFomFillPlace" runat="server" CssClass="txtName-style"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">उत्तरदाताको नाम थर</td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="txtAnswererName" runat="server" CssClass="txtName-style"></asp:TextBox>
                                    </td>

                                    <td class="auto-style9">सम्पर्क नम्बर</td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="txtAnsContactNo" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">ठेगाना-स्थायी: जिल्ला&nbsp; &nbsp;
                                        <asp:DropDownList ID="drpPermanentDistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpPermanentDistrict_SelectedIndexChanged" CssClass ="chzn-select ILO_DROPDOWN">
                                        </asp:DropDownList>

                                    </td>

                                    <td class="auto-style9"><asp:RadioButtonList ID="rblPermanentVillage" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">गा.वि.स.</asp:ListItem>
                                        <asp:ListItem Value="0">न.पा.</asp:ListItem>
                                        </asp:RadioButtonList>
&nbsp;<asp:DropDownList ID="drpPermanentMunorVdc" runat="server" CssClass ="chzn-select ILO_DROPDOWN" OnSelectedIndexChanged="drpPermanentMunorVdc_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style9">ठेगाना-स्थायी: वडा नं.&nbsp; &nbsp;
                                        <asp:TextBox ID="txtPermanentWardNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                        &nbsp; &nbsp;<br />टोल&nbsp; &nbsp;<asp:TextBox ID="txtPermanentTole" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                    <td class="auto-style9">ठेगाना-स्थायी: घर नम्बर&nbsp; &nbsp;<asp:TextBox ID="txtPermanentHouseNo" runat="server"></asp:TextBox>
                                        <br /> नोट:<asp:TextBox ID="txtPermanetNote" runat="server" ></asp:TextBox>

                                    </td>
                                </tr>
                               <tr>
                                    <td class="auto-style9">ठेगाना-अस्थायी: जिल्ला&nbsp; &nbsp;
                                        
                                        <asp:DropDownList ID="drpTempDistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpTempDistrict_SelectedIndexChanged" CssClass ="chzn-select ILO_DROPDOWN">
                                        </asp:DropDownList>
                                    </td>

                                    <td class="auto-style9"><asp:RadioButtonList ID="rblTempVillage" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">गा.वि.स.</asp:ListItem>
                                        <asp:ListItem Value="0">न.पा.</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:DropDownList ID="drpTempMunOrVdc" runat="server" CssClass ="chzn-select ILO_DROPDOWN" OnSelectedIndexChanged="drpTempMunOrVdc_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style9">ठेगाना-अस्थायी:वडा नं.&nbsp; &nbsp;
                                        <asp:TextBox ID="txtTempWardNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                        <br />
                                        टोल&nbsp; &nbsp;<asp:TextBox ID="txtTempTole" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                    <td class="auto-style9">ठेगाना-अस्थायी: घर नम्बर&nbsp; &nbsp;<asp:TextBox ID="txtTempHouseNo" runat="server" ></asp:TextBox>

                                         <br /> नोट:<asp:TextBox ID="txtTempNote" runat="server" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">१.१ मुख्य घरमुलीको नाम थर<br />
                                        <asp:TextBox ID="txtEmployerFullName" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td class="auto-style11">१.२ घरमुलीको पेशा
                                        <br />
                                        &nbsp; &nbsp;
                                    <asp:DropDownList ID="ddlEmployerProfession" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style11">१.३ जातजाति&nbsp; &nbsp;
                                    <asp:DropDownList ID="ddlEmployerCast" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style11">१.४ बसोवासको अवस्था&nbsp;&nbsp;<asp:DropDownList ID="ddlHabitantStatus" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">१.५ धर्म &nbsp;&nbsp;<asp:DropDownList ID="ddlEmployerReligion" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style11">१.६.१ मुख्य रोजगारदाताको पारिवारिक अवस्था:</td>
                                    <td class="auto-style11">महिला&nbsp;
            <asp:TextBox ID="txtEmployerFamilyWomenNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>


                                        &nbsp; पुरुष&nbsp;
            <asp:TextBox ID="txtEmployerFamilyMenNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>


                                    </td>



                                    <td class="auto-style11">बालक&nbsp;
            <asp:TextBox ID="txtEmployerFamilyBoysNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                        &nbsp;बालिका
            <asp:TextBox ID="txtEmployerFamilyGirlsNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>

                                </tr>
                                <tr>
                                    <td class="auto-style11">१.६.२ घऱमुलीको शैक्षिक योग्यता</td>
                                    <td colspan="3" class="auto-style10">
                                        <asp:TextBox ID="txtEmployerEducation" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                                </tr>
                                <tr><td class="auto-style8">२. घरमुलीको आर्थिक अवस्था: </td><td class="auto-style8"> घर <asp:DropDownList ID="ddlMainHomeInfo" runat="server" CssClass="chzn-select ILO_DROPDOWN">

                                                                      </asp:DropDownList></td>
                                    <td class="auto-style8">थप आयको विवरण</td>
                                    <td class="auto-style8"><asp:TextBox runat="server" ID="txtOtherIncome" CssClass="txtName-style"></asp:TextBox></td>
                                </tr>
                                <tr>
                                   <td colspan="4"><b>३. बालश्रमिकको बारेमा</b></td> 
                                    </tr>
                                <tr>
                    
                                    <td class="auto-style11" colspan="2"> ३.१ तपाईको घरमा बालबालिकाहरु श्रममा संलग्न/श्रमका लागि गएका छन् ? 
                                        <asp:RadioButtonList ID="rblChildLaborNear" runat="server" RepeatDirection="Horizontal">
                                           <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                        </asp:RadioButtonList>
                                       
                                    </td>
                    
                               <td class="auto-style10">३.१ तपाईको घरबाट बालश्रममा गएका छन् ? <asp:DropDownList ID="ddlChildGoneToLabor" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                    <asp:ListItem Value="1">छन्</asp:ListItem>
                                        <asp:ListItem Value="0">छैनन्</asp:ListItem>
                                   </asp:DropDownList>
                                   </td>
                        <td class="auto-style10">बालक
                                    <asp:TextBox ID="txtChildBoyNoInOffice" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                            &nbsp;बालिका
                                    <asp:TextBox ID="txtChildGirlNoInOffice" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                            &nbsp;<br />
                            जम्मा <asp:TextBox ID="txtChildTotalNoInOffice" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                        </td>
                                </tr>
                                <tr>
                                   <td class="auto-style11"> शैक्षिक अवस्था:</td>
                                  <td class="auto-style11">विद्यालय जाने&nbsp;<asp:TextBox ID="txtChildGoingSchoolNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    &nbsp;जना &nbsp;<br />
                                    विद्यालय नजाने&nbsp;<asp:TextBox ID="txtChildNotGoingSchoolNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    &nbsp;जना</td>         
                                  <td class="auto-style11" colspan="2">छ भने, विद्यालयको नाम:
                                    <asp:TextBox ID="txtChildShcoolName" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                      <br />ठेगाना: 
                                    <asp:TextBox ID="txtChildSchoolAddress" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                     
                                </td>           

                           </tr>
                                <tr>
                                 <td class="auto-style11" colspan="2">३.१.१ बालबालिकाहरु श्रममा कसरी गएका हुन् ? 
                                     <asp:CheckBoxList ID="cblChildLabourWentHow" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>
                                     
                                     
                                 
                                     <br />
                                     अन्य : <asp:TextBox ID="txtOtherHowChildLabor" runat="server" CssClass="txtName-style"></asp:TextBox>
                                 </td> 
                                    <td class="auto-style11" colspan="2">३.१.२ बालबालिकाहरु श्रममा जानुको कारण के हो ?
                                           <asp:CheckBoxList ID="cblLabourCause" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>
                                 
                                    </td>
                                  </tr>
                                <tr>
                                    <td colspan="2" class="auto-style10">  ३.२ श्रमिकका पठाईएको ?
                                        <br />
                                      <asp:DropDownList ID="ddlHowChildSearched" runat="server"  CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style10">
                                        अन्य : <asp:TextBox ID="txtOtherWhoTakesChild" runat="server" CssClass="txtName-style"></asp:TextBox>
                                    </td>
                                    <td colspan="2" class="auto-style10">  ३.३ के रोजगारीका लागि कुनै सम्झौता गरिएको छ ?<br />
&nbsp;<asp:DropDownList ID="ddlIsEmploymentAgreement" runat="server" CssClass="chzn-select ILO_DROPDOWN">

                                            <asp:ListItem Value="लिखित">लिखित</asp:ListItem>
                                            <asp:ListItem Value="मौखिक">मौखिक</asp:ListItem>
                                            <asp:ListItem Value="छैन">छैन</asp:ListItem>
                                                                               </asp:DropDownList>
                                        </td>    
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style10">३.४ रोजगारीका शर्तमा के के कुराहरु उल्लेख भएका छन् ? &nbsp;<br />

                            <asp:CheckBoxList ID="chkJobAgreement" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>
                                       
                        </td>
                                    <td colspan="2" class="auto-style10">३.५ तपाईले बालबालिकालाई नै श्रममा लगाउनुको मु्ख्य कारण के हो ? <br /><asp:TextBox ID="txtMainResonToChildLabor" runat="server"  TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">३.६ बालबालिका कहिलेदेखि काममा गएका हुन् ?<br />
                                        <asp:TextBox ID="txtWhenChildStartedWork" runat="server" TextMode="Number">0
                            </asp:TextBox>

                                    </td>
                                    <td class="auto-style10">३.७ काम गरेबापद के के दिने गरेको छ ? रकम दिने गरेको भए :
                                        <asp:DropDownList ID="ddlSalaryInfo" runat="server" CssClass="chzn-select ILO_DROPDOWN" Width="104px">
                                            
                                </asp:DropDownList>
                                    </td>
                                    
                                    <td class="auto-style10">३.८ बालबालिकासंग महिनामा कतिपटक सम्पर्क हुन्छ ?<br /> 
                                        
                                    </td>
                                    <td class="auto-style10">
<asp:TextBox ID="txtFamilyMeetNo" runat="server" TextMode="Number">0
                                            </asp:TextBox>
                                    </td>
                                </tr>
                                </table>

                            </td>
                        </tr>
                  <tr>
                    <td class="auto-style7">४<b>. व्यावहारिक विषयको ज्ञान र चेतनास्तर:</b></td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                            <td class="auto-style9">४.१ के तपाईलाई बालअधिकारका बारेमा थाहा छ ?<br />
                                <asp:DropDownList ID="ddlKnowChildRight" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                    <asp:ListItem Value="1">छ</asp:ListItem>
                                    <asp:ListItem Value="0">छैन</asp:ListItem>
                                     </asp:DropDownList>
                           </td>
                            <td class="auto-style9">४.२ बाल अधिकार भनेको के हो ?
                                   <asp:TextBox ID="txtWhatIsChildRight" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>

                            </td>
                                <td class="auto-style9">४.३ के तपाईलाई १४ बर्ष भन्दा कम उमेरका बालबालिकालाई श्रममा लगाउन हुन्न भन्ने कुरा थाहा छ ? <asp:DropDownList ID="ddlNoChildLaborBelow14" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>

                        </asp:DropDownList>
					</td>
                    <td class="auto-style9">४.३.१ के तपाई यो धारणासँग सहमत हुनुहुन्छ ?
                        <asp:DropDownList ID="ddlViewAboutNoChildLaborBelow14" runat="server">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList>
					</td>
                            </tr>
                            <tr>
                                            <td class="auto-style8" colspan="2">यदि छैन यसको विकल्पमा के हुनुपर्दछ होला ?
                                    <asp:TextBox ID="txtViewAboutNoChildLaborBelow14" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                            </td>
                                            <td class="auto-style8" colspan="2">४.३.२ बालश्रमबाट बालबालिकामा पर्ने कम्तिमा ३ ओटा असरहरु थाहा छ ?&nbsp;
                                    <asp:DropDownList ID="ddlKnowThreeEffectsOfChildLabor" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList></td>
                                            
                    </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">५. बालक/बालिकाको पारिवारिक स्थिति:</td>
                    </tr>
                    <tr>

                    
                  <td class="auto-style4">
                        <table class="auto-style1">

                            <%--Heading--%>
                            <tr>
                                <td>परिवारको सदस्यहरुको नामावली</td>
                                <td>लिङ्ग</td>
                                <td>उमेर</td>
                                <td>बालक/बालिकाको नाता</td>
                                <td>शैक्षिक अवस्था</td>
                                <td>पेशागत विवरण</td>
                                <td>जिवित/मृत्यु/अपाङ्ग</td>
                                <td>श्रममा गएको/नगएको जाने अवस्था</td>
                                <td>ज.द/नागरिकता छ/छैन</td>
                                <td rowspan="2">
                                    <asp:Button ID="btnAddRow" runat="server" OnClick="btnAddRow_Click" Text="थप" />
                                </td>

                            </tr>

                           <%-- Fields--%>
                            <tr>
                    <td>
                        <asp:TextBox ID="txtFamilyMember1Name" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMember1Sex" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                          
                        </asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember1Age" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMember1Relation" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember1EducationStatus" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember1Profession" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMember1CurrentStatus" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Text="जिवित">जिवित</asp:ListItem>
                            <asp:ListItem Text="मत्यु">मत्यु</asp:ListItem>
                            <asp:ListItem Text="अपाङ्ग">अपाङ्ग</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                                <td>
                                    <asp:DropDownList ID="ddlChildLabourProbability" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Text="गएको" Value="गएको">गएको</asp:ListItem>
                            <asp:ListItem Text="नगएको" Value="नगएको">नगएको</asp:ListItem>
                            <asp:ListItem Text="जाने सम्भावना" Value="जाने सम्भावना">जाने सम्भावना</asp:ListItem>
                            
                        </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlHasBrOrCitizenship" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Text="गएको" Value="1">छ</asp:ListItem>
                            <asp:ListItem Text="नगएको" Value="0">छैन</asp:ListItem>
                            
                            
                        </asp:DropDownList>
                                </td>
                                </tr>
                                   
                            <%--GridView --%>
                            <tr>
                                
                                <td colspan="10">


                                    <asp:GridView ID="gdvFamilyDetails" runat="server"
                                        Width="100%" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BackColor="AliceBlue" HeaderStyle-Font-Bold="true" GridLines="Both" CssClass="gridControl">
                                    </asp:GridView>
                                


                            </td>

                        </tr>

                          
                            
                        </table>

                    </td>
    
                        </tr>

                    <tr>
                        <td class="auto-style4">६. यदि श्रममा जान सक्ने सम्भावित स्थान:</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                        <table class="auto-style1">
                            <tr>
                                <td>क्र.स.</td>
                                <td>जिल्ला</td>
                                <td>नगर/गा.वि.स</td>
                                <td>वडा</td>
                                <td>टोल</td>
                                <td>सम्पर्क नम्बर</td>
                                <td rowspan="2">
                                    <asp:Button ID="btnAddOtherPlace" runat="server" Text="थप" OnClick="btnAddOtherPlace_Click" class="super button search_button" width="50px" />
                                </td>


                            </tr>
                            <tr>
                    <td>
                        <asp:TextBox ID="txtSN" runat="server" CssClass="txtNumber-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlProbableDistrict" runat="server" CssClass="chzn-select ILO_DROPDOWN" OnSelectedIndexChanged="ddlProbableDistrict_SelectedIndexChanged" AutoPostBack="true">
                            
                        </asp:DropDownList></td>
                    <td>
                        <asp:DropDownList ID="ddlProbableMunOrVdc" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            
                        </asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="txtVillageOrWard" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtProbableTole" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtProbableNumber" runat="server" CssClass="txtShortName-style"></asp:TextBox>
                    
                       </td>
        
                                   </tr>

                            <%--GridView--%>
                            <td colspan="7">


                                    <asp:GridView ID="gdvProbablePlaces" runat="server"
                                        Width="100%" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BackColor="AliceBlue" HeaderStyle-Font-Bold="true" GridLines="Both" CssClass="gridControl">
                                    </asp:GridView>
                                


                            </td>
                        </table>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <table class="auto-style1">
                                <tr>
                                    <td colspan="3" class="auto-style10">६.१ श्रमको प्रकृति 
                                        <asp:DropDownlist ID="ddlLabourNature" runat="server" CssClass="chzn-select ILO_DROPDOWN"></asp:DropDownlist>
                                        </td>
                                      <td class="auto-style10">७. श्रममा संलग्न हुन सक्ने बालबालिकालो पढ्ने गरेको छ ?
                                          <asp:DropDownList ID="ddlDoesChildStudy" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                           
                                          </asp:DropDownList>
                                      </td>                       
                                </tr>
                                <tr>
                                    <td class="auto-style10">यदि छ भने <asp:DropDownList ID="ddlStudyType" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                              
                                          </asp:DropDownList>
                                      </td>
                                    <td class="auto-style10"> विद्यालय केन्द्रको नाम र कक्षा : 
                                        <asp:TextBox ID="txtSchoolOrCenterNameAndClass" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                   <br />
                        कक्षा :  <asp:TextBox ID="txtSchoolOrCenterClass" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                         </td>
                                <td colspan="2" class="auto-style10">७.१ यदि अध्ययनरत हो भने शैक्षिक खर्च कसले दिन्छ ? <asp:DropDownList ID="ddlWhoPaysEducation" runat="server">
                                  
                                    
                                     </asp:DropDownList>
                                   </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">७.२ यदि पढाई छाडेको भए कति कक्षा पढेर छोडेको ? र किन ?
                                        <asp:TextBox ID="txtWhySchoolLeft" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                  
                                    <br />
                                      कक्षा:<asp:TextBox runat="server" ID="txtAtWhatClassSchoolLeft" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    </td>
                                    <td class="auto-style10">
                                        ७.३
                                        पढ्ने विचार नभए कुनै सिपमुलक तालिम दिए हुन्छ ?<br />
&nbsp;<asp:DropDownList ID="ddlWantVocationalTraining" runat="server">
                                            <asp:ListItem Value="1">हुन्छ</asp:ListItem>
                                            <asp:ListItem Value="0">हुदैन</asp:ListItem>
                                     </asp:DropDownList>
                                    </td>
                                    <td class="auto-style10">.७.४ यदि हुन्छ भने चाहिएको सिपमुलक तालिमको विवरण: कहाँ लिने <asp:TextBox runat="server" ID="txtWhereVocationalTraining" CssClass="txtShortName-style"></asp:TextBox>
                                        <br />
                                        कहाँ बस्ने<asp:TextBox runat="server" ID="txtWhereToStayDuringVocationalTraining" CssClass="txtShortName-style"></asp:TextBox>
                                    </td>
                                    <td class="auto-style10">७.५ यदि हुँदैन भने के गर्ने विचार छ ? <asp:TextBox ID="txtWhatWantToDo" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                                        
                                      

                                </tr>
                                       <tr>
                    <td colspan="4">८. आप्रवास र कामको अवस्था:</td>
                </tr>
                            <tr>

                                <td class="auto-style8">.८.१ तपाईले काम गर्न थाल्नुभएको कति समय भयो  ?<br />
&nbsp;<asp:TextBox runat="server" ID="txtChildWorkedMonth" CssClass="txtNumber-style" TextMode="Number" Text="0"></asp:TextBox>
                                    महिना<br />
&nbsp;<asp:TextBox ID="txtChildWorkedYear" runat="server" CssClass="txtNumber-style" TextMode="Number" Text="0"></asp:TextBox>
                                    बर्ष</td>
                                <td class="auto-style8">&nbsp;८.२ तपाईलाई काम गरिरहेको ठाउँ थाहा छ ?<br />
&nbsp;<asp:DropDownList ID="ddlParentKnowWorkingStation" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList></td>
                                    <td class="auto-style8">८.३ परिवारसँग भेटघाट वा सम्पर्क गर्न पाईन्छ ?<br />
&nbsp;<asp:DropDownList ID="ddlIsAllowedToContactParent" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">पाईन्छ</asp:ListItem>
                            <asp:ListItem Value="0">पाईँदैन</asp:ListItem>
                        </asp:DropDownList></td>

                                <td class="auto-style8">पाईन्छ भने कहिले ?<br />
&nbsp;<asp:DropDownList ID="ddlParentContactFrequency" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                           
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td class="auto-style8">८.४ तपाईले दैनिक कति घण्टा काम गर्नुपर्छ ?<br />
&nbsp;<asp:TextBox ID="txtChildDailyHoursToWork" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
						</td>
                            <td class="auto-style8">८.५ काम गर्ने समय:<br />
                                विहान: <asp:TextBox runat="server" ID="txtChildMorningWorkTime" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox><br />
                               बेलुकी :<asp:TextBox ID="txtChildEveningWorkTime" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
							   </td>
                               <td colspan="2" class="auto-style8">८.६ तपाईले के के काम गर्नुपर्छ दिनहुँ<br />
&nbsp;<asp:TextBox ID="txtChildWhatTasksToDo" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox></td>

                            </tr>

                            <tr>
                               
                    <td class="auto-style8">८.७ तलब कति समयमा पाईन्छ?<br />
&nbsp;<asp:DropDownList ID="ddlSalaryObtainFrequency" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            
                        </asp:DropDownList>
                    </td>

                    <td class="auto-style8">८.८ तलबको पैसा कसले लिने गर्नुहुन्छ ?
                        <asp:DropDownList ID="ddlPayementReceiver" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">यदि अन्य ब्यक्तिले हो भने उक्त ब्यक्तिको नाम र नाता उल्लेख गर्नुहोस् : 
                        <asp:TextBox ID="txtOtherPersonToTakeSalary" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                            </tr>
                            <tr>
                                  <td class="auto-style8" colspan="2">८.९ बिदाको व्यवस्था छ कि छैन ?<br />
                        <asp:DropDownList ID="ddlIsVacation" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8" colspan="2">यदि छ भने कहिले कहिले ?<br />
&nbsp;<asp:DropDownList ID="ddlVacationFrequency" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                           
                        </asp:DropDownList>
                    </td>
                               
                            </tr>
                             <tr>
                    <td colspan="4">९. रोजगारदाताको परिवारले गर्ने व्यवहार  ?</td>
                </tr>
                            <tr>
                                <td class="auto-style10">९.१ तपाईलाई रोजगार दाताको परिवारमा सबैभन्दा धरै कस्ले माया गर्दछ ?
                        <asp:DropDownList ID="ddlWhoLovesMost" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                           
                        </asp:DropDownList>
						</td>
                    <td class="auto-style10">९.२ माया गर्ने तरिका कस्तो छ ?
                        <br />
                                    <asp:CheckBoxList ID="chkLoveway" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>
									
                        </td>


                                <td class="auto-style10">९.३ परिवारको श्रममा संलग्न बालबालिकालाई हिंसा शोषण दुर्व्यहार भएको थाहा छ ?
                                    <asp:DropDownList ID="ddlKnowAnyHating" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                    <asp:ListItem Value="1">छ</asp:ListItem>
                                   <asp:ListItem Value="0">छैन</asp:ListItem>
                                                                                                               </asp:DropDownList>
                                    <br />
                                    छ भने कसबाट<br />
                        <asp:DropDownList ID="ddlWhoHatesMost" runat="server" CssClass="chzn-select ILO_DROPDOWN">

                        </asp:DropDownList></td>
                                <td class="auto-style10">९.४ गर्ने तरिका कस्तो छ ?
                                   <%-- Abuse Type--%>
                                    <asp:CheckBoxList ID="chkAbuseType" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>

									</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">९.५ तपाईले सो सम्बन्धमा कुनै उजुर/प्रक्रिया गर्नुभएको छ ?
                        <asp:DropDownList ID="ddlProblemShare" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList></td>
                    <td class="auto-style10">छ भने कसबाट<br />
&nbsp;<asp:TextBox ID="txtAbuseDesc" runat="server" CssClass="txtName-style"></asp:TextBox>
						</td>
                    <td class="auto-style10">९.६ खाना/सुत्न/बस्न/मनोरञ्जनको सुविधा कस्तो छ ?<br />
&nbsp;<asp:CheckBox ID="chkFooding" runat="server" Text="खाना" />
                               
                                    <asp:CheckBox ID="chkSleeping" runat="server" Text="बस्ने" />
                                
                                    <br />
                                
                                    <asp:CheckBox ID="chkStaying" runat="server" Text="सुत्ने" />
                                
                                    <asp:CheckBox ID="chkEntertainment" runat="server" Text="मनोरञ्जन" />
                       
								</td>
                                <td class="auto-style10">९.७ बालबालिकालाई सुरक्षा सम्बन्धी कस्तो सुविधा छ ? 
								    <br />
                                    छुट्टै कोठा
                                    <asp:DropDownList ID="ddlSeparateRoom" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									चाहिने वातवरण र सुरक्षा :
                                <asp:TextBox ID="txtRequiredSecurityEnvironment" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                            </td>
                            </tr>
                                <tr>
                                    <td class="auto-style10">९.८ बालबालिकाको योग्यताको प्रमाणपत्र : </td>
                                    <td class="auto-style10"><asp:DropDownList ID="ddlChildCertificate" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                        </asp:DropDownList></td>
                                   <td class="auto-style10">९.९ स्वास्थ्य सम्बन्धी अवस्था कस्तो छ ?</td>
                                    <td class="auto-style10"><asp:DropDownList ID="ddlHealthService" runat="server" CssClass="chzn-select ILO_DROPDOWN">

                                        </asp:DropDownList></td>
                                </tr>

<tr>
                                    <td colspan="4">१०. भविष्यको योजना</td>
                                </tr>
                                  <tr>
                                    <td>१०.१ तपाईलाई श्रममा संलग्न बालबालिकालाई घर फर्काउने इच्छा छ कि छैन ? 
                                        <asp:DropDownList ID="ddlWantToReturnChild" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                       <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                   <td>छैन किनकि 
                                       <asp:CheckBoxList ID="chkWhyNotReturnChild" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false">
                                       
                                                 </asp:CheckBoxList>
                                       </td>
                                                                       
                                    <td colspan="2">
                                        ११. बालबालिकाको पढाईलाई निरन्तरता दिने ईच्छा छ ?<br />
&nbsp;<asp:DropDownList ID="ddlWantContinuation" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                       </asp:DropDownList>
                                    </td>
                                      </tr>

 <tr>
                                    <td>
                                        छ भने विद्यालय निरन्तरताका लागि चाहिएमा कस्तो किसिमको सहयोग चाहनुहुन्छ ?
                                    </td>
                                    <td>आफुलाई <asp:TextBox ID="txtHelpYourself" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td>परिवारलाई <asp:TextBox ID="txtHelpFamily" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td>अन्य<br />
&nbsp;<asp:TextBox ID="txtHelpOther" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                </tr>
 <tr>
                                <td colspan="2">१२. तपाईलाई यस सम्बन्धमा केहि भन्नु छ भने निसंकोच व्यक्त गर्नुहोस् ।
                                <asp:TextBox ID="txtEmployerNote" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox>

                                </td>


     <td colspan="2">सर्वेक्षकको टिप्पणी (बुँदागत)

                       <asp:TextBox ID="txtSurveyerNote" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox>
         </td>
                        </tr>


                            </table>
                        </td>
                    </tr>
                   

                   
                    
                            <tr>
                                <td>सर्वेक्षकको नाम
                        <asp:TextBox ID="txtSurveyerName" runat="server" CssClass="txtName-style"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    फारम बूझाएको मिति
                        
<input id="txtFormSubmitDate" name="txtFormSubmitDate" value="" size="12" onfocus="this.blur()" readonly   runat="server" />
<input id="txtSubmitDate" name="txtSubmitDate" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtFormSubmitDate,document.forms[0].txtSubmitDate);return false;" >
                                    <img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt=""></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRangeNew/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>

                                </td>
                               
                                </tr>
                    <tr>
                     
                        <td style="text-align:center;"  class="auto-style4">


                            &nbsp;</td>

                    </tr>
                    <tr>
                     
                        <td style="text-align:center;"  class="auto-style4">


                            &nbsp;</td>

                    </tr>
                    <tr>
                     
                        <td style="text-align:center;"  class="auto-style4">


                            &nbsp;</td>

                    </tr>
                    <tr>
                     
                        <td style="text-align:center;"  class="auto-style4">


                            &nbsp;</td>

                    </tr>
                    <tr>
                     
                        <td style="text-align:center;"  class="auto-style4">


                            &nbsp;</td>

                    </tr>
                    <tr>
                     
                        <td style="text-align:center;"  class="auto-style4">


                            <asp:Button ID="btnSubmit" runat="server" Text="डाटा इन्ट्री गर्नुहोस" class="super button search_button" width="189px" OnClick="btnSubmit_Click"/>


                        </td>

                    </tr>
                    
                    </table>
            </div>
        </div>

    </form>
</body>
</html>