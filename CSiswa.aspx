<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSiswa.aspx.cs" Inherits="STEPNONE.CSiswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form Tambah Data Siswa</title>
    <style type="text/css">
        .auto-style1 {
            width: 42%;
            margin-left: 325px;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 168px;
        }
        .auto-style3 {
            width: 90px;
            height: 35px;
        }
        body {
            background-image: url(./peminjamanD.jpeg);
            height: 100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center; font-family: 'Cooper Black'">TAMBAH DATA SISWA</h1>
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />

            <table class="auto-style1" style="margin-left:auto;margin-right:auto">
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label><br />
                        <asp:TextBox ID="Username" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username Harus Diisi!" ControlToValidate="Username" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label><br />
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="Password" ErrorMessage="Password Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label4" runat="server" Text="Nama"></asp:Label><br />
                        <asp:TextBox ID="Nama" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredNama" runat="server" ControlToValidate="Nama" ErrorMessage="Nama Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label5" runat="server" Text="NoHP"></asp:Label><br />
                        <asp:TextBox ID="NoHP" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredNoHP" runat="server" ControlToValidate="NoHP" ErrorMessage="No HP Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label6" runat="server" Text="Alamat"></asp:Label><br />
                        <asp:TextBox ID="Alamat" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredAlamat" runat="server" ControlToValidate="Alamat" ErrorMessage="Alamat Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Tambah" OnClick="Button1_Click" Height="35px" Width="100px" BackColor="#339933" />
                    </td>
                    <td>
                        <input id="Reset1" type="reset" value="reset" class="auto-style3" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
