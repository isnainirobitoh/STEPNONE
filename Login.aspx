<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="STEPNONE.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Akun Pegawai</title>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
            margin-left: 250px;
        }
        body{
            background-image: url(./LOGIN.png);
            height: 100vh;
        }
        .auto-style3 {
            width: 93px;
            height: 37px;
        }
        .auto-style6 {
            width: 287px;
        }
        .auto-style7 {
            width: 86px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="font-family: 'Arial Rounded MT Bold'; color: #000000; text-align: center; font-size: 45px;">LOGIN</h1>
        <div>
             <table class="auto-style1" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style7" rowspan="1" style="font-family: 'Berlin Sans FB Demi'"> 
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
                <asp:TextBox ID="Username" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td style="font-family: Calibri" class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Masukkan Username Anda!" ControlToValidate="Username" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="1" style="font-family: 'Berlin Sans FB Demi'">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="Password" runat="server" TextMode="Password" Height="25px" Width="185px"></asp:TextBox>
            </td>
            <td style="font-family: Calibri" class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Masukkan Password Anda!" ControlToValidate="Password" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Height="37px" Width="93px" BackColor="#00CC66" BorderColor="Gray" BorderStyle="Solid" ForeColor="Black" />
            </td>
            <td class="auto-style6">
                <input id="Reset1" type="reset" value="reset" class="auto-style3" /></td>
        </tr>
            </table> 
        </div>
    </form>
</body>
</html>
