<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editcategory.aspx.cs" Inherits="ap_project.editcategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/printech.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
                margin-top: 95px;
    width: 6%;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 6px;
    padding-right: 5px;
    float: left;
    height: 100%;
    background-color: #000007a;
        }

        .auto-style2 {
            width: 288px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="menu">
                <asp:Menu ID="Menu1" runat="server" ForeColor="White" CssClass="menu">

                    <Items>
                        <asp:MenuItem Text="Home" Value="main" NavigateUrl="main.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Category" Value="Category" NavigateUrl="~/category.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Product" Value="Product" NavigateUrl="~/product.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="right">
            <div class="top">
                <div class="cmplogo">
                    <h1 style="text-align: center;">PRINTECH</h1>
                </div>
                <div class="logout">
                    <a href="login.aspx" style="color: #ffffff;" > <h2> Logout </h2> </a>
                </div>
            </div>
            <div class="addcategory_bottom">
                <div class="bottom_top">
                    <h2 style="
    margin-left: 36px;
    margin-right: 1149px;
">Edit Category</h2>
                </div>
                <div class="bottom_middle">
                    <table style="width: 100%; border-spacing: 15px;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCategory" runat="server" Width="162px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="require_ucatname" runat="server" ControlToValidate="txtCategory" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Category ID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtcatid" runat="server" Width="163px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="require_ucatid" runat="server" ControlToValidate="txtcatid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="update" runat="server" CssClass="btn_design" Text="Update" OnClick="update_Click" />
                                <asp:Label ID="categoryUpdate" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="cancel" runat="server" CssClass="btn_design" Text="Cancel" OnClick="cancel_Click" /></td>
                        </tr>
                    </table>

                </div>
                <div class="bottom_bottom">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="categoryid" DataSourceID="SqlDataSource1">
                        <Columns>

                            <asp:BoundField DataField="categoryid" HeaderText="categoryid" ReadOnly="True" SortExpression="categoryid" />
                            <asp:BoundField DataField="categoryname" HeaderText="categoryname" SortExpression="categoryname" />
                            <%--<asp:CommandField ShowDeleteButton="false" ShowEditButton="True" ButtonType="Image" EditImageUrl="images/editicon.jpg" HeaderText="Edit" />--%>
                            <asp:CommandField ShowDeleteButton="true" ShowEditButton="false" ButtonType="Image" DeleteImageUrl="images/deleteicon.png" HeaderText="Delete" />
                        </Columns>
                        <HeaderStyle CssClass="gridviewheader" />
                        <RowStyle CssClass="gridviewrow" />
                    </asp:GridView>
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrintechConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [categoryid] = @categoryid">
            <DeleteParameters>
                <asp:Parameter Name="categoryid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="categoryid" Type="String" />
                <asp:Parameter Name="categoryname" Type="String" />
            </InsertParameters>

        </asp:SqlDataSource>
    </form>
</body>
</html>
