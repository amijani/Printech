<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="ap_project.addCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="css/printech.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }

        .auto-style2 {
            width: 231px;
        }

        .auto-style3 {
            margin-top: 95px;
            width: 6%;
            padding-left: 5px;
            padding-top: 5px;
            padding-bottom: 6px;
            padding-right: 5px;
            float: left;
            height: 100%;
            background-color: #0000007a;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <div class="menu">
                <asp:Menu ID="Menu1" runat="server" ForeColor="White" CssClass="menu">

                    <Items>
                        <asp:MenuItem Text="Home" Value="main" NavigateUrl="~/main.aspx"></asp:MenuItem>
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
                    <a href="login.aspx" style="color: #ffffff;" onclick="">
                        <h2>Logout </h2>
                    </a>
                </div>
            </div>
            <div class="addcategory_bottom">
                <div class="bottom_top">
                    <h2 style="margin-left: 47px; margin-right: 1075px;">Add Category</h2>
                </div>
                <div class="bottom_middle">
                    <table style="width: 100%; border-spacing: 15px;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Category Id"></asp:Label>
                                :</td>
                            <td>
                                <asp:TextBox ID="category_id" runat="server" Width="162px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="require_category" runat="server" ControlToValidate="category_id" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
                                :</td>
                            <td>
                                <asp:TextBox ID="txtCategory" runat="server" Width="163px" CssClass="auto-style1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="require_catname" runat="server" ControlToValidate="txtCategory" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td>
                                <asp:Button ID="add" runat="server" CssClass="btn_design" Text="Add" OnClick="addcategory_Click" />
                                <asp:Label ID="dataSaved" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>

                </div>
                <div class="bottom_bottom">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="categoryid" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing">
                        <Columns>

                            <asp:BoundField DataField="categoryid" HeaderText="categoryid" ReadOnly="True" SortExpression="categoryid" />
                            <asp:BoundField DataField="categoryname" HeaderText="categoryname" SortExpression="categoryname" />
                            <asp:CommandField ShowDeleteButton="false" ShowEditButton="True" ButtonType="Image" EditImageUrl="images/editicon.jpg" HeaderText="Edit" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="false" HeaderText="Delete" DeleteImageUrl="images/deleteicon.png" ButtonType="Image" />
                        </Columns>
                        <HeaderStyle CssClass="gridviewheader" />
                        <RowStyle CssClass="gridviewrow" />
                    </asp:GridView>
                    &nbsp;
                </div>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrintechConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [categoryid] = @categoryid" InsertCommand="INSERT INTO [category] ([categoryid], [categoryname]) VALUES (@categoryid, @categoryname)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [categoryname] = @categoryname WHERE [categoryid] = @categoryid">
            <DeleteParameters>
                <asp:Parameter Name="categoryid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="categoryid" Type="String" />
                <asp:Parameter Name="categoryname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="categoryname" Type="String" />
                <asp:Parameter Name="categoryid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
