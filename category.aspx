<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="ap_project.category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/printech.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-top: 95px;
            width: 6%;
            float: left;
            height: 100%;
            background-color: #7f7f7f;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style1">
            <div class="menu">
                <asp:Menu ID="Menu1" runat="server"  ForeColor="White" CssClass="menu" >
                
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
                     <h1 style="text-align:center;">PRINTECH</h1>
                </div>
                <div class="logout">
                    <a href="login.aspx" style="color:#ffffff;" >Logout</a>
                </div>
            </div>
            <div class="addcategory_bottom">
                <div class="cat_middle">
                    <table style="width: 100%;">
                        <tr>
                            <td>
                    <div class="cat_mid_left"><h2>Category List</h2></div>
                                </td>
                            <td>
                    <div class="cat_mid_right"><asp:Button ID="addcat" runat="server" CssClass="btn_design" Text="Add Category" OnClick="addcat_Click"  /></div>
                                </td>
                    </tr>
                            </table>
                    
                    
                </div>
               
                <div class="bottom_bottom">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="categoryid" DataSourceID="SqlDataSource1">
                        <Columns>
                           
                            <asp:BoundField DataField="categoryid" HeaderText="categoryid" ReadOnly="True" SortExpression="categoryid" />
                            <asp:BoundField DataField="categoryname" HeaderText="categoryname" SortExpression="categoryname" />
                             <asp:CommandField  ShowEditButton="True"      HeaderText="Edit"      ButtonType="Image"  EditImageUrl="images/editicon.jpg" />
                            <asp:CommandField ShowDeleteButton="True"  HeaderText="Delete" ButtonType="Image"  DeleteImageUrl="images/deleteicon.png" />
                        </Columns>
                        <HeaderStyle CssClass="gridviewheader" />
                        <RowStyle CssClass="gridviewrow" />
                    </asp:GridView>
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
