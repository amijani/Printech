<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="ap_project.addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/printech.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
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
         <div class="auto-style2">
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
                <div class="bottom_top">
                    <h2>Add Product</h2>
                </div>
                <div class="bottom_middle">
                    <table style="width:100%; border-spacing:15px;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:DropDownList ID="catid" runat="server" Height="16px" Width="165px">
                                </asp:DropDownList>
                            </td>  
                            <td>

                                <asp:Label ID="Label3" runat="server" Text="Product Name"></asp:Label>

                            </td>
                            <td>

                                <asp:TextBox ID="txtproname" runat="server" Width="165px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:Label ID="Label2" runat="server" Text="Product ID"></asp:Label>
                            </td>
                            <td class="auto-style1" >
                                <asp:TextBox ID="txtcatid" runat="server" Width="165px"></asp:TextBox>
                            </td>   
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Product ID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtproid" runat="server" Width="165px"></asp:TextBox>
                            </td>
                        </tr>  
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Sales Price"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox2" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Available Quantity"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="avaquantity" runat="server" Height="20px" Width="165px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style1"></td>
                            <td></td>
                            <td ><asp:Button ID="Button1" runat="server" CssClass="btn_design" Text="Add"  /></td>
                            
                        </tr>
                    </table>
                    
                </div>
                <div class="bottom_bottom">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrintechConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [productid] = @productid" InsertCommand="INSERT INTO [product] ([productid], [productname], [salesprice], [availablequantity], [categoryname]) VALUES (@productid, @productname, @salesprice, @availablequantity, @categoryname)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [productname] = @productname, [salesprice] = @salesprice, [availablequantity] = @availablequantity, [categoryname] = @categoryname WHERE [productid] = @productid">
                        <DeleteParameters>
                            <asp:Parameter Name="productid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="productid" Type="String" />
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="salesprice" Type="Decimal" />
                            <asp:Parameter Name="availablequantity" Type="Int32" />
                            <asp:Parameter Name="categoryname" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="salesprice" Type="Decimal" />
                            <asp:Parameter Name="availablequantity" Type="Int32" />
                            <asp:Parameter Name="categoryname" Type="String" />
                            <asp:Parameter Name="productid" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1">
                        <Columns>
                            
                            <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" SortExpression="productid" />
                            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                            <asp:BoundField DataField="salesprice" HeaderText="salesprice" SortExpression="salesprice" />
                            <asp:BoundField DataField="availablequantity" HeaderText="availablequantity" SortExpression="availablequantity" />
                            <asp:BoundField DataField="categoryname" HeaderText="categoryname" SortExpression="categoryname" />
                            <asp:CommandField ShowDeleteButton="false" ShowEditButton="True" EditImageUrl="images/editicon.jpg" HeaderText="Edit" ButtonType="Image" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="false" HeaderText="Delete" ButtonType="Image" DeleteImageUrl="images/deleteicon.png" />
                        </Columns>
                        <HeaderStyle CssClass="gridviewheader" />
                        <RowStyle CssClass="gridviewrow" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
