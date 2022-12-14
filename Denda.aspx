<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Denda.aspx.cs" Inherits="STEPNONE.Denda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form Pencatatan Denda</title>
     <style type="text/css">
        .auto-style1 {
            width: 42%;
            margin-left: 325px;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 168px;
        }
        body {
            background-image: url(./peminjamanD.jpeg);
            height: 100vh;
        }
        .auto-style4 {
            width: 137px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center; font-family: 'Cooper Black'">PENCATATAN DENDA</h1>
        <div>
            <br />
            <br />
            <br />

             <table class="auto-style1" style="margin-left:auto;margin-right:auto">
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label2" runat="server" Text="Id Peminjaman"></asp:Label><br />
                        <asp:TextBox ID="IdPeminjaman" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredPeminjaman" runat="server" ErrorMessage="Id Peminjaman Harus Diisi!" ControlToValidate="IdPeminjaman" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" Text="Catat" Height="35px" Width="100px" BackColor="#666699" OnClick="Button2_Click" BorderColor="White" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
