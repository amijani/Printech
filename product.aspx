<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="ap_project.product" %>

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
                            <td><div class="cat_mid_left"><h2>Product List</h2></div></td>
                           
                       
                            <td><div class="cat_mid_right"><asp:Button ID="addproduct" runat="server" CssClass="btn_design" Text="Add Product" OnClick="addproduct_Click"  /></div></td>
                           
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
                            <asp:CommandField ShowDeleteButton="false" ShowEditButton="True" HeaderText="Edit" EditImageUrl="images/editicon.jpg" ButtonType="Image" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="false" HeaderText="Delete" DeleteImageUrl="images/deleteicon.png" ButtonType="Image" />
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
