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
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userid" ErrorMessage="Please enter user id!" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="fname" runat="server" BackColor="White" Width="155px"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" ErrorMessage="Please enter first name!" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="lname" runat="server" Width="155px"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Please enter lastname!" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="uname" runat="server" Width="155px" ></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="uname" ErrorMessage="Please enter username!" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="pwd" runat="server" Width="155px" TextMode="Password"></asp:TextBox>
                </td>
                <td>

                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pwd" ErrorMessage="Please enter password!" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>--%>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cpwd" runat="server" Width="155px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="cpwd" ErrorMessage="Password does not match" ForeColor="Red" ValidationGroup="2"></asp:CompareValidator>
                </td>
            </tr>


        </table>
        <table>
            <tr>
                <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pwd" ForeColor="Red" ValidationExpression="^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$" ValidationGroup="2" ErrorMessage="Password shoud contain atleast one lowercase one uppercase onr numeric and one special character"></asp:RegularExpressionValidator>
           </td>
           </tr>
            </table>
        <table>
            <tr>
                <td>
                    <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server" />
                </td>
            </tr>
            <tr>
            <td>
                    <asp:TextBox ID="textCaptcha" runat="server"></asp:TextBox>
                </td>
                </tr>
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
            <asp:Button ID="signup" runat="server" CssClass="btn_design" Text="Sign Up" OnClick="signup_Click" ValidationGroup="2" />
        </div>
    </form>
</body>
    </center>
</html>
