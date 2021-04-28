<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="GreenwichCommunityTheatre.AddtoCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="stylecart.css" />
    
    <style type="text/css">
        .auto-style2 {
            font-size: small;
        }
        .auto-style17 {
            width: 850px;
            position: relative;
            margin: 3% auto;
            background-color: rgba(0, 0, 0, 0.19);
            padding: 5px;
            box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
        }
        .font {

            font-size:larger;
            font: bold 100% sans-serif; letter-spacing: 0.3em; text-align: center; text-transform: uppercase;color:white; margin-left:40%;

        }
      
    
        </style>
   
    <%--<script>
        //setInterval(function () { $('LinkButton1').click() }, 5000);
        $(document).ready(function() {
            setTimeout(function() {$('Button2').click();}, 3000);
        });
        </script>--%>
    <script type="text/javascript">
        setTimeout("CallButton()", 30000)
        function CallButton() {
            document.getElementById("Button3").click();
        }
</script>
    
</head>
<body>
    <form id="form1" runat="server">
         <header>
            <img class="logo" src="Images/logo.png" alt="logo" />
        
            <nav>
                <ul class="nav_bar">
                   
                         <li><asp:Label ID="usertxt" runat="server" Text="Label"></asp:Label> </li>  
                            <li> <asp:Button runat="server" Text="Login" ID="loginbtn" OnClick="loginbtn_Click1" CssClass="cta"  /></li>
                            <li><a href="Main.aspx">Home</a></li>
                            <li><a href="#">About</a></li>                    
                            <li><a href="AddtoCart.aspx">Cart</a></li>
                         <li><asp:Button runat="server" Text="Logout" ID="logoutbtn" OnClick="logoutbtn_Click" CssClass="cta" /></li>
                    
                </ul>
            </nav>
        
        </header>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
            <ContentTemplate> 
                <asp:Label ID="lblTime" runat="server" CssClass="font"></asp:Label>
                <asp:Timer ID="timerTest" runat="server" OnTick="Timer1_Tick"  Interval="1000"></asp:Timer>
                
        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timerTest" EventName="tick"/>
            </Triggers>
        </asp:UpdatePanel>
        <div class ="auto-style17">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="BookingId"  OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" 
                CellPadding="2" ForeColor="#333333" GridLines="None" Font-Names="Consolas"  margin-left="15%" margin-right="15%" CssClass="auto-style2" HorizontalAlign="Center" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Booking Id" SortExpression="BookingId">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("BookingId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Poster" SortExpression="PerfImage">
                        <ItemTemplate>
                            <%--<asp:Label ID="Label8" runat="server" Text='<%# Bind("PerfImage") %>'></asp:Label>--%>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("PerfImage") %>' Width="90" Height="90" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" SortExpression="PerfName">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("PerfName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Wrap="True" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date" SortExpression="PerfDate">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("PerfDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time" SortExpression="PerfTime">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("PerfTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ticket" SortExpression="tickettype">
                        <ItemTemplate>
                            <asp:Label ID ="Label21" runat="server" Text='<%# Bind("tickettype") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Font-Size="Small" Wrap="True" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Seat no" SortExpression="seatno">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("seatno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Seat" SortExpression="TotalSeat">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("TotalSeat") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="Labelse" runat="server" Text="Total"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Price" SortExpression="">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("TotalAmount") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="Label8" runat="server" Text="Total"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" ForeColor="White" CommandName="Delete" CssClass="deletebtn" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle BorderStyle="None" ForeColor="White" Font-Size="X-Small" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#333333" />
                <FooterStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#333333"  ForeColor="White" />
                <PagerSettings FirstPageText="First" LastPageText="Last" PageButtonCount="5" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="viewUserCart" SelectCommandType="StoredProcedure" >
                <SelectParameters>
                    <asp:SessionParameter Name="BookingId" SessionField="bookingid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Checkout" CssClass="deletebtn"  />
        &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label22" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
            
             <asp:Button ID="Button3" runat="server" Text="Cancel Ticket" OnClick="Button3_Click" CssClass="deletebtn" />

             </div>
               
         
        
            
      
         &nbsp;</form>
</body>
</html>
