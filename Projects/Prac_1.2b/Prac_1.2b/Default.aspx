<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prac_1._2b.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BIT Music Survey</title>
    <style type="text/css">
        #selFruit {
            width: 114px;
            height: 155px;
            color: #990099;
            background-color: #FF3399;
        }
        #displayAll {
            color: #FF0066;
            background-color: #CCCC00;
        }
        .auto-style1 {
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 555px; width: 469px; background-color: #FFCC66;">

    <h1 style="text-align: center; color: #FFFFFF; background-color: #3399FF">Take Our Music Survey!</h1>
        <span style="background-color: #FFFFFF">Name:</span>
        <input type="text" runat="server" id="txtName" />

        <span style="background-color: #FFFFFF">
        <br />
        <br />
        Email: </span>
        &nbsp;<input type="text" runat="server" id="txtEmail" />

        <p>Which musical genres do you enjoy?</p>
        <select id="selFruit" runat="server" multiple="true">
            <option>Rock</option>
            <option>Jazz</option>
            <option>Folk</option>
            <option>World</option>
             <option>Country</option>
		    <option>Techno</option>
		    <option>Hip Hop</option>
		     <option>Blues</option>
		    <option>Classical</option>
            
        </select>
         <br />
        <br />
        <p>Would you like to join the <span class="auto-style1"><strong>BIT Glee Club?</strong></span></p>
         <input id="yes" type="radio" name="gleeClub" value="Yes" runat="server"/>Yes<br />
         <input id="no" type="radio" name="gleeClub" value="No" runat="server"/>No


        <br />
        <input runat="server" onServerClick="btnSubmit_Click" id="btnSubmit" type="submit" value="Send Data" />
        <br />
        <br />

        <div id="displayAll" runat="server"></div>

    </div>
    </form>
</body>
</html>
