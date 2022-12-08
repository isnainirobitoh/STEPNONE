<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buku.aspx.cs" Inherits="STEPNONE.Buku" %>

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
            <asp:Button ID="Button1" runat="server" Text="Tambah Data Buku" Height="45px" Width="130px" OnClick="Button1_Click" /><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" DataKeyNames="IdBuku" DataSourceID="SqlDataSource1" GridLines="None" Height="234px" Width="457px" BorderStyle="Ridge" CellSpacing="1" style="margin-left:auto;margin-right:auto">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdBuku" HeaderText="IdBuku" ReadOnly="True" SortExpression="IdBuku" InsertVisible="False" />
                    <asp:BoundField DataField="Judul" HeaderText="Judul" SortExpression="Judul" />
                    <asp:BoundField DataField="Penulis" HeaderText="Penulis" SortExpression="Penulis" />
                    <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
                    <asp:BoundField DataField="Jumlah" HeaderText="Jumlah" SortExpression="Jumlah" />
                    <asp:BoundField DataField="SedangDipinjam" HeaderText="SedangDipinjam" SortExpression="SedangDipinjam" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Buku]" DeleteCommand="DELETE FROM [Buku] WHERE [IdBuku] = @IdBuku" InsertCommand="INSERT INTO [Buku] ([Judul], [Penulis], [Kategori], [Jumlah], [SedangDipinjam]) VALUES (@Judul, @Penulis, @Kategori, @Jumlah, @SedangDipinjam)" UpdateCommand="UPDATE [Buku] SET [Judul] = @Judul, [Penulis] = @Penulis, [Kategori] = @Kategori, [Jumlah] = @Jumlah, [SedangDipinjam] = @SedangDipinjam WHERE [IdBuku] = @IdBuku">
            <DeleteParameters>
                <asp:Parameter Name="IdBuku" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Judul" Type="String" />
                <asp:Parameter Name="Penulis" Type="String" />
                <asp:Parameter Name="Kategori" Type="String" />
                <asp:Parameter Name="Jumlah" Type="Int32" />
                <asp:Parameter Name="SedangDipinjam" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Judul" Type="String" />
                <asp:Parameter Name="Penulis" Type="String" />
                <asp:Parameter Name="Kategori" Type="String" />
                <asp:Parameter Name="Jumlah" Type="Int32" />
                <asp:Parameter Name="SedangDipinjam" Type="Int32" />
                <asp:Parameter Name="IdBuku" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
