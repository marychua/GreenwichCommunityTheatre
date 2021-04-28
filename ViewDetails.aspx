<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="GreenwichCommunityTheatre.ViewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="stylesheet_ViewDetails.css" />
    
    
    <style type="text/css">
        .auto-style17 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 9px;
            background-color: #6846dd;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease 0s;
            color: #FFFFFF;
        }
        .auto-style18 {
            font-weight: normal;
        }
    </style>
    
    
</head>
    <form id="form1" runat="server">
     <header>
            <img class="logo" src="Images/logo.png" alt="logo" />
            <nav>
                <ul class="nav_bar">
                  <li><asp:Label ID="usertxt" runat="server" Text="Label"></asp:Label></li>
                    <li> <asp:Button runat="server" Text="Login" ID="loginbtn" OnClick="loginbtn_Click1" CssClass="cta"  /></li>
                            <li><a href="Main.aspx">Home</a></li>
                            <li><a href="#">About</a></li>                    
                            <li><a href="AddtoCart.aspx">Cart</a></li>
                         <li><asp:Button runat="server" Text="Logout" ID="logoutbtn" OnClick="logoutbtn_Click" CssClass="cta" /></li>
                    
                </ul>
            </nav>
            
        </header>
<body>
    
       
        <div>

        </div>
        <div class="auto-style11">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource1"  OnItemCommand="DataList1_ItemCommand"  OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table align="center">
                    <tr>
                        <td colspan="2" class="auto-style14" draggable="false">
                            <asp:Label ID="Label1" runat="server" Font-Names="Sylfaen" Font-Size="Large" Text='<%# Eval("PerfName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" rowspan="2" draggable="false">
                            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("PerfImage") %>' Width="300px" />
                        </td>
                        <td draggable="false" class="auto-style16">ID:
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("PerfId") %>'></asp:Label>
                            <br />
                            Date:<asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text='<%# Eval("PerfDate") %>'></asp:Label>
                            <br />
                            Time:<asp:Label ID="Label4" runat="server" CssClass="auto-style18" Text='<%# Eval("PerfTime") %>'></asp:Label>
                            <br />
                            Category:<asp:Label ID="Label5" runat="server" CssClass="auto-style18" Text='<%# Eval("Category") %>'></asp:Label>
                            <br />
                            Description:<br />
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13" draggable="false">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12" colspan="2" draggable="false">
                            <asp:Button ID="bookbtn" runat="server" CommandArgument='<%# Eval("PerfName") %>' CommandName="booknow" OnClick="bookbtn_Click" Text="Book Now" CssClass="auto-style17" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </div>
         <br />
        <br />       

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="SELECT * FROM [Performance_tbl] WHERE ([PerfName] = @PerfName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PerfName" QueryStringField="Name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
         

                

                       


                    

        
    </form>
</body>
</html>
