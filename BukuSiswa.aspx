<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BukuSiswa.aspx.cs" Inherits="STEPNONE.BukuSiswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Buku</title>
    <style type="text/css">
        body{
            background-image: url(./Data.png);
            height: 100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; font-family: 'Cooper Black'">DATA BUKU</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" DataKeyNames="IdBuku" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" style="margin-left:auto;margin-right:auto" BorderStyle="Solid">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="IdBuku" HeaderText="IdBuku" InsertVisible="False" ReadOnly="True" SortExpression="IdBuku" />
                    <asp:BoundField DataField="Judul" HeaderText="Judul" SortExpression="Judul" />
                    <asp:BoundField DataField="Penulis" HeaderText="Penulis" SortExpression="Penulis" />
                    <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
                    <asp:BoundField DataField="Jumlah" HeaderText="Jumlah" SortExpression="Jumlah" />
                    <asp:BoundField DataField="SedangDipinjam" HeaderText="SedangDipinjam" SortExpression="SedangDipinjam" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Buku]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
