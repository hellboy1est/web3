<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prac_2._1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #divDisplay {
            height: 140px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 306px">
    
        <asp:Label ID="lblFont" runat="server" Text="Select Your Font:"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="ddFonts" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Enter Your Text:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbxText" runat="server" Width="327px">Enter Some Text</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
        <div id="divDisplay" runat="server"></div>
    </div>
    </form>
</body>
</html>
