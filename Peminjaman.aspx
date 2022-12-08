<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Peminjaman.aspx.cs" Inherits="STEPNONE.Peminjaman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Peminjaman</title>
    <style type="text/css">
        body{
            background-image: url(./Data.png);
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="font-family: 'Cooper Black'; text-align: center">DATA RIWAYAT PEMINJAMAN</h1>
            <asp:Button ID="Button1" runat="server" Text="Tambah Data Peminjaman" BackColor="#999966" BorderColor="White" Height="45px" OnClick="Button1_Click" Width="175px" /><br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Catat Pengembalian" BackColor="#8D9B64" Height="45px" OnClick="Button2_Click" Width="175px" BorderColor="White" /><br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Pencatatan Denda" BackColor="#8D9B64" Height="45px" OnClick="Button3_Click" Width="175px" BorderColor="White" /><br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IdPeminjaman" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="710px" style="margin-left:auto;margin-right:auto">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IdPeminjaman" HeaderText="IdPeminjaman" ReadOnly="True" SortExpression="IdPeminjaman" InsertVisible="False" />
                <asp:BoundField DataField="IdBuku" HeaderText="IdBuku" SortExpression="IdBuku" />
                <asp:BoundField DataField="Nama" HeaderText="Nama" SortExpression="Nama" />
                <asp:BoundField DataField="Judul" HeaderText="Judul" SortExpression="Judul" />
                <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="TglPengembalian" HeaderText="TglPengembalian" SortExpression="TglPengembalian" />
                <asp:BoundField DataField="TglPinjam" HeaderText="TglPinjam" SortExpression="TglPinjam" />
                <asp:BoundField DataField="Keterlambatan" HeaderText="Keterlambatan" SortExpression="Keterlambatan" />
                <asp:BoundField DataField="Denda" HeaderText="Denda" SortExpression="Denda" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Peminjaman]" DeleteCommand="DELETE FROM [Peminjaman] WHERE [IdPeminjaman] = @IdPeminjaman" InsertCommand="INSERT INTO [Peminjaman] ([IdBuku], [Nama], [Judul], [Kategori], [Status], [TglPengembalian], [TglPinjam], [Keterlambatan], [Denda]) VALUES (@IdBuku, @Nama, @Judul, @Kategori, @Status, @TglPengembalian, @TglPinjam, @Keterlambatan, @Denda)" UpdateCommand="UPDATE [Peminjaman] SET [IdBuku] = @IdBuku, [Nama] = @Nama, [Judul] = @Judul, [Kategori] = @Kategori, [Status] = @Status, [TglPengembalian] = @TglPengembalian, [TglPinjam] = @TglPinjam, [Keterlambatan] = @Keterlambatan, [Denda] = @Denda WHERE [IdPeminjaman] = @IdPeminjaman">
            <DeleteParameters>
                <asp:Parameter Name="IdPeminjaman" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdBuku" Type="Int32" />
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="Judul" Type="String" />
                <asp:Parameter Name="Kategori" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="TglPengembalian" Type="String" />
                <asp:Parameter Name="TglPinjam" Type="String" />
                <asp:Parameter Name="Keterlambatan" Type="Int32" />
                <asp:Parameter Name="Denda" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdBuku" Type="Int32" />
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="Judul" Type="String" />
                <asp:Parameter Name="Kategori" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="TglPengembalian" Type="String" />
                <asp:Parameter Name="TglPinjam" Type="String" />
                <asp:Parameter Name="Keterlambatan" Type="Int32" />
                <asp:Parameter Name="Denda" Type="Int32" />
                <asp:Parameter Name="IdPeminjaman" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
