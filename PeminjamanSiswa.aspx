<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PeminjamanSiswa.aspx.cs" Inherits="STEPNONE.PeminjamanSiswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Peminjaman</title>
    <style type="text/css">
        body{
            background-image: url(./peminjamanD.jpeg);
            height: 100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <h1 style="font-family: 'Cooper Black'; text-align: center">PEMINJAMAN DAN PENGEMBALIAN BUKU</h1>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Tambah Data Peminjaman" BackColor="#999966" BorderColor="White" Height="45px" OnClick="Button1_Click" Width="175px" /><br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Catat Pengembalian" BackColor="#8D9B64" Height="45px" OnClick="Button2_Click" Width="175px" BorderColor="White" /><br />
            <br />
        </div>
    </form>
</body>
</html>
