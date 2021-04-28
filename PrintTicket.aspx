<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintTicket.aspx.cs" Inherits="GreenwichCommunityTheatre.PrintTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>
    <script>
        function printdiv(printpage) {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var newstr = document.all.item(printpage).innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
            return false;
        }
</script>
    <style type="text/css">
       body{
          height:100%;
          width:100%;
          background-color:pink;
       }
        .Panelstyle{
            margin-left:30%;
            margin-right:40px;
             box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
             background-color:white;
             border-radius:10px;
        }
        .auto-style1 {
            width: 99%;

        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-small;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            height: 23px;
            text-align: right;
        }
        .auto-style9 {
            height: 23px;
            font-size: small;
        }
        .auto-style10 {
            font-size: small;
        }
        .auto-style11 {
            text-align: center;
            color: #FFFFFF;
           background-color:grey;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Back </asp:HyperLink>
        <header>

        </header>
        <div>
           
            <asp:Label ID="Label1" runat="server" Text='<%Session[username]%>'></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
           
        </div>
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <div id="div_print">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="BookingId" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="1" RepeatDirection="Horizontal"  Font-Names="Consolas" Width="500px" CssClass="Panelstyle">
                    <AlternatingItemStyle BorderColor="Gray" BorderStyle="Dashed" />
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4" colspan="2">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.png" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11" colspan="2"><strong>GCT London</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2"><span class="auto-style5">Booking id:</span><asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text='<%# Eval("BookingId") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="font-weight: bold; text-transform: uppercase; font-family: Consolas">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("PerfName") %>' CssClass="auto-style7"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="font-weight: bold; text-transform: uppercase; font-family: Consolas">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("PerfDate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="font-weight: bold; text-transform: uppercase; font-family: Consolas">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("PerfTime") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" style="border-color: #000000; border-bottom-style: solid; border-bottom-width: 1px">Ticket:</td>
                                <td class="auto-style8" style="border-color: #000000; border-bottom-style: solid; border-bottom-width: 1px">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("tickettype") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #000000">Total:</td>
                                <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #000000">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("TotalSeat") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="2">Seat no:</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <strong>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("seatno") %>'></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2">RM<asp:Label ID="Label9" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                    </div>
                <input name="b_print" type="button" class="ipt"   onclick="printdiv('div_print');" value=" Print ">
            </asp:Panel>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="PrintTicketInfo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="BookingId" PropertyName="Text" Type="String" />                
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
