<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Printech_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="css/printech.css"/>
    <title>Login</title>
    
</head>
<center>
<body>
    <form id="form1" runat="server">     
        <div class="login_header">
            <h1>PRINTECH</h1>
        </div>
        <table class="login_tbl" style="border-spacing:20px;">
            <tr>
                <td >
                        <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="username" runat="server" Width="155px" ></asp:TextBox>
                    </td>
                    <td><asp:Button ID="login" runat="server" CssClass="btn_design" Text="Login" OnClick="lgn_Click" /></td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label4" runat="server"  Text="Password"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="password" runat="server" Width="155px"></asp:TextBox>
                    </td>
                </tr>                
                <tr>
                    <td ><asp:Label ID="Label7" runat="server"  Text="Don't have an Account?"></asp:Label></td>
                    <td >                        
                        <asp:Button ID="Button4" runat="server" CssClass="btn_design" Text="Sign up" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>       
    </form>
</body>
</center>
</html>
