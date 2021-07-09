<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userPage.aspx.cs" Inherits="ProjectIBTnew.wwwroot.html.userPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="movie_id" HeaderText="movie_id" SortExpression="movie_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="adress" HeaderText="adress" SortExpression="adress" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectIBTConnectionString %>" SelectCommand="SELECT * FROM [orderTable] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:SessionParameter Name="name" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h2 class="back"><a href="index.aspx">Back</a></h2>
        <asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" />

    </form>
</body>
</html>
