<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form3.aspx.cs" Inherits="ILOProject.Forms.Form3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            background-color: #CCFAD2;
        }

        .auto-style2 {
            text-align: center;
        }

        .auto-style4 {
            width: 20%;
            background-color: #CCCCFF;
        }

        .auto-style6 {
            background-color: #CCFFCC;
            width: 16%;
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

        .ddlYesNo-Style {
            height: auto;
        }
        .auto-style9 {
            width: 16%;
            background-color: #FFFFCC;
        }
        .auto-style11 {
            width: 20%;
            background-color: #CCFFCC;
        }
        .auto-style12 {
            background-color: #CCFFCC;
        }
        .auto-style14 {
            width: 16%;
            background-color: #CCCCFF;
        }
        .auto-style16 {
            background-color: #FFFFCC;
        }
        .auto-style17 {
            background-color: #CCCCFF;
        }
        .auto-style18 {
            width: 20%;
            background-color: #CCCCFF;
        }
        .auto-style20 {
            background-color: #CCFFCC;
            width: 16%;
            height: 33px;
        }
        .auto-style21 {
            width: 20%;
            background-color: #CCFFCC;
            height: 33px;
        }
        .auto-style22 {
            background-color: #CCFFCC;
            height: 33px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            width: 20%;
            background-color: #FFFFCC;
        }
        .auto-style25 {
            width: 20%;
            background-color: #FFFFCC;
            height: 98px;
        }
        .auto-style26 {
            background-color: #CCCCFF;
            width: 625px;
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
          function ScroolToSpecific() {

              jQuery('html, body').animate({
                  scrollTop: jQuery("#lblDOBHdr").offset().top   //lblDOBHdr is id of where the scroll goes
              }, 2000);

          }


		</script>
</head>

<body style="font-size: small">
    <form id="form1" runat="server">

                <%--MainTop --%>
                <%--<div id="MainTop"style="float: left; width: 48%">--%>
                <table class="auto-style1" align="left">
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <h1>जिल्ला बाल कल्याण समिति, काभ्रेपलाञ्चोक</h1>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table class="auto-style1" border="0">
                                <tr>
                                    <td class="auto-style20">नगरपालिका छान्नुहोस् </td>
                                    <td class="auto-style20">
                                        <asp:DropDownList ID="ddlMunicipality" runat="server" Height="22px" CssClass="chzn-select ILO-DROPDOWN" TabIndex="0">
                                            <asp:ListItem Value="1" Text="धुलिखेल">धुलिखेल</asp:ListItem>
                                            
                                            <asp:ListItem Value="2" Text="पनौती">पनौती</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style21">सुचना दिन तपाई सहमत हुनुहुन्छ ?</td>
                                    <td class="auto-style22">
                                        <asp:RadioButtonList ID="rblFormAgree" runat="server" RepeatDirection="Horizontal" TabIndex="1">
                                            <asp:ListItem Value="1">छु</asp:ListItem>
                                            <asp:ListItem Value="0">छैन</asp:ListItem>

                                        </asp:RadioButtonList>


                                    </td>

                                </tr>
                                <tr>
                                    <td class="auto-style6">सिलसिलेबर नम्बर</td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtFormSerialNo" runat="server" CssClass="txtNumber-style" TabIndex="2"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">फारम नम्बर</td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="txtFormNp" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="3"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">फारम भरेको मिति </td>
                                    <td class="auto-style6">
                                        <input id="txtDateFormFill" name="txtDateFormFill" value="" size="12" onfocus="this.blur()" readonly   runat="server" />
<input id="txtDateToFill" name="txtDateToFill" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtDateFormFill,document.forms[0].txtDateToFill);return false;" ><img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt="" tabindex="4"></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRangeNew/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>
                                    </td>
                                    <td class="auto-style11">फारम भरेको स्थान </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="txtFomFillPlace" runat="server" CssClass="txtName-style" TabIndex="5"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">उत्तरदाताको नाम थर</td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtAnswererName" runat="server" CssClass="txtName-style" TabIndex="5"></asp:TextBox>
                                    </td>

                                    <td class="auto-style11">सम्पर्क नम्बर</td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="txtAnsContactNo" runat="server" TabIndex="6"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">ठेगाना-स्थायी: जिल्ला&nbsp; &nbsp;
                                        <asp:DropDownList ID="ddlPermanentDistrict" runat="server"  CssClass="chzn-select ILO_DROPDOWN" OnSelectedIndexChanged="ddlPermanentDistrict_SelectedIndexChanged" AutoPostBack="true" TabIndex="7"></asp:DropDownList></td>

                                    <td class="auto-style9">
                                        <asp:RadioButtonList ID="rblPermanentVillage" runat="server" RepeatDirection="Horizontal" TabIndex="8">
                                            <asp:ListItem Value="1">गा.वि.स.</asp:ListItem>
                                            <asp:ListItem Value="0">नगरपालिका</asp:ListItem>
                                        </asp:RadioButtonList>
                                        ठेगाना-स्थायी: गा.वि.स./न.पा.&nbsp; &nbsp;<asp:DropDownList ID="ddlPermanentMunorVdc" TabIndex="9" runat="server" CssClass="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style24">वडा नं.&nbsp; &nbsp;
                                        <asp:TextBox ID="txtPermanentWardNo" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="10">0</asp:TextBox>
                                        &nbsp; &nbsp;<br />
                                        टोल&nbsp; &nbsp;<asp:TextBox ID="txtPermanentTole" runat="server" CssClass="txtName-style" TabIndex="11"></asp:TextBox></td>

                                    <td class="auto-style24">ठेगाना-स्थायी: घर नं. &nbsp;<asp:TextBox ID="txtPermanentHouseNo" TabIndex="12" runat="server" CssClass="txtShortName-style"></asp:TextBox>
                                        <br />
                                        नोट: <asp:TextBox ID="txtPermanentNote" runat="server" CssClass="txtShortName-style" TabIndex="13"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">ठेगाना-अस्थायी: जिल्ला&nbsp; &nbsp;
                                        <asp:DropDownList ID="ddlTempDistrict" runat="server" TabIndex="14" CssClass="chzn-select ILO_DROPDOWN" OnSelectedIndexChanged="ddlTempDistrict_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>

                                    <td class="auto-style9">
                                        <asp:RadioButtonList ID="rblTempVillage" runat="server" RepeatDirection="Horizontal" TabIndex="15">
                                            <asp:ListItem Value="1">गा.वि.स.</asp:ListItem>
                                            <asp:ListItem Value="0">नगरपालिका</asp:ListItem>
                                        </asp:RadioButtonList>
                                        ठेगाना-अस्थायी: गा.वि.स./न.पा.&nbsp; &nbsp;<asp:DropDownList ID="ddlTempMunOrVdc" TabIndex="16" runat="server" CssClass="chzn-select ILO_DROPDOWN"></asp:DropDownList></td>
                                    <td class="auto-style24">ठेगाना-अस्थायी:वडा नं.&nbsp; &nbsp;
                                        <asp:TextBox ID="txtTempWardNo" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="17">0</asp:TextBox>
                                        <br />
                                        टोल&nbsp; &nbsp;<asp:TextBox ID="txtTempTole" runat="server" CssClass="txtName-style" TabIndex="18"></asp:TextBox></td>

                                    <td class="auto-style24">ठेगाना-अस्थायी: घर नं.&nbsp; <asp:TextBox ID="txtTempHouseNo" runat="server" CssClass="txtShortName-style" TabIndex="19"></asp:TextBox>
                                         <br />
                                         नोट:<asp:TextBox ID="txtTempNote" runat="server" CssClass="txtShortName-style" TabIndex="20"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">१.१ मुख्य घऱमुलीको नाम थर<br />
                                        <asp:TextBox ID="txtMainFullName" runat="server" CssClass="txtName-style" TabIndex="21"></asp:TextBox></td>
                                    <td class="auto-style14">१.२ घऱमुलीको पेशा
                                        <br />
                                        &nbsp; &nbsp;
                                    <asp:DropDownList ID="ddlMainProfession" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="22"></asp:DropDownList></td>
                                    <td class="auto-style18">१.३ जातजाति&nbsp; &nbsp;
                                    <asp:DropDownList ID="ddlMainCast" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="23"></asp:DropDownList></td>
                                    <td class="auto-style18">१.४ बसोवासको अवस्था&nbsp;&nbsp;<asp:DropDownList ID="ddlHabitantStatus" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="24"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">१.५ धर्म &nbsp;&nbsp;<asp:DropDownList ID="ddlMainReligion" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="25"></asp:DropDownList></td>
                                    <td class="auto-style14">१.६.१ मुख्य घऱमुलीको पारिवारिक अवस्था:</td>
                                    <td class="auto-style18">महिला&nbsp;
            <asp:TextBox ID="txtMainFamilyWomenNo" runat="server" CssClass="txtNumber-style" TabIndex="26">0</asp:TextBox>


                                        &nbsp; पुरुष&nbsp;
            <asp:TextBox ID="txtMainFamilyMenNo" runat="server" CssClass="txtNumber-style" TabIndex="27">0</asp:TextBox>


                                    </td>



                                    <td class="auto-style18">बालक&nbsp;
            <asp:TextBox ID="txtMainFamilyBoysNo" runat="server" CssClass="txtNumber-style" TabIndex="28">0</asp:TextBox>
                                        &nbsp;बालिका
            <asp:TextBox ID="txtMainFamilyGirlsNo" runat="server" CssClass="txtNumber-style" TabIndex="29">0</asp:TextBox></td>

                                </tr>
                                <tr>
                                    <td class="auto-style14">१.६.२ घऱमुलीको शैक्षिक योग्यता</td>
                                    <td colspan="3" class="auto-style17">
                                        <asp:TextBox ID="txtMainEducation" TabIndex="30" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                                </tr>
                                <tr><td class="auto-style14">२. घरमुलीको आर्थिक अवस्था: </td><td class="auto-style14">घर <asp:DropDownList ID="ddlMainHomeInfo" TabIndex="31" runat="server" CssClass="chzn-select ILO-DROPDOWN">
                                   

                                                                      </asp:DropDownList></td>
                                    <td class="auto-style17">थप आयको विवरण</td>
                                    <td class="auto-style17"><asp:TextBox runat="server" ID="txtOtherIncome" CssClass="txtName-style" TabIndex="32"></asp:TextBox></td>
                                </tr>
                                <tr>
                        <td colspan="4" class="auto-style23"><b>३. बालश्रमिकको बारेमा</b></td>
                                 </tr>
                                <tr>          
                                                             <td class="auto-style11"> ३.१ तपाईको घरमा बालबालिकाहरु श्रममा संलग्न/श्रमका लागि गएका छन् ? 
                                        <asp:RadioButtonList ID="rblChildLaborNear" runat="server" RepeatDirection="Horizontal" TabIndex="33">
                                               <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                        </asp:RadioButtonList>
                                       
                                    </td>
                    
                                <td class="auto-style12" >३.२ तपाईको वरिपरि बालबालिकाहरु संलग्न/श्रमका लागि गएका छन् ? </td>
                        <td colspan="2" class="auto-style12">बालक
                                    <asp:TextBox ID="txtChildBoyNoInOffice" TabIndex="34" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                            बालिका
                                    <asp:TextBox ID="txtChildGirlNoInOffice" TabIndex="35" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                            &nbsp;जम्मा
                                    <asp:TextBox ID="txtChildTotalNoInOffice" TabIndex="36" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                        </td>
                                </tr>
          <tr>
              <td class="auto-style6">
                  शैक्षिक अवस्था:
              </td>
              <td class="auto-style6">विद्यालय जाने: <asp:TextBox ID="txtChildGoingSchoolNo" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="37">0</asp:TextBox>
                  <br />
                  विद्यालय नजाने
                  <asp:TextBox ID="txtChildNotGoingSchoolNo" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="38">0</asp:TextBox>
              </td>
              <td class="auto-style12">छ भने विद्यालयको नाम<br />
                  <asp:TextBox ID="txtChildScoolName" runat="server" CssClass="txtName-style" TabIndex="39"></asp:TextBox></td>
              <td class="auto-style12">ठेगाना:<br />
&nbsp;<asp:TextBox ID="txtChildScoolAddress" runat="server" CssClass="txtAddress-Style" TabIndex="40"></asp:TextBox></td>
          </tr>
                                <tr>
                                 <td class="auto-style11" colspan="2">३.३ बालबालिकाहरु श्रममा कसरी जान्छन् ? 
                                     <asp:CheckBoxList ID="cblChildLabourWentHow" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false" TabIndex="41"> </asp:CheckBoxList>
                                     
                                   
                                                                      </td> 
                                    <td class="auto-style11" colspan="2">३.४ बालबालिकाहरु श्रममा जानुको कारण के हो ?
                                           <asp:CheckBoxList ID="cblLabourCause" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false" TabIndex="42"> </asp:CheckBoxList>
                                
                                                                            </td>
                                  </tr>
                                <tr>
                                    <td colspan="2" class="auto-style12">  ३.५ श्रमिकका रुपमा कसले लान सक्छ ?<br />
&nbsp;<asp:DropDownList ID="ddlWhoTakesChild" runat="server" CssClass="chzn-select ILO_DROPDOWN" TabIndex="43"> </asp:DropDownList>
                                       
                                             
                                       
                                   </td>

                                    <td colspan="2" class="auto-style12">  ३.६ के रोजगारीका लागि कुनै सम्झौता आवश्यक छ ?<br />
&nbsp;<asp:DropDownList ID="ddlAgreementNeeded" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="44">
                                            <asp:ListItem Value="लिखित">लिखित</asp:ListItem>
                                            <asp:ListItem Value="मौखिक">मौखिक</asp:ListItem>
                                            <asp:ListItem Value="छैन">छैन</asp:ListItem>
                                        </asp:DropDownList>
                                        </td>
                                  
                                       
                                        
                                       
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style12">रोजगारीका शर्तमा के के कुराहरु उल्लेख भएका छन् ? &nbsp;<br />

                            <asp:CheckBoxList ID="chkJobAgreement" TabIndex="45" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1" Font-Bold="false">

                            </asp:CheckBoxList>
                        </td>
                                    <td colspan="2" class="auto-style12">तपाईले बालबालिकालाई नै श्रममा लगाउनुको मु्ख्य कारण के हो ? <br /><asp:TextBox ID="txtMainResonToChildLabor" TabIndex="46" runat="server"  TextMode="MultiLine" CssClass="txtLongAddress-Style"></asp:TextBox></td>
                                </tr>
                               
                                </table>

                            </td>
                        </tr>
                  <tr>
                    <td colspan="2" class="auto-style23"><strong>४. व्यावहारिक विषयको ज्ञान र चेतनास्तर:</strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="auto-style1">
                            <tr>
                            <td class="auto-style25">४.१ के तपाईलाई बालअधिकारका बारेमा थाहा छ ?<br />
                                <asp:RadioButtonList ID="rblKnowChildRight" runat="server" RepeatDirection="Horizontal" TabIndex="47">
                                    <asp:ListItem Value="1">छ</asp:ListItem>
                                    <asp:ListItem Value="0">छैन</asp:ListItem>
                               </asp:RadioButtonList>
                           </td>
                            <td class="auto-style25">४.२ बाल अधिकार भनेको के हो ?
                                   <asp:TextBox ID="txtWhatIsChildRight" runat="server" CssClass="txtLongAddress-Style" TabIndex="48"></asp:TextBox>

                            </td>
                                <td class="auto-style25">४.३ के तपाईलाई १४ बर्ष भन्दा कम उमेरका बालबालिकालाई श्रममा लगाउन हुन्न भन्ने कुरा थाहा छ ?<br />
&nbsp;<asp:DropDownList ID="ddlNoChildLaborBelow14" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="49">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>

                        </asp:DropDownList>
					</td>
                    <td class="auto-style25">४.३.१ के तपाई यो धारणासँग सहमत हुनुहुन्छ ?<br />
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlViewAboutNoChildLaborBelow14" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="50">
                             <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                        </asp:DropDownList>
					</td>
                            </tr>
                            <tr>
                                            <td class="auto-style16">यदि छैन यसको विकल्पमा के हुनुपर्दछ होला ?
                                    <asp:TextBox ID="txtViewAboutNoChildLaborBelow14" runat="server" CssClass="txtLongAddress-Style" TabIndex="51"></asp:TextBox>
                                            </td>
                                            <td class="auto-style16">४.३.२ बालश्रमबाट बालबालिकामा पर्ने कम्तिमा ३ ओटा असरहरु थाहा छ ?
                                    <asp:DropDownList ID="ddlKnowThreeEffectsOfChildLabor" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="52">
                                       <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList></td>
                                            <td class="auto-style24" colspan="2">श्रममा संलग्न बालबालिकाहरुलाई हिंसा शोषण दुर्व्यवहार हुने गरेको थाहा छ ?
                                    <asp:DropDownList ID="ddlKnowChildAbuse" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="53">
                                         <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                                    </asp:DropDownList>
                                            </td>
                    </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style23"><strong>५. बालक/बालिकाको पारिवारिक स्थिति:</strong></td>
                    </tr>
                    <tr>

                    
                    <td colspan="2" class="auto-style4">
                        <table class="auto-style1">
                           <tr>
                                <td class="auto-style17">परिवारको सदस्यहरुको नामावली</td>
                                <td class="auto-style17">लिङ्ग</td>
                                <td class="auto-style17">उमेर</td>
                                <td class="auto-style17">बालक/बालिकाको नाता</td>
                                <td class="auto-style17">शैक्षिक अवस्था</td>
                                <td class="auto-style17">पेशागत विवरण</td>
                                <td class="auto-style17">जिवित/मृत्यु/अपाङ्ग</td>
                                <td class="auto-style17">श्रममा गएको/नगएको जाने अवस्था</td>
                                <td class="auto-style17">ज.द/नागरिकता छ/छैन</td>
                                <td rowspan="2" class="auto-style17">
                                    <asp:Button ID="btnAddRow" runat="server" OnClick="btnAddRow_Click" Text="थप" TabIndex="64" class="super button search_button" width="50px" />
                                </td>

                            </tr>

                           <%-- Fields--%>
                            <tr>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtFamilyMember1Name" runat="server" CssClass="txtName-style" TabIndex="55"></asp:TextBox></td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="ddlFamilyMember1Sex" runat="server" CssClass ="chzn-select ILO_DROPDOWN" TabIndex="56">
                          
                        </asp:DropDownList></td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtFamilyMember1Age" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="57">0</asp:TextBox></td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="ddlFamilyMember1Relation" runat="server" CssClass ="chzn-select ILO_DROPDOWN" TabIndex="58"></asp:DropDownList></td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtFamilyMember1EducationStatus" runat="server" CssClass="txtShortName-style" TabIndex="59"></asp:TextBox></td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtFamilyMember1Profession" runat="server" CssClass="txtShortName-style" TabIndex="60"></asp:TextBox></td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="ddlFamilyMember1CurrentStatus" runat="server" CssClass ="chzn-select ILO_DROPDOWN" TabIndex="61">
                            <asp:ListItem Text="जिवित">जिवित</asp:ListItem>
                            <asp:ListItem Text="मत्यु">मत्यु</asp:ListItem>
                            <asp:ListItem Text="अपाङ्ग">अपाङ्ग</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                                <td class="auto-style17">
                                    <asp:DropDownList ID="ddlChildLabourProbability" runat="server" CssClass ="chzn-select ILO_DROPDOWN" TabIndex="62">
                            <asp:ListItem  Value="गएको">गएको</asp:ListItem>
                            <asp:ListItem  Value="नगएको">नगएको</asp:ListItem>
                            <asp:ListItem Value="जाने सम्भावना">जाने सम्भावना</asp:ListItem>
                            
                        </asp:DropDownList>
                                </td>
                                <td class="auto-style17">
                                    <asp:DropDownList ID="ddlHasBrOrCitizenship" runat="server" CssClass ="chzn-select ILO_DROPDOWN" TabIndex="63">
                            <asp:ListItem  Value="true">छ</asp:ListItem>
                            <asp:ListItem Value="false">छैन</asp:ListItem>
                            
                            
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
                        <td colspan="2"><strong>६. यदि श्रममा जान सक्ने सम्भावित स्थान:</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style12">क्र.स.</td>
                                <td class="auto-style12">जिल्ला</td>
                                <td class="auto-style12">नगर/गा.वि.स</td>
                                <td class="auto-style12">वडा</td>
                                <td class="auto-style12">टोल</td>
                                <td class="auto-style12">सम्पर्क नम्बर</td>
                                <td rowspan="2" class="auto-style12">
                                    <asp:Button ID="btnAddOtherPlace" runat="server" Text="थप" class="super button search_button" width="50px" OnClick="btnAddOtherPlace_Click" TabIndex="71" />
                                </td>


                            </tr>
                 
                            <tr>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtSN" runat="server" CssClass="txtNumber-style" TabIndex="65"></asp:TextBox></td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlProbableDistrict" runat="server" CssClass="chzn-select ILO_DROPDOWN" OnSelectedIndexChanged="ddlProbableDistrict_SelectedIndexChanged" AutoPostBack="true" TabIndex="66">
                            
                        </asp:DropDownList></td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlProbableMunOrVdc" runat="server" CssClass="chzn-select ILO_DROPDOWN" TabIndex="67">
                            
                        </asp:DropDownList></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtVillageOrWard" runat="server" CssClass="txtNumber-style" TabIndex="68"></asp:TextBox></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtProbableTole" runat="server" CssClass="txtShortName-style" TabIndex="69"></asp:TextBox></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtProbableNumber" runat="server" CssClass="txtShortName-style" TabIndex="70"></asp:TextBox>
                    
                       </td>
        
                                   </tr>
                         <tr>

                            <%--GridView--%>
                            <td colspan="7" class="auto-style12">


                                    <asp:GridView ID="gdvProbablePlaces" runat="server"
                                        Width="100%" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BackColor="AliceBlue" HeaderStyle-Font-Bold="true" GridLines="Both" CssClass="gridControl">
                                    </asp:GridView>
                                

</tr>
                   
                        </table>
                            </td>
                        </tr>
                   
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <table class="auto-style1">
                                <tr>
                                    
                                       <td colspan="3" class="auto-style16">६.१ सम्भावित  श्रमको प्रकृति 
                                        <asp:DropDownlist ID="ddlLabourNature" runat="server" CssClass="chzn-select ILO_DROPDOWN" TabIndex="72"></asp:DropDownlist>
                                       </td>
                                      <td class="auto-style16">श्रममा संलग्न हुन सक्ने बालबालिकालो पढ्ने गरेको छ ?
                                          <asp:DropDownList ID="ddlDoesChildStudy" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="73">
                                             
                                          </asp:DropDownList>
                                      </td>                       
                                </tr>
                                <tr>
                                    <td class="auto-style16">यदि छ भने <asp:DropDownList ID="ddlStudyType" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="74">
                                           
                                          </asp:DropDownList>
                                      </td>
                                 <td class="auto-style16"> विद्यालय केन्द्रको नाम र कक्षा : <asp:TextBox ID="txtSchoolOrCenterNameAndClass"  TabIndex="75" runat="server" CssClass="txtLongAddress-Style"></asp:TextBox>

                                     <br />

                                    कक्षा :&nbsp;  <asp:TextBox ID="txtSchoolOrCenterClass" runat="server" TabIndex="76" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox>
                                    </td>
                                <td colspan="2" class="auto-style16">यदि अध्ययनरत हो भने शैक्षिक खर्च कसले दिन्छ ? 
                                    <br />
                                    <asp:DropDownList ID="ddlWhoPaysEducation" runat="server" CssClass="chzn-select ILO-DROPDOWN" TabIndex="77">
                                     </asp:DropDownList>
                                    </td>
                                    </tr>
                                    
                                <tr>
                                    <td class="auto-style16">७.२ यदि पढाई छाडेको भए कति कक्षा पढेर छोडेको ? र किन ?<br />
&nbsp;<asp:TextBox ID="txtWhySchoolLeft" runat="server" CssClass="txtName-Style" TabIndex="77"></asp:TextBox>
<br />
                                   कक्षा:<asp:TextBox runat="server" ID="txtAtWhatClassSchoolLeft" CssClass="txtNumber-style" TextMode="Number" TabIndex="78">0</asp:TextBox>
                                    </td>
                                    <td class="auto-style16">
                                        ७.३
                                        पढ्ने विचार नभए कुनै सिपमुलक तालिम दिए हुन्छ ?<br />
&nbsp;<asp:DropDownList ID="ddlWantVocationalTraining" runat="server" CssClass="chzn-select ILO-DROPDOWN_SMALL" TabIndex="79">
                                             <asp:ListItem Value="1">हुन्छ</asp:ListItem>
                                            <asp:ListItem Value="0">हुदैन</asp:ListItem>
                                     </asp:DropDownList>
                                    </td>
                                    <td class="auto-style16">.७.४ यदि हुन्छ भने चाहिएको सिपमुलक तालिमको विवरण: कहाँ लिने <asp:TextBox runat="server" TabIndex="80" ID="txtWhereVocationalTraining" CssClass="txtShortName-style"></asp:TextBox>
                                        <br />
                                        कहाँ बस्ने<asp:TextBox runat="server" ID="txtWhereToStayDuringVocationalTraining" CssClass="txtShortName-style" TabIndex="81"></asp:TextBox>
                                    </td>
                                    <td class="auto-style16">७.५ यदि हुँदैन भने के गर्ने विचार छ ? <asp:TextBox ID="txtWhatWantToDo" runat="server" CssClass="txtShortName-style" TabIndex="82"></asp:TextBox></td>
                                        
                                      

                                </tr>
                                </table>
                            </td>
                        </tr>
                    <tr>
                        <td colspan="2">
                            <table class="auto-style1">
                                
                                <tr> <td colspan="2" style="background-color: #FFFFFF" class="auto-style23"><strong>८. आप्रवास र कामको अवस्था:</strong></td></tr>
                                <tr>
                                    <td class="auto-style26">८.१ पहिला तपाईका बालबालिकाहरु काममा गएका थिए ? <asp:DropDownList ID="ddlWasChildInLabor" runat="server" TabIndex="83" CssClass="chzn-select ILO-DROPDOWN">
                                        <asp:ListItem Value="1">थियो</asp:ListItem>
                                        <asp:ListItem Value="0">थिएन</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td class="auto-style17"><asp:TextBox ID="txtMonthWasChildInLabor" TabIndex="84" runat="server" CssClass="txtNumber-style" TextMode="Number">0</asp:TextBox> महिना अगाडि<br />
                                        <asp:TextBox ID="txtYearWasChildInLabor" runat="server" CssClass="txtNumber-style" TextMode="Number" TabIndex="85">0</asp:TextBox> वर्ष अगाडि 
                                    </td>
                                </tr>
                            </table>
                        </td>
                     </tr>
               
                    <tr>
                        <td colspan="2">
                            <table class="auto-style1">
                                <tr>
                                    <td colspan="4" class="auto-style23"><strong>९. भविष्यको योजना</strong>
                                        <asp:TextBox ID="txtFuturePlan" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style" TabIndex="86"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">९.१ तपाई रहनुभएको बसोबास स्थान बालश्रम मुक्त घोषणा गर्न उपयुक्त छ ?<br />
&nbsp;<asp:DropDownList ID="ddlFreeChildLaborRegion" runat="server" CssClass="chzn-select ILO-DROPDOWN_SMALL" TabIndex="87">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                       </asp:DropDownList></td>
                                    <td class="auto-style12">
                                        ९.२ तपाई रहनुभएको बसोबास स्थान बालश्रम मुक्त बनाउनका लागि के गर्नुपर्ला ?
                                        <asp:TextBox ID="txtFreeChildLaborRegion" runat="server" CssClass="txtLongAddress-Style" TabIndex="89"></asp:TextBox>
                                    </td>
                                    <td class="auto-style12">९.३ बालश्रम मुक्त स्थान बनाउँदा तपाईको सहयोग के रहन्छ ?
                                        <asp:TextBox ID="txtYourRoleInFreeChildLaborRegion" runat="server" CssClass="txtLongAddress-Style" TabIndex="90"></asp:TextBox>

                                    </td>
                                    <td class="auto-style12">
                                        १०. बालबालिकाको पढाईलाई निरन्तरता दिने ईच्छा छ ?<br />
&nbsp;<asp:DropDownList ID="ddlWantContinuation" runat="server" CssClass="chzn-select ILO-DROPDOWN_SMALL" TabIndex="91">
                                        <asp:ListItem Value="1">छ</asp:ListItem>
                                        <asp:ListItem Value="0">छैन</asp:ListItem>
                                       </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">
                                        छ भने विद्यालय निरन्तरताका लागि चाहिएमा कस्तो किसिमको सहयोग चाहनुहुन्छ ?
                                    </td>
                                    <td class="auto-style12">आफुलाई<br />
&nbsp;<asp:TextBox ID="txtHelpYourself" runat="server" CssClass="txtName-style" TabIndex="92"></asp:TextBox></td>
                                    <td class="auto-style12">परिवारलाई<br />
&nbsp;<asp:TextBox ID="txtHelpFamily" runat="server" CssClass="txtName-style" TabIndex="93"></asp:TextBox></td>
                                    <td class="auto-style12">अन्य:<br />
&nbsp;<asp:TextBox ID="txtHelpOther" runat="server" CssClass="txtName-style" TabIndex="94"></asp:TextBox></td>
                                </tr>

                                <tr>
                                <td colspan="2" class="auto-style12">तपाईलाई यस सम्बन्धमा केहि भन्नु छ भने निसंकोच व्यक्त गर्नुहोस् ।<br />
&nbsp;<asp:TextBox ID="txtMainNote" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style" TabIndex="95"></asp:TextBox>

                                </td>
                         <td colspan="2" class="auto-style12">सर्वेक्षकको टिप्पणी (बुँदागत)<br />
&nbsp;<asp:TextBox ID="txtSurveyerNote" runat="server" TextMode="MultiLine" CssClass="txtLongAddress-Style" TabIndex="96"></asp:TextBox>

                    </td>
                        </tr>
                            </table>
                        </td>
                    </tr>

                    

                    <tr>
                                <td class="auto-style16">सर्वेक्षकको नाम
                        <asp:TextBox ID="txtSurveyerName" runat="server" CssClass="txtName-style" TabIndex="97"></asp:TextBox></td>
                        <td class="auto-style16">
                    फारम बूझाएको मिति:
                           <input id="txtFormSubmitDate" name="txtFormSubmitDate" value="" size="12" onfocus="this.blur()" readonly   runat="server" Class="txtShortName-style"/>
<input id="txtSubmitTo" name="txtSubmitTo" size="12" onfocus="this.blur()" readonly   runat="server" style="display:none"/>
                                <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fStartPop(document.forms[0].txtFormSubmitDate,document.forms[0].txtSubmitTo);return false;" >
                                    <img class="PopcalTrigger" align="absmiddle" src="../Calendar/DateRangeNew/calbtn.gif" width="34" height="22" border="0" alt="" tabindex="98" /></a>
                                    
<iframe width=132 height=142 name="gToday:contrast:agenda.js" id="gToday:contrast:agenda.js" src="../Calendar/DateRangeNew/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>
                        </td>
                            </tr>
                   

                       <tr>
                     
                        <td style="text-align:center;"  class="auto-style4" colspan="2">


                            <asp:Button ID="btnSubmit" runat="server" Text="डाटा इन्ट्री गर्नुहोस" TabIndex="99" class="super button search_button" width="189px" OnClick="btnSubmit_Click"/>


                        </td>

                    </tr>
                
                    </table>

    </form>
</body>
</html>