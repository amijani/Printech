<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Printech_Project.Signup" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/printech.css" />
</head>
    <center>
<body style="height: 390px">
    <form id="form1" runat="server">
        <div class="login_header">
            <h1>PRINTECH</h1>
        </div>
        <table class="login_tbl" style="border-spacing: 20px;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="User Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="userid" runat="server" BackColor="White" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="fname" runat="server" BackColor="White" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="lname" runat="server" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="uname" runat="server" Width="155px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="pwd" runat="server" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cpwd" runat="server" Width="155px"></asp:TextBox>
                </td>
            </tr>


        </table>
        <table>
            <tr>
                <td>
                    <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server" />
                </td>
            </tr>
            <td>
                    <asp:TextBox ID="textCaptcha" runat="server"></asp:TextBox>
                </td>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Verify" CssClass="btn_design" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Labelmsg" runat="server" Text=""></asp:Label>

                </td>
            </tr>
        </table>
        <div style="margin-top: 25px; margin-left: 75px;">
            <asp:Button ID="signup" runat="server" CssClass="btn_design" Text="Sign Up" OnClick="signup_Click" />
        </div>
    </form>
</body>
    </center>
</html>
