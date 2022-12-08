<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CPeminjaman.aspx.cs" Inherits="STEPNONE.CPeminjaman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form Tambah Data Peminjaman</title>
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
        .auto-style5 {
            width: 90px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center; font-family: 'Cooper Black'">FORM PEMINJAMAN BUKU</h1>
        <div>
            <br />
            <br />
            <br />
            <table class="auto-style1" style="margin-left:auto;margin-right:auto">
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label2" runat="server" Text="Id Buku"></asp:Label><br />
                        <asp:TextBox ID="IdBuku" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredIdBuku" runat="server" ErrorMessage="Id Buku Harus Diisi!" ControlToValidate="IdBuku" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label3" runat="server" Text="Nama Peminjam"></asp:Label><br />
                        <asp:TextBox ID="Nama" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredNama" runat="server" ControlToValidate="Nama" ErrorMessage="Nama Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label4" runat="server" Text="Judul"></asp:Label><br />
                        <asp:TextBox ID="Judul" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredJudul" runat="server" ControlToValidate="Judul" ErrorMessage="Judul Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label5" runat="server" Text="Kategori"></asp:Label><br />
                        <asp:TextBox ID="Kategori" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredKategori" runat="server" ControlToValidate="Kategori" ErrorMessage="Kategori Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label><br />
                        <asp:TextBox ID="Status" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredStatus" runat="server" ControlToValidate="Status" ErrorMessage="Status Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label6" runat="server" Text="Tanggal Pinjam"></asp:Label><br />
                        <asp:TextBox ID="TglPinjam" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredTglPinjam" runat="server" ControlToValidate="TglPinjam" ErrorMessage="Tanggal Pinjam Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2" style="font-family: 'Berlin Sans FB Demi'">
                        <asp:Label ID="Label7" runat="server" Text="Tanggal Pengembalian"></asp:Label><br />
                        <asp:TextBox ID="TglKembali" runat="server" Height="25px" Width="195px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredTglKembali" runat="server" ControlToValidate="TglKembali" ErrorMessage="Tanggal Pengembalian Harus Diisi!" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Pinjam" Height="35px" Width="100px" BackColor="#339933" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style4">
                        
                        <input id="Reset1" class="auto-style5" type="reset" value="reset" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
