<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="ProjectIBTnew.wwwroot.html.userLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="user" runat="server"></asp:TextBox>
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" />
            <h2 class="back"><a href="index.aspx">Back</a></h2>
        </div>
    </form>
</body>
</html>
