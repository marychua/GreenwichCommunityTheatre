<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GreenwichCommunityTheatre.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="style_admin.css" />
    
      <style type="text/css">
          .auto-style1 {
              text-align: center;
              margin-left:10%;
              margin-right:10%;
              
          }
          .section2{
              margin-left:20%;
              margin-right:20%;
          }
      </style>
</head>
     <form id="form1" runat="server">
         <header>
            <img class="logo" src="images/logo.png" alt="logo" />
            <nav>
                <ul class="nav_bar">
                     
                    <li><a href="Admin.aspx">Home</a></li>
                    <li><a href="UpdatePerformance.aspx">Performance</a></li>
                     <li><a href="Create.aspx">Account</a></li>
                    <li><a href="Report.aspx">Report</a></li>                   
                    <li><a href="Main.aspx">Logout</a></li>
                    
                </ul>
            </nav>
           
        </header>
<body>
   
   <div class="page">
    <%--<div class="complaintgrid">--%>
        <div class="auto-style1">
            <h2>Review</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" Height="330px" Width="850px">
            <Columns>
                <asp:BoundField DataField="reviewid" HeaderText="ID" SortExpression="complaintid">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="registerdatetime" HeaderText="Registered On" SortExpression="registerdatetime">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="uname" HeaderText="Username" SortExpression="uname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="reviewdetails" HeaderText="Details" SortExpression="complaintdetail">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("reviewid") %>' OnClick="Button1_Click" Text="Reply" CssClass="btnreply" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>            
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="First" LastPageText="Last" PageButtonCount="4" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            
            
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="SELECT [reviewid], [registerdatetime], [uname], [reviewdetails], [status] FROM [Review] ORDER BY [reviewid] DESC"></asp:SqlDataSource>
        <br />
        
            <h2>Ticket</h2>
           
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" autocomplete="off" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="850px" Height="100px" >
                    <Columns>
                        <asp:BoundField DataField="BookingId" HeaderText="ID" SortExpression="BookingId" />
                        <asp:BoundField DataField="CardNumber" HeaderText="Card No." SortExpression="CardNumber" />
                        <asp:BoundField DataField="Uname" HeaderText="Username" SortExpression="Uname" />
                        <asp:BoundField DataField="confirmationcode" HeaderText="Confirmation ID" SortExpression="confirmationcode" />
                        <asp:BoundField DataField="PaymentMethod_Name" HeaderText="Method" SortExpression="PaymentMethod_Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Print" CommandArgument='<%# Eval("BookingId") %>' CssClass="btnreply"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="select P.BookingId, M.CardNumber,M.CardHolderName,P.Uname,P.confirmationcode, M.PaymentMethod_Name
	from PaymentMethod M, Payment P
where M.PaymentMethodId = P.PaymentMethodId  AND P.confirmationcode=@confcode">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="confcode" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
                </div>
             </div>
        </div>
    </div>
            
    </form>
</body>
</html>
