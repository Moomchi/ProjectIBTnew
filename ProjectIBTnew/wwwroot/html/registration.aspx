<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="ProjectIBTnew.wwwroot.html.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Login and Registration Form</title>
		<link href="../styles/stylereg.css" rel="stylesheet"/>
    </head>
    <body>
        <form id="form1" runat="server">
           <div class="hero">
			    <div class="form-box">
                    <div class="button-box">
                        <div id="btn" runat="server"></div> 
       
                        <asp:Button ID="button" class="toggle-btn" runat="server" Text="Log in" OnClientClick="login()" />
                        <asp:Button ID="reg" class="toggle-btn" runat="server" Text="Register" OnClientClick="register()" />
                     
                    </div>
                    <div id="login" runat="server" class="input-group">
                        <input type="text" class="input-field"placeholder="User Id" required="required" autocomplete="off" />
                        <input type="text" class="input-field"placeholder="Enter Password" required="required" autocomplete="off"/>
                        <input type="checkbox" class="check-box" /><span>Remember Password</span>
                         <asp:Button ID="buttonLog" class="submit-btn" runat="server" Text="Log in" OnClick="buttonLog_Click" />
                    </div>
                    <div id="register" runat="server" class="input-group">
                        <input type="text" class="input-field" placeholder="User Id" required="required" autocomplete="off"/>
                        <input type="email" class="input-field" placeholder="Email Id" required="required" autocomplete="off"/>
                        <input type="text" class="input-field" placeholder="I agree to the terms & conditions" required="required" autocomplete="off"/>
                        <input type="checkbox" class="check-box"/><span>Remember Password</span>
                         <asp:Button ID="buttonReg" class="submit-btn" runat="server" Text="Register" />
                    </div>
			    </div>
		    </div>
             <script>
                 var x = document.getElementById("login");
                 var y = document.getElementById("register");
                 var z = document.getElementById("btn");

                 function register() {
                     x.style.left = "-400px";
                     y.style.left = "50px";
                     z.style.left = "110px";
                 }
                 function login() {
                     x.style.left = "50px";
                     y.style.left = "450px";
                     z.style.left = "0";
                 }
        </script>
        </form>
    </body>
</html>
