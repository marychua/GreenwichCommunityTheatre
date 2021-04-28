  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GreenwichCommunityTheatre.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="styles.css" />
    <style type="text/css">
        
    .container {
        display: flex;
        margin-left:15%;
        margin-right:15%;
        box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      }
      .divL, .divR {
        box-sizing: border-box;
        padding: 10px;
        color:gray;
       
      }
      .divL {
        
        /*background-color: #fff;*/           
        background-image: linear-gradient(to bottom, #121012, #181119, #1d121f, #211326, #25132d, #2f163b, #38184a, #421a59, #561d74, #6c1e8f, #831eac, #9c19c8);
         font:200;
         
        /* OPTIONAL WIDTH
        width: 40% */
      }
      .divR {
        /*background: #9c4dd9;*/
       background-image: linear-gradient(to bottom, #121012, #181119, #1d121f, #211326, #25132d, #2f163b, #38184a, #421a59, #561d74, #6c1e8f, #831eac, #9c19c8);

        /* OPTIONAL WIDTH
        width: 60% */
      }
        .input-field {
            background: rgba(255,255,255,0.1);
            margin-bottom: 10px;
            margin-top: 3px;
            line-height: 1.3em;
            font-size: 14px;
            font-size: 1.1rem;
            border: none;
            padding: 5px 10px 5px 10px;
            color: #fff;
            box-sizing: border-box;
            margin-left: auto;
            margin-right: auto;
        }
        .dropdown-content {
            color: #fff;
            font-size: 12px;
            padding:5px 10px 5px 10px;
            border: none;
            background: #1d121f;
            opacity:0.7;
            margin-bottom: 10px;
            margin-top: 3px;
            
        }

        
      .dense {
            line-height: 1.2em;
            font-size: 16px;
            font-size: 1rem;
        }
       .thin {
            font-weight: 400;
        }
        .small {
            font-size: 12px;
            font-size: .8rem;
        }
        .auto-style15 {
            font-size: small;
            font-weight:100;
            font: sans-serif;
        }
        .auto-style22 {
            font-size: small;
            height: 34px;
            text-align: right;
            width: 96px;
        }
        .auto-style27 {
            font-size: small;
            height: 34px;
            text-align: left;
            width: 205px;
        }
        .auto-style36 {
            font-size: small;
            text-align: right;
            width: 96px;
            height: 32px;
        }
        .stylecart{
           font-size: 75%; table-layout: fixed; width: 100%; 
           border-collapse: separate; border-spacing: 2px; 

        }
            .stylecart td, th {
                border-width: 1px;
                padding: 0.5em;
                position: relative;
                text-align: left;                
            }
            .styletable{
                 font-size: 70%; table-layout: fixed; width: 100%; font: sans-serif;
                 border-collapse: separate; border-spacing: 2px;letter-spacing: 0.05em;
            }
             .styletable td, th {                
                padding: 0.5em;
                position: relative;
                text-align: left;
            }
             .font{
                 font: bold 100% sans-serif; letter-spacing: 0.3em; text-align: center; text-transform: uppercase; background-color: #13141b;color:white; box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
             }
             .font1{
                 font: bold 100% sans-serif; letter-spacing: 0.3em; text-align: center; text-transform: uppercase;color:darkgray;
             }

        .payinfo {
            font-size: 65%;
            table-layout: fixed;
            width: 100%;    
            box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            padding:20px;
            
        }

            .payinfo td, th {                              
                
                text-align: left;
                font:100;
             
            }
             
        </style>
    
</head>
    <form id="form1" runat="server">
    <body>
      
     <header>
            <img class="logo" src="Images/logo.png" alt="logo" />        
            <nav>
                <ul class="nav_bar">
                    
                         <li><asp:Label ID="usertxt" runat="server" Text=""></asp:Label> </li>  
                            <li> <asp:Button runat="server" Text="Login" ID="loginbtn"  CssClass="cta"  /></li>
                            <li><a href="Main.aspx">Home</a></li>
                            <li><a href="#">About</a></li>                    
                            <li><a href="AddtoCart.aspx">Cart</a></li>
                         <li><asp:Button runat="server" Text="Logout" ID="logoutbtn"  CssClass="cta" /></li>
                    
                </ul>
            </nav>
       </header>
   
 
    <asp:Panel ID="Panel1" runat="server" CssClass="container">
        <div class="divL">
            <table style="padding:5px" class="styletable">
                <tr>
                    <td colspan="3" class="font"><strong>Personal Information</strong></td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <span><span class="auto-style15">Name:</span> </span>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style15"></asp:Label>
                        &nbsp;<asp:Label ID="Label15" runat="server" CssClass="auto-style15" ></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td colspan="2" ><span class="auto-style15">Contact Number: </span><asp:Label ID="Label2" runat="server" CssClass="auto-style15"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" ><span class="auto-style15">Email: </span><asp:Label ID="Label3" runat="server" CssClass="auto-style15"></asp:Label></td>
                </tr>
                <tr>
                    <td  colspan="3" class="font"><strong>Address </strong> </td>
                </tr>
                <tr>
                    <td colspan="3" >
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style15"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td  colspan="3" class="font"><strong>Shipping Method</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style15" Text="GCT Theatre" AutoPostBack="True" GroupName="delivery" />
                    </td>
                    <td class="auto-style13">Collection Booth</td>
                    <td class="auto-style36">Free</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style15" Text="Standard Delivery" AutoPostBack="True" GroupName="delivery" />
                    </td>
                    <td >4 Business days (est
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                        )</td>
                    <td class="auto-style36">RM8.00</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton3" runat="server" CssClass="auto-style15" Text="Express Delivery" AutoPostBack="True" GroupName="delivery" />
                    </td>
                    <td >1 Business days (est
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                        )</td>
                    <td >RM12.00</td>
                </tr>
            </table>
    </div>
    <div class="divR">
                
        <table class="styletable">
            <tr class="font">
                <td >My Cart
                    <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label17" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label18" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div >&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" CellPadding="4" CssClass="stylecart" ForeColor="#333333" GridLines="Horizontal" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="BookingId" HeaderText="ID" ReadOnly="True" SortExpression="BookingId" />
                    <asp:BoundField DataField="PerfName" HeaderText="Show" SortExpression="PerfName" />
                    <asp:BoundField DataField="seatno" HeaderText="Seat" SortExpression="seatno" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" ReadOnly="True" />
                    <asp:BoundField DataField="tickettype" HeaderText="tickettype" SortExpression="tickettype" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="Amount" ReadOnly="True" SortExpression="TotalAmount" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />                
                <HeaderStyle BackColor="#181119" Font-Bold="True" ForeColor="Gray" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#181119" />
                
                
            </asp:GridView>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="viewUserCart" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="BookingId" SessionField="bookingid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="payinfo" >
            <tr class="font1">
                <td class="thin">Subtotal</td>
                <td>
                    RM<asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="font1">
                <td class="thin">Shipping</td>
                <td>
                    RM<asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
           <tr class="font1">
                <td class="thin">Promo code</td>
                <td>                   
                    <asp:DropDownList ID="DropDownList1" CssClass="dropdown-content" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>BUY4FREE1</asp:ListItem>
                        <asp:ListItem>MONTHUR</asp:ListItem>
                        <asp:ListItem>AGENT20</asp:ListItem>
                       
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="font1">
                <td class="thin">Discount</td>
                <td>
                    <asp:Label ID="Label10" runat="server">0</asp:Label>
                </td>
            </tr>
            <tr class="font1">
                <td class="dense">Total</td>
                <td class="dense">
                    <asp:Label ID="Label11" runat="server" Font-Strikeout="True"></asp:Label>
                    &nbsp;RM<asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click" />
        <br />
    </div>
   </asp:Panel>
</body>
       </form>   
</html>
