<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="STEPNONE.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Pegawai</title>
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
            <h1 style="text-align: center; font-family: 'Cooper Black'">DATA PEGAWAI</h1>
            <asp:Button ID="Button1" runat="server" Text="Tambah Data Pegawai" BackColor="#CCCCCC" BorderColor="White" Height="45px" OnClick="Button1_Click" Width="145px" /><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdPegawai" DataSourceID="SqlDataSource1" GridLines="None" Height="194px" Width="664px" style="margin-left:auto;margin-right:auto" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdPegawai" HeaderText="IdPegawai" ReadOnly="True" SortExpression="IdPegawai" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Nama" HeaderText="Nama" SortExpression="Nama" />
                    <asp:BoundField DataField="NoHP" HeaderText="NoHP" SortExpression="NoHP" />
                    <asp:BoundField DataField="Alamat" HeaderText="Alamat" SortExpression="Alamat" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Pegawai]" DeleteCommand="DELETE FROM [Pegawai] WHERE [IdPegawai] = @IdPegawai" InsertCommand="INSERT INTO [Pegawai] ([IdPegawai], [Username], [Password], [Nama], [NoHP], [Alamat]) VALUES (@IdPegawai, @Username, @Password, @Nama, @NoHP, @Alamat)" UpdateCommand="UPDATE [Pegawai] SET [Username] = @Username, [Password] = @Password, [Nama] = @Nama, [NoHP] = @NoHP, [Alamat] = @Alamat WHERE [IdPegawai] = @IdPegawai">
            <DeleteParameters>
                <asp:Parameter Name="IdPegawai" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdPegawai" Type="Int32" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="NoHP" Type="Int32" />
                <asp:Parameter Name="Alamat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="NoHP" Type="Int32" />
                <asp:Parameter Name="Alamat" Type="String" />
                <asp:Parameter Name="IdPegawai" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
