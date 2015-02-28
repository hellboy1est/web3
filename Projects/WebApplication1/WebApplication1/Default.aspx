<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #CC33FF;
            font-weight: normal;
            background-color: #99CCFF;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        #form1 {
            width: 671px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 376px; height: 277px; background-color: #FF6699; margin-left: 240px;">
    
    <h1 class="auto-style1"> This is plain html</h1>
        <br />
        <span class="auto-style2">HTML TextBox:&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" />
        <br />
        <br />
        <span class="auto-style2">HTML Control TextBox:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <input type="text" runat="server"  id="txtControl"/><br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" Text="ASP.NET Control Tex Box"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAsp" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;
        <input type="submit" value="EMPTY SUBMIT" style="background-color: #CCFF33" runat="server" id="htmlButton" onserverclick="htmlButton_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="background-color: #CCFF33" Text="ASP BUTTON" Width="143px" />
        </div>
    </form>
</body>
</html>
