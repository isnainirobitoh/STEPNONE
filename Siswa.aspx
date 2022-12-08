<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Siswa.aspx.cs" Inherits="STEPNONE.Siswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Siswa</title>
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
            <h1 style="font-family: 'Cooper Black'; text-align: center;">DATA SISWA</h1>
            <asp:Button ID="Button1" runat="server" Text="Tambah Data Siswa" Height="45px" OnClick="Button1_Click" Width="155px" /><br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdSiswa" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="170px" Width="417px" style="margin-left:auto;margin-right:auto">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IdSiswa" HeaderText="IdSiswa" ReadOnly="True" SortExpression="IdSiswa" InsertVisible="False" />
                <asp:BoundField DataField="Nama" HeaderText="Nama" SortExpression="Nama" />
                <asp:BoundField DataField="NoHP" HeaderText="NoHP" SortExpression="NoHP" />
                <asp:BoundField DataField="Alamat" HeaderText="Alamat" SortExpression="Alamat" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Siswa]" DeleteCommand="DELETE FROM [Siswa] WHERE [IdSiswa] = @IdSiswa" InsertCommand="INSERT INTO [Siswa] ([Nama], [NoHP], [Alamat], [Username], [Password]) VALUES (@Nama, @NoHP, @Alamat, @Username, @Password)" UpdateCommand="UPDATE [Siswa] SET [Nama] = @Nama, [NoHP] = @NoHP, [Alamat] = @Alamat, [Username] = @Username, [Password] = @Password WHERE [IdSiswa] = @IdSiswa">
            <DeleteParameters>
                <asp:Parameter Name="IdSiswa" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="NoHP" Type="Int32" />
                <asp:Parameter Name="Alamat" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="NoHP" Type="Int32" />
                <asp:Parameter Name="Alamat" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="IdSiswa" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
