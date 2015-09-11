<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm.aspx.cs" Inherits="ILOProject.Forms.TestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtInput" runat="server" TextMode="Number">0</asp:TextBox>
             <asp:RadioButtonList ID="ddlHasBrOrCitizenship" runat="server">
                            <asp:ListItem Value="1">छ</asp:ListItem>
                            <asp:ListItem Value="0">छैन</asp:ListItem>
                            
                            
                        </asp:RadioButtonList>
        <asp:Button ID="btnOperate" runat="server" Text="Operate" OnClick="btnOperate_Click" />
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
