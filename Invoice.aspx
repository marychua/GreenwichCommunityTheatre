<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="GreenwichCommunityTheatre.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoices</title>
    <link rel="license" href="https://www.opensource.org/licenses/mit-license/">
    <style type="text/css">
        * {
            border: 0;
            box-sizing: content-box;
            color: inherit;
            font-family: inherit;
            font-size: inherit;
            font-style: inherit;
            font-weight: inherit;
            line-height: inherit;
            list-style: none;
            margin: 0;
            padding: 0;
            text-decoration: none;
            vertical-align: top;
        }
        /* table */

table { font-size: 75%; table-layout: fixed; width: 100%; }
table { border-collapse: separate; border-spacing: 2px; }
th, td { border-width: 1px; padding: 0.5em; position: relative; text-align: left; }
th, td { border-radius: 0.25em; border-style: solid; }
th { background: #EEE; border-color: #BBB; }
td { border-color: #DDD; }

     /* heading */

h1,h2 { font: bold 100% sans-serif; letter-spacing: 0.5em; text-align: center; text-transform: uppercase; }

        /* page */

html { font: 16px/1 'Open Sans', lato; overflow: auto; padding: 0.5in; }
html { background: #999; cursor: default; }

body { box-sizing: border-box; height: 11in; margin: 0 auto; overflow: hidden; padding: 0.5in; width: 8.5in; }
body { background: #FFF; border-radius: 1px; box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5); }

/* header */

header { margin: 0 0 3em; }
header:after { clear: both; content: ""; display: table; }

header h1 { background: #000; border-radius: 0.25em; color: #FFF; margin: 0 0 1em; padding: 0.5em 0; }
header address { float: left; font-size: 75%; font-style: normal; line-height: 1.25; margin: 0 1em 1em 0; }
header address p { margin: 0 0 0.25em; }
header span, header img { display: block; float: right; }
header span { margin: 0 0 1em 1em; max-height: 25%; max-width: 60%; position: relative; }
header img { max-height: 100%; max-width: 100%; }
header input { cursor: pointer; -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; height: 100%; left: 0; opacity: 0; position: absolute; top: 0; width: 100%; }
/* table items */

table.inventory { clear: both; width: 100%; }
table.inventory th { font-weight: bold; text-align: center; }

table.inventory td:nth-child(1) { width: 26%; }
table.inventory td:nth-child(2) { width: 38%; }
table.inventory td:nth-child(3) { text-align: right; width: 12%; }
table.inventory td:nth-child(4) { text-align: right; width: 12%; }
table.inventory td:nth-child(5) { text-align: right; width: 12%; }

 
        .auto-style1 {
            height: 897px;
        }

 .bannerbtn {
    color: #FFFFFF;
    background-color: rgba(0, 0, 0, 0.19);
    border: none;
    border-radius: 50px;
    height: 40px;
    cursor: pointer;
    transition: all 0.3s ease 0s;
    box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-style :None;
    width:150px;
   
   



        
}
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
         <h2>Successfully paid.<br />
            <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
            </h2>
        <header>
            <h1>Invoice</h1>
        </header>
        <div>
           
        </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="backpnl">
            <table class="inventory">
                <tr>
                    <td colspan="2" ><strong>
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="2">Confirmation ID:
                        <asp:Label ID="Label16" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Shipping Date:<asp:Label ID="Label15" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td >Shipping Address:<br />
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>Email Address:<br />
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-size: medium;" colspan="2">Description</td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: medium;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="95px" Width="652px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="BookingId" HeaderText="Code" ReadOnly="True" SortExpression="BookingId">
                                </asp:BoundField>
                                <asp:BoundField DataField="PerfName" HeaderText="Show" SortExpression="PerfName">
                                </asp:BoundField>
                                <asp:BoundField DataField="PerfDate" HeaderText="Date" SortExpression="PerfDate" />
                                <asp:BoundField DataField="PerfTime" HeaderText="Time" SortExpression="PerfTime" />
                                <asp:BoundField DataField="tickettype" HeaderText="Ticket" SortExpression="tickettype" />
                                <asp:BoundField DataField="seatno" HeaderText="Seat No" SortExpression="seatno" />
                                <asp:BoundField DataField="TotalAmount" HeaderText="Amount" ReadOnly="True" SortExpression="TotalAmount" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="Black" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        Grand Total: <strong>
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
                </asp:Panel>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Download" CssClass="bannerbtn" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send to Email"  CssClass="bannerbtn"/>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Print " Width="93px" CssClass="bannerbtn"/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main.aspx">Go Back To Main Page</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="viewUserCart" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="BookingId" SessionField="bookingid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
