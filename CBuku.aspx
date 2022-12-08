<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CBuku.aspx.cs" Inherits="STEPNONE.CBuku" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form Tambah Data Buku</title>
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
        <h1 style="text-align: center; font-family: 'Cooper Black'">TAMBAH DATA BUKU</h1>
        <div>
            <br />
            <br />
            <br />
            <table class="auto-style1" style="margin-left:auto;margin-right:auto">
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label2" runat="server" Text="Judul"></asp:Label><br />
                        <asp:TextBox ID="Judul" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredJudul" runat="server" ErrorMessage="Judul Harus Diisi!" ControlToValidate="Judul" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label3" runat="server" Text="Penulis"></asp:Label><br />
                        <asp:TextBox ID="Penulis" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredPenulis" runat="server" ControlToValidate="Penulis" ErrorMessage="Penulis Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label4" runat="server" Text="Kategori"></asp:Label><br />
                        <asp:TextBox ID="Kategori" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredKategori" runat="server" ControlToValidate="Kategori" ErrorMessage="Kategori Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label5" runat="server" Text="Jumlah"></asp:Label><br />
                        <asp:TextBox ID="Jumlah" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredJumlah" runat="server" ControlToValidate="Jumlah" ErrorMessage="Jumlah Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
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
