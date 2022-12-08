<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuUtama.aspx.cs" Inherits="STEPNONE.MenuUtama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STEP'N ONE</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 600px;
        }
        .auto-style3 {
            width: 600px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            margin-left: 0px;
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
            <td class="auto-style2" style="text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="141px" ImageUrl="~/siswa.jpg" Width="176px" BorderColor="White" />
            </td>
            <td style="text-align: center;">
                <asp:Image ID="Image2" runat="server" CssClass="auto-style5" Height="130px" ImageUrl="~/pegawai.jpg" Width="184px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Data Siswa" BackColor="#99CCFF" BorderColor="White" ForeColor="Black" Height="32px" OnClick="Button1_Click" Width="112px" />
            </td>
            <td class="auto-style4" style="text-align: center">
                <asp:Button ID="Button2" runat="server" Text="Data Pegawai" BackColor="#99CCFF" BorderColor="White" Height="35px" OnClick="Button2_Click" Width="124px" />
            </td>
        </tr>
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
                <asp:Button ID="Button3" runat="server" Text="Data Buku" BackColor="#99CCFF" BorderColor="White" Height="31px" OnClick="Button3_Click" Width="109px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button4" runat="server" Text="Data Peminjaman" BackColor="#99CCFF" BorderColor="White" Height="33px" OnClick="Button4_Click" Width="122px" />
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
