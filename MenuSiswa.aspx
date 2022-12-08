<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSiswa.aspx.cs" Inherits="STEPNONE.MenuSiswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STEP'N ONE</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 575px;
        }
        body {
            background-image: url(./Dashboard.png);
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
            <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="text-align: center">
                <asp:Image ID="Image4" runat="server" Height="119px" ImageUrl="~/fotobuku.jpg" Width="174px" />
            </td>
            <td style="text-align: center">
                <asp:Image ID="Image3" runat="server" Height="128px" ImageUrl="~/peminjaman.jpg" Width="184px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: center">
                <asp:Button ID="Button3" runat="server" Text="Menu Buku" BackColor="#99CCFF" BorderColor="White" Height="31px" Width="109px" OnClick="Button3_Click" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button4" runat="server" Text="Menu Peminjaman" BackColor="#99CCFF" BorderColor="White" Height="33px" Width="122px" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td style="text-align: right">
                <asp:Button ID="Button5" runat="server" Text="Logout" BackColor="#993333" BorderColor="White" Height="35px" OnClick="Button5_Click" Width="90px" ForeColor="White" />
            </td>
        </tr>
            </table>
        </div>
    </form>
</body>
</html>
