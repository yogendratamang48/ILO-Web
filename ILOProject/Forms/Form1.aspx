<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="ILOProject.Forms.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>तथ्याङ्क संकलन फारम (क)</title>
    <style type="text/css">

        td{

            border: 4px solid white;
        }
              .txtShortName-style {
          /*height: 25px;*/
        width: 175px;
    }
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
        }

        .auto-style4 {
            width: 20%;
            background-color: #FFFFCC;
        }

        .txtNumber-style {
            /*height: 25px;*/
            width: 50px;

        }

        .txtName-style {
            /*height: 25px;*/
            width: 200px;
        }

        .txtAddress-Style {
            /*height: 30px;*/
            width: 250px;
        }

        .txtLongAddress-Style {
            /*height: 30px;*/
            width: 300px;
        }

        .ddlYesNo-Style {
            height: auto;
        }
        .auto-style7 {
            /*height: 30px;*/
            background-color:white;
        }
        .auto-style8 {
            width: 20%;
            background-color: #FFFFCC;
            height: 50px;
        }
        .auto-style10 {
            width: 20%;
            background-color: #FFFFCC;
            height: 58px;
        }
        .auto-style11 {
            height: 58px;
        }
        #txtFormFillDate {
            width: 163px;
            height: 27px;
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

                <%--MainTop --%><%--<div id="MainTop"style="float: left; width: 48%">--%>
                <table class="auto-style1" align="left">
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <h1>जिल्ला बाल कल्याण समिति, काभ्रेपलाञ्चोक <br />
                            तथ्याङ्क संकलन फारम (क) - २०७१, काभ्रेपलाञ्चोक </h1>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style4">नगरपालिका छान्नुहोस् </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddlMunicipality" runat="server"  CssClass ="chzn-select ILO_DROPDOWN">
                                            <asp:ListItem Value="धुलिखेल">धुलिखेल</asp:ListItem>
                                            <asp:ListItem Value="बनेपा">बनेपा</asp:ListItem>
                                            <asp:ListItem Value="पनौती">पनौती</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style4">सुचना दिन तपाई सहमत हुनुहुन्छ ?</td>
                                    <td class="auto-style4">
                                        <asp:RadioButtonList ID="rblFormAgree" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1" Selected="True">छु</asp:ListItem>
                                            <asp:ListItem Value="0">छैन</asp:ListItem>

                                        </asp:RadioButtonList>


                                    </td>

                                </tr>
                                <tr>
                                    <td class="auto-style4">सिलसिलेबर नम्बर</td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="txtFormSerialNo" runat="server" CssClass="txtNumber-style"></asp:TextBox>
                                    </td>
                                    <td class="auto-style4">फारम नम्बर</td>
                                    <td  class="auto-style4">
                                        <asp:TextBox ID="txtFormNp" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">फारम भरेको मिति </td>
                                    <td  class="auto-style4">
                                                                        
                                    
                                <input id="txtDateFormFill" name="txtDateFormFill" value="" size="12" onfocus="this.blur()" readonly   runat="server" Class="txtShortName-style" />
<input id="txtDateToFill" name="txtDateToFill" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtDateFormFill,document.forms[0].txtDateToFill);return false;" ><img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt=""></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRangeNew/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>
                                    </td>
                                    <td class="auto-style4">फारम भरेको स्थान </td>
                                    <td  class="auto-style4">
                                        <asp:TextBox ID="txtFomFillPlace" runat="server" CssClass="txtName-style"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">उत्तरदाताको नाम थर</td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="txtAnswererName" runat="server" CssClass="txtName-style"></asp:TextBox>
                                    </td>

                                    <td class="auto-style4">सम्पर्क नम्बर</td>
                                    <td  class="auto-style4">
                                        <asp:TextBox ID="txtAnsContactNo" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                </tr>
                                <tr>
                        <td class="auto-style7" colspan="4"><b>ठेगाना:</b></td>
                    </tr>
                                <tr>
                                    <td class="auto-style4">ठेगाना-स्थायी: जिल्ला&nbsp; &nbsp;
                                        <asp:DropDownList ID="drpPermanentDistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpPermanentDistrict_SelectedIndexChanged" CssClass ="chzn-select ILO_DROPDOWN">
                                        </asp:DropDownList>
                                    </td>

                                    <td class="auto-style4"><asp:RadioButtonList ID="rblPermanentVillage" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1" Selected="True">गा.वि.स.</asp:ListItem>
                                        <asp:ListItem Value="0">न.पा.</asp:ListItem>
                                        </asp:RadioButtonList>
&nbsp;<asp:DropDownList ID="drpPermanentMunorVdc" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style4">ठेगाना-स्थायी: वडा नं.&nbsp; &nbsp;
                                        <asp:TextBox ID="txtPermanentWardNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                        &nbsp; &nbsp;<br />टोल&nbsp; &nbsp;<asp:TextBox ID="txtPermanentTole" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                    <td class="auto-style4">ठेगाना-स्थायी: घर नम्बर&nbsp; &nbsp;<asp:TextBox ID="txtPermanentHouseNo" runat="server" CssClass="txtNumber-style" ></asp:TextBox>
                                        <br /> नोट:<asp:TextBox ID="txtPermanetNote" runat="server" CssClass="txtName-style"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">ठेगाना-अस्थायी: जिल्ला&nbsp; &nbsp;
                                        
                                        <asp:DropDownList ID="drpTempDistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpTempDistrict_SelectedIndexChanged" CssClass ="chzn-select ILO_DROPDOWN">
                                        </asp:DropDownList>
                                    </td>

                                    <td class="auto-style4"><asp:RadioButtonList ID="rblTempVillage" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1" Selected="True">गा.वि.स.</asp:ListItem>
                                        <asp:ListItem Value="0">न.पा.</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:DropDownList ID="drpTempMunOrVdc" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style4">ठेगाना-अस्थायी:वडा नं.&nbsp; &nbsp;
                                        <asp:TextBox ID="txtTempWardNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                        <br />
                                        टोल&nbsp; &nbsp;<asp:TextBox ID="txtTempTole" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                    <td class="auto-style4">ठेगाना-अस्थायी: घर नम्बर&nbsp; &nbsp;<asp:TextBox ID="txtTempHouseNo" runat="server" CssClass="txtNumber-style"></asp:TextBox>

                                         <br /> नोट:<asp:TextBox ID="txtTempNote" runat="server" CssClass="txtName-style" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                        <td class="auto-style7" colspan="4"><b>पारिवारिक विवरण:</b></td>
                    </tr>
                                <tr>
                                    <td class="auto-style4">१.१ मुख्य रोजगारदाताको नाम थर<br />
                                        <asp:TextBox ID="txtEmployerFullName" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td class="auto-style4">१.२ रोजगारदाताको पेशा
                                        <br />
                                        &nbsp; &nbsp;
                                    <asp:DropDownList ID="ddlEmployerProfession" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style4">१.३ जातजाति&nbsp; &nbsp;
                                    <asp:DropDownList ID="ddlEmployerCast" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style4">१.४ बसोवासको अवस्था&nbsp;<asp:DropDownList ID="ddlHabitantStatus" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">१.५ धर्म &nbsp;&nbsp;<asp:DropDownList ID="ddlEmployerReligion" runat="server" CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style4">१.६.१ मुख्य रोजगारदाताको पारिवारिक अवस्था:</td>
                                    <td class="auto-style4">महिला&nbsp;
            <asp:TextBox ID="txtEmployerFamilyWomenNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>


                                        &nbsp; पुरुष&nbsp;
            <asp:TextBox ID="txtEmployerFamilyMenNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>


                                    </td>



                                    <td class="auto-style4">बालक&nbsp;
            <asp:TextBox ID="txtEmployerFamilyBoysNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                        &nbsp;बालिका
            <asp:TextBox ID="txtEmployerFamilyGirlsNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>

                                </tr>
                                <tr>
                                    <td class="auto-style4">१.६.२ मुख्य रोजगारदाताको शैक्षिक योग्यता</td>
                                    <td colspan="3"  class="auto-style4">
                                        <asp:TextBox ID="txtEmployerEducation" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                                </tr>
                                <tr>
                        <td class="auto-style7" colspan="4"><b>२. बालश्रमिकको बारेमा</b></td>
                    </tr>
                                <tr>
                                <td class="auto-style8">२.१ तपाईको घर वा कार्यस्थलमा कतिजना वालश्रमिकहरु छन् ?</td>
                        <td class="auto-style8" colspan="3">बालक
                                    <asp:TextBox ID="txtChildBoyNoInOffice" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                            बालिका
                                    <asp:TextBox ID="txtChildGirlNoInOffice" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                            &nbsp;जम्मा
                                    <asp:TextBox ID="txtChildTotalNoInOffice" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                        </td>
                                </tr>
                                <tr>
                                   <td class="auto-style4">बाल श्रमिकको शैक्षिक अवस्था:</td>
                                  <td class="auto-style4">विद्यालय जाने&nbsp;<asp:TextBox ID="txtChildGoingSchoolNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    &nbsp;जना &nbsp;<br />
                                    विद्यालय नजाने&nbsp;<asp:TextBox ID="txtChildNotGoingSchoolNo" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    &nbsp;जना</td>         
                                  <td class="auto-style4" colspan="2">छ भने, विद्यालयको नाम 
                                    <asp:TextBox ID="txtChildShcoolName" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox><br />
                                       ठेगाना
                                       <asp:TextBox ID="txtChildSchoolAddress" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                </td>           

                           </tr>
                                </table>
                            </td>

                    </tr>       
                    <tr>
                        <td colspan="2">
                            <table class="auto-style1"><tr>
                        <td colspan="5" class="auto-style7"><b>२.१.१ श्रमिक वालबालिकाहरुको विवरण </b></td>
                    </tr>
                                <tr>
                               <td class="auto-style4">बालबालिकाको नाम</td>
                               <td class="auto-style4">उमेर</td>
                               <td class="auto-style4">बावु/आमाको नाम</td>
                               <td class="auto-style4">पूरा ठेगाना</td>
                               <td class="auto-style4">सम्पर्क</td>
                           </tr>                             
                                <tr>
                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildName" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildAge" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentName" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentAddress" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentContact" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildName2" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChidlAge2" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentName2" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentAddress2" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentContact2" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildName3" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChidlAge3" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentName3" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentAddress3" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentContact3" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                </tr>
                                 <tr>
                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildName4" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChidlAge4" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentName4" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentAddress4" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                                    <td class="auto-style4">&nbsp;
                                        <asp:TextBox ID="txtChildParentContact4" runat="server" CssClass="txtName-style"></asp:TextBox></td>

                                </tr>

                            </table>
                                    </td>
                                    

                    </tr>
                    <tr>
                        <td colspan="2">
                            <table style="width:100%">
                                <tr>
                                    <td  class="auto-style4" style="width:24%">२.२ श्रमिकको रुपमा राखेको विवरण<br /><asp:DropDownList ID="ddlHowChildSearched" runat="server"  CssClass ="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td  class="auto-style4" style="width:24%">२.३ के रोजगारीका लागि कुनै सम्झौता गरिएको छ ?<br />
&nbsp;<asp:DropDownList ID="ddlIsEmploymentAgreement" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                            <asp:ListItem>लिखित</asp:ListItem>
<asp:ListItem Value="मौखिक">मौखिक</asp:ListItem>
                                            <asp:ListItem Value="छैन">छैन</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width:52%"  class="auto-style4">२.४ रोजगारीका शर्तमा के के कुराहरु उल्लेख भएका छन् ? &nbsp;<br />

                            <asp:CheckBoxList ID="chkJobAgreement" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>
                        </td>
                                </tr>
                              
                            </table>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table>
                                <tr><td class="auto-style4">२.५ तपाईले बालबालिकालाई नै श्रममा लगाउनुको मु्ख्य कारण के हो ?<asp:TextBox ID="txtMainResonToChildLabor" runat="server" Height="44px" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                        <td class="auto-style4">२.६ बालबालिकाले कैले देखि काम गरेका हुन ?
                            <asp:TextBox ID="txtWhenChildStartedWork" runat="server" TextMode="Number" CssClass="txtNumber-style">
                            0</asp:TextBox></td>
                                <td class="auto-style4">२.७ काम गरेबापद के के दिने गरिएको छ ? यदि रकम दिने भए.. 
                              <asp:DropDownList ID="ddlSalaryInfo" CssClass ="chzn-select ILO_DROPDOWN" runat="server">
                            </asp:DropDownList></td>
                        <td class="auto-style4">२.८ परिवारसँग महिनामा कतिपटक सम्पर्क हुन्छ ?
                            <asp:TextBox ID="txtFamilyMeetNo" runat="server" TextMode="Number" CssClass="txtNumber-style">                                                          
                            0</asp:TextBox>
                        </td>
                                </tr>
                            </table>
                        </td>
                        
                    </tr>

                    <tr>
                    <td colspan="2" class="auto-style7"><b>३. व्यावहारिक विषयको ज्ञान र चेतनास्तर:</b></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="auto-style1">
                            <tr>
                            <td class="auto-style4">३.१ के तपाईलाई बालअधिकारका बारेमा थाहा छ ?<asp:DropDownList ID="ddlKnowChildRight" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                    <asp:ListItem Value="1">छ</asp:ListItem>
                                    <asp:ListItem Value="0">छैन</asp:ListItem>
                                </asp:DropDownList>
                           </td>
                            <td class="auto-style4">३.२ बाल अधिकार भनेको के हो ?
                                   <asp:TextBox ID="txtWhatIsChildRight" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>

                            </td>
                                <td class="auto-style4">३.३ के तपाईलाई १४ बर्ष भन्दा कम उमेरका बालबालिकालाई श्रममा लगाउन हुन्न भन्ने कुरा थाहा छ ? <asp:DropDownList ID="ddlNoChildLaborBelow14" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>

                        </asp:DropDownList>
					</td>
                    <td class="auto-style4">३.३.१ के तपाई यो धारणासँग सहमत हुनुहुन्छ ?
                        <asp:DropDownList ID="ddlViewAboutNoChildLaborBelow14" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList>
					</td>
                            </tr>
                            <tr>
                                            <td class="auto-style4">यदि छैन यसको विकल्पमा के हुनुपर्दछ होला ?
                                    <asp:TextBox ID="txtViewAboutNoChildLaborBelow14" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                            </td>
                                            <td class="auto-style4">३.३.२ बालश्रमबाट बालबालिकामा पर्ने कम्तिमा ३ ओटा असरहरु थाहा छ ?
                                    <asp:DropDownList ID="ddlKnowThreeEffectsOfChildLabor" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList></td>
                                            <td class="auto-style4">३.४ के तपाईलाई वयस्क श्रमिकहरु उपलब्ध छन् भन्ने थाहा छ ?
                                    <asp:DropDownList ID="ddlKnowMaturedLabor" runat="server" CssClass="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList>
                                            </td>
                                 <td class="auto-style4">३.४.१ थाहा छ भने के बाल श्रमिकको सट्टामा बयस्क श्रमिक प्रयोग गर्न चाहनुहुन्छ ?
                        <asp:DropDownList ID="ddlUseAdultNotChild" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">चाहन्छु</asp:ListItem>
                            <asp:ListItem Value="0">चाहँदिन</asp:ListItem>
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">३.४.२ यदि चाहनुहुन्छ भने के कारणले होला ? </td>
                        <td class="auto-style4" colspan="3"><asp:TextBox ID="txtWhyMaturedLabor" runat="server" CssClass="txtLongAddress-Style">
                       
                        </asp:TextBox></td>
                            </tr>
                        </table>
                        </td>
                    
                </tr>
                                 <tr>

                                     <td colspan="4" class="auto-style7">४. श्रमिक बालबालिकाको बिवरण</td>
                                 </tr>
                    <tr>
                        <td class="auto-style4">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style10">४.१ पूरा नाम थर: 
                                        <asp:TextBox ID="txtChildNameOnFamilyInfo" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td class="auto-style10">लिङ्ग: 
                                        <asp:DropDownList ID="ddlChildSex" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                       </asp:DropDownList>
						            </td>
                                    <td class="auto-style11">४.२ जन्ममिति:     
                                <input id="txtBirthDate" name="txtBirthDate" value="" size="12" onfocus="this.blur()" readonly   runat="server" Class="txtShortName-style"/>
<input id="txtBirthdateTO" name="txtBirthdateTO" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtBirthDate,document.forms[0].txtBirthdateTO);return false;" ><img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt=""></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRange/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>
                                     </td>
                                    <td class="auto-style4">उमेर
                                            <asp:TextBox ID="txtChildCurrentAge" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                     <td class="auto-style4">४.३ जातजाती
                        <asp:DropDownList ID="ddlChildCastInfo" runat="server"  CssClass ="chzn-select ILO_DROPDOWN">
                            
                        </asp:DropDownList>
						</td>
                <td class="auto-style4">४.४ धर्म: 
                                    <asp:DropDownList ID="ddlChildReligion" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        
                                    </asp:DropDownList>
                  
						</td>

                    <td class="auto-style4" colspan="2">४.५ बालबालिकाको शारिरिक अवस्था
                     <asp:TextBox ID="txtChildPhysicalStatus" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox></td>  
 
                    
                                </tr>
                                

                                </table>
                        </td>
                           
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style7">५. बालक/बालिकाको पारिवारिक स्थिति:</td>
                    </tr>
                    <tr>

                    
                    <td colspan="2" class="auto-style4">
                        <table class="auto-style1">
                            <tr>
                                <td>परिवारको सदस्यहरुको नामावली</td>
                                <td>लिङ्ग</td>
                                <td>उमेर</td>
                                <td>बालक/बालिकाको नाता</td>
                                <td>शैक्षिक अवस्था</td>
                                <td>पेशागत विवरण</td>
                                <td>जिवित/मृत्यु/अपाङ्ग</td>
                                <td rowspan="2">
                                    <asp:Button ID="btnAddRow" runat="server" OnClick="btnAddRow_Click" Text="थप" />
                                </td>

                            </tr>
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
                            <asp:ListItem>जिवित</asp:ListItem>
                            <asp:ListItem>मत्यु</asp:ListItem>
                            <asp:ListItem>अपाङ्ग</asp:ListItem>
                        </asp:DropDownList></td>
                                   </tr>
                            <%--  <tr>
                    <td>
                        <asp:TextBox ID="txtFamilyMember2Name" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMember2Sex" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                          
                        </asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember2Age" runat="server" CssClass="txtNumber-style" TextMode="Number"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember2Relation" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                                 <td>
                        <asp:TextBox ID="txtFamilyMember2EducationStatus" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    
                    <td>
                        <asp:TextBox ID="txtFamilyMember2Profession" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMember2CurrentStatus" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem>जिवित</asp:ListItem>
                            <asp:ListItem>मत्यु</asp:ListItem>
                            <asp:ListItem>अपाङ्ग</asp:ListItem>
                        </asp:DropDownList></td>
        
                                   </tr>
                             <tr>
                    <td>
                        <asp:TextBox ID="txtFamilyMember3Name" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMember3Sex" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                          
                        </asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember3Age" runat="server" CssClass="txtNumber-style" TextMode="Number"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember3Relation" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember3EducationStatus" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtFamilyMember3Profession" runat="server" CssClass="txtShortName-style"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlFamilyMembe3CurrentStatus" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem>जिवित</asp:ListItem>
                            <asp:ListItem>मत्यु</asp:ListItem>
                            <asp:ListItem>अपाङ्ग</asp:ListItem>
                        </asp:DropDownList></td>
        
                                   </tr>--%>
                        <tr>
                            <td colspan="8">


                                <asp:GridView ID="gdvFamilyDetails" runat="server"
        Width="100%" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BackColor="AliceBlue" HeaderStyle-Font-Bold="true" GridLines="Both" CssClass="gridControl">

        
    </asp:GridView>
                                


                            </td>

                        </tr>

                          
                            
                        </table>

                    </td>
    
                        </tr>
                    <tr>
                        <td colspan="2" class="auto-style7">६. आर्थिक अवस्था</td>

                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <table class="auto-style1">
                            <tr>
                                <td>६.१ घर: 
                        <asp:DropDownList ID="ddlChildHome" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
						</td>
                    <td>६.२ थप आयको विवरण: 
                        <asp:TextBox ID="txtOtherIncomeSource" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                
                    <td>७. जन्मदर्ता गरेको:
                        <asp:DropDownList ID="ddlIsBirthRegistration" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList></td>
                                <td>८. पढ्न जानुभएको छ ?
                        <asp:DropDownList ID="ddlIsChildGoingStudy" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            
                        </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
 <td class="auto-style4">यदि छ भने: 
                        <asp:DropDownList ID="ddlStudyType" runat="server" CssClass ="chzn-select ILO_DROPDOWN">

                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">विद्यालय/केन्द्रको नाम: 
                        <asp:TextBox ID="txtSchoolOrCenterNameAndClass" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                   <br />
                        कक्षा :  <asp:TextBox ID="txtSchoolOrCenterClass" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                         </td>
               
                    <td class="auto-style4">८.१ यदि अध्ययनरत हो भने शैक्षिक खर्च कसले दिन्छ ?
                        <asp:DropDownList ID="ddlWhoPaysEducation" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
                    </td>
                                <td>८.२ यदि पढाई छाडेको भए कति कक्षा पढेर छाडेको र किन ?
						 <asp:TextBox ID="txtWhySchoolLeft" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                                  
                                    <br />
                                      कक्षा:<asp:TextBox runat="server" ID="txtAtWhatClassSchoolLeft" CssClass="txtNumber-style"></asp:TextBox>
                                    </td>
                            </tr>

                            <tr>
                                <td>८.३ पढ्ने विचार भए कुनै सीपमुलक तालिम लिन चाहनुहुन्छ ?
                        <asp:DropDownList ID="ddlWantVocationalTraining" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                         ८.४ यदि छ भने चाहिएको सिपमुलक तालिमको विवरण:<br />
                        <table style="width:100%">
                            <tr>
                                <td>
                             

                             कहाँ लिने ?
                                <asp:TextBox runat="server" ID="txtWhereVocationalTraining" CssClass="txtName-style"></asp:TextBox></td>
								
                          
                        <td> कहाँ बस्ने ?
                                <asp:TextBox ID="txtWhereToStayDuringVocationalTraining" runat="server" CssClass="txtName-style"></asp:TextBox>
								</td>
                                

                            </tr>

                        </table>
                        <td>८.५ यदि छैन भने के गर्ने विचार छ ? 
                        <asp:TextBox ID="txtWhatWantToDo" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>
                    </td>
                            </tr>
                            <tr>
                    <td colspan="4" class="auto-style7">९. आप्रवास र कामको अवस्था  ?</td>
                </tr>
                            <tr>

                                <td>९.१ तपाईले काम गर्न थाल्नुभएको कति समय भयो  ?<br />
                                <asp:TextBox runat="server" ID="txtChildWorkedMonth" CssClass="txtNumber-style" ></asp:TextBox>
                                    महिना
                                <asp:TextBox ID="txtChildWorkedYear" runat="server" CssClass="txtNumber-Style" ></asp:TextBox>
                                    बर्ष</td>
                                <td>९.२ परिवारलाई तपाई काम गरिरहेको ठाउँ थाहा छ ?
                        <asp:DropDownList ID="ddlParentKnowWorkingStation" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList></td>
                                    <td>९.३ परिवारसँग भेटघाट वा सम्पर्क गर्न पाईन्छ ?
                        <asp:DropDownList ID="ddlIsAllowedToContactParent" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">पाईन्छ</asp:ListItem>
                            <asp:ListItem Value="0">पाईँदैन</asp:ListItem>
                        </asp:DropDownList></td>

                                <td>पाईन्छ भने कहिले ?
                        <asp:DropDownList ID="ddlParentContactFrequency" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td>९.४ तपाईले दैनिक कति घण्टा काम गर्नुपर्छ ? 
                        <asp:TextBox ID="txtChildDailyHoursToWork" runat="server" CssClass="txtNumber-style"></asp:TextBox>
						</td>
                            <td>९.५ काम गर्ने समय:<br />
                                विहान: <asp:TextBox runat="server" ID="txtChildMorningWorkTime" CssClass="txtNumber-style"></asp:TextBox>
                               बेलुकी :<asp:TextBox ID="txtChildEveningWorkTime" runat="server" CssClass="txtNumber-style"></asp:TextBox>
							   </td>
                               <td colspan="2">९.६ तपाईले के के काम गर्नुपर्छ दिनहुँ
                        <asp:TextBox ID="txtChildWhatTasksToDo" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox></td>

                            </tr>

                            <tr>
                                <td>९.७ तपाईले यहाँ काम गरेबापद मासिक तलब कति पाउनुहुन्छ ? रु.
                    <asp:TextBox ID="txtMonthlySalary" runat="server" CssClass="txtNumber-style" ></asp:TextBox>
                            </td>
                    <td>९.८ तलब कति समयमा पाईन्छ?
                        <asp:DropDownList ID="ddlSalaryObtainFrequency" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
                    </td>

                    <td>९.९ तलबको पैसा कसले लिने गर्नुहुन्छ ?
                        <asp:DropDownList ID="ddlPayementReceiver" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">यदि अन्य ब्यक्तिले हो भने उक्त ब्यक्तिको नाम र नाता उल्लेख गर्नुहोस् : 
                        <asp:TextBox ID="txtOtherPersonToTakeSalary" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                            </tr>
                            <tr>
                                  <td>१०. बिदाको व्यवस्था छ कि छैन ?<br />
                        <asp:DropDownList ID="ddlIsVacation" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>यदि छ भने कहिले कहिले ?
                        <asp:DropDownList ID="ddlVacationFrequency" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
                    </td>
                                <td colspan="2">
                                   
                                </td>
                            </tr>
                             <tr>
                    <td colspan="4" class="auto-style7">११. रोजगारदातोको परिवारले गर्ने व्यवहार  ?</td>
                </tr>
                            <tr>
                                <td>११.१ तपाईलाई रोजगार दाताको परिवारमा सबैभन्दा धरै कस्ले माया गर्दछ ?
                        <asp:DropDownList ID="ddlWhoLovesMost" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
						</td>
                    <td>११.२ माया गर्ने तरिका कस्तो छ ?
                        <br />
<asp:CheckBoxList ID="chkLoveway" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>                        

                    </td>
                                <td>११.३ तपाईलाई रोजगारदाताको परिवारमा सबैन्दा बढि हेला कस्ले गर्दछ ?
                        
                                    <asp:DropDownList ID="ddlWhoHatesMost" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>

                                </td>
                                <td>११.४ हेला गर्ने तरिका कस्तो छ ?

                                    <br />
                                    <asp:CheckBoxList ID="chkAbuseType" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false"> </asp:CheckBoxList>
									</td>
                            </tr>
                            <tr>
                                <td>११.५ तपाईले आफ्नो मनको कुरा वा समस्या रोजगारदाताको परिवार/युनियन/संघसंस्था/समूह/साथीभाईहरुमा कसैलाई भन्ने गर्नुहुन्छ वा गर्नुहुन्न ?
                        <asp:DropDownList ID="ddlProblemShare" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                            <asp:ListItem Value="1">गर्छु</asp:ListItem>
                            <asp:ListItem Value="0">गर्दिन</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>यदि गर्नुहुन्छ भने कोसँग
                        <asp:TextBox ID="txtProblemShareToWhom" runat="server" CssClass="txtName-style"></asp:TextBox>
						</td>
                    <td>११.६ खाना/सुत्न/बस्न/मनोरञ्जनको सुविधा कस्तो छ ?<br />
<asp:CheckBox ID="chkFooding" runat="server" Text="खाना" />
                               
                                    <asp:CheckBox ID="chkSleeping" runat="server" Text="बस्ने" />
                                
                                    <br />
                                
                                    <asp:CheckBox ID="chkStaying" runat="server" Text="सुत्ने" />
                                
                                    <asp:CheckBox ID="chkEntertainment" runat="server" Text="मनोरञ्जन" />
                       
								</td>
                                <td>११.७ तपाईलाई सुरक्षा सम्बन्धी कस्तो सुविधा छ ? 
								    <br />
                                    छुट्टै कोठा
                                    <asp:DropDownList ID="ddlSeparateRoom" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList>
									<br />
									चाहिने वातवरण र सुरक्षा :
                                <asp:TextBox ID="txtRequiredSecurityEnvironment" runat="server" CssClass="txtShortName-style"></asp:TextBox>
                            </td>
                            </tr>
                            <tr>
                         <td>११.८ तपाईलाई स्वास्थ्य सम्नन्धी कस्तो ब्यवस्था छ ?
                        <asp:DropDownList ID="ddlHealthService" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                        </asp:DropDownList>
						</td>
                                <td colspan="3">१२. भविष्यको योजना (बालबालिकाको)<br />
&nbsp;<asp:TextBox ID="txtFuturePlan" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                                </tr>
                             <tr>
                                    <td>१२.१ तपाईले घर किन छोड्नु भयो ? <asp:DropDownList ID="ddlLabourCause" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                                                        </asp:DropDownList>

                                    </td>
                                    <td>१२.२ तपाईलाई घर फर्कने इच्छा छ कि छैन ? <asp:DropDownList ID="ddlWantToReturnChild" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                   <td>छैन किनकि <asp:CheckBoxList ID="chkWhyNotReturnChild" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false">
                                       
                                                 </asp:CheckBoxList>
                                       </td>
                                                                        
                                    <td >
                                        १३. बालबालिकाको योग्यता प्रमाणपत्र: <br />
&nbsp;<asp:DropDownList ID="ddlWantContinuation" runat="server" CssClass ="chzn-select ILO_DROPDOWN">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                       </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        १४. तपाईलाई सहयोग चाहिएमा कस्तो किसिमको सहयोग चाहनुहुन्छ ? </td>
                                    <td>आफुलाई <asp:TextBox ID="txtHelpYourself" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td>परिवारलाई <asp:TextBox ID="txtHelpFamily" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                    <td>अन्य<br />
&nbsp;<asp:TextBox ID="txtHelpOther" runat="server" CssClass="txtName-style"></asp:TextBox></td>
                                </tr>
                            <tr>
                                <td colspan="2">१५. तपाईलाई यस सम्बन्धमा केहि भन्नु छ भने निसंकोच व्यक्त गर्नुहोस् ।
                                <asp:TextBox ID="txtEmployerNote" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox>

                                </td>
                                <td colspan="2">सर्वेक्षकको टिप्पणी (बुँदागत)

                       <asp:TextBox ID="txtSurveyerNote" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox>

                    </td>
                            </tr>

                            <tr>
                                <td colspan="2">सर्वेक्षकको नाम
                        <asp:TextBox ID="txtSurveyerName" runat="server" CssClass="txtName-style"></asp:TextBox>
                    </td>
                    <td colspan="2">फारम बूझाएको मिति
                       

                         <input id="txtSubmitDates" name="txtSubmitDates" value="" size="12" onfocus="this.blur()" readonly   runat="server" Class="txtShortName-style"/>
<input id="txtSubmitTo" name="txtSubmitTo" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtSubmitDates,document.forms[0].txtSubmitTo);return false;" >
                                    <img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt="" /></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRangeNew/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>

                    </td>
                            </tr>

                    <tr>
                        <td style="height:80px;"  class="auto-style4" colspan="5">


                        </td>
                        </tr>
                    <tr>
                        <td style="text-align:center;"  class="auto-style4" colspan="5">


                            <asp:Button ID="btnSubmit" runat="server" Text="डाटा इन्ट्री गर्नुहोस" class="super button search_button" width="189px" OnClick="btnSubmit_Click"/>


                        </td>

                    </tr>
                </table>
            </div>
        </div>

    </form>
</body>
</html>
