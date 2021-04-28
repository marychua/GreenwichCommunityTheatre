<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookSeat.aspx.cs" Inherits="GreenwichCommunityTheatre.BookSeat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="styles_bookseat.css" />
    
       
    <style type="text/css">
     /**/
       
        .backstage1 {
            height:30px;
           
        }
      .auto-style27{
         
  /*width:50%;*/
  /*border-radius: 10%;*/
  /*box-shadow:
    inset 0 0 50px #fff,
    inset 20px 0 80px #f0f,
    inset -20px 0 80px #0ff,
    inset 20px 0 300px #f0f,
    inset -20px 0 300px #0ff,
    0 0 50px #fff,
    -10px 0 80px #f0f,
    10px 0 80px #0ff;*/
      }
 
        .auto-style28 {
            width: 100%;
        }
      .auto-style29 {
            /*width: 50%;*/
            /*border-radius: 10%;*/
            /*box-shadow: inset 0 0 50px #fff, inset 20px 0 80px #f0f, inset -20px 0 80px #0ff, inset 20px 0 300px #f0f, inset -20px 0 300px #0ff, 0 0 50px #fff, -10px 0 80px #f0f, 10px 0 80px #0ff;*/
            /*text-align: center;*/
        }
        .auto-style30 {
            width: 23px;
        }
    </style>
    
       
</head>
    <header>
            <img class="logo" src="images/l.jpeg" alt="logo" />
            <nav>
                <ul class="nav_bar">
                    <li>
                        <asp:Label ID="usertxt" runat="server" Text="Label"></asp:Label>
                    </li>
                    <li><a href="Main.aspx">Home</a></li>
                    <li><a href="#">About</a></li>                    
                    <li><a href="#">Cart</a></li>
                    
                </ul>
            </nav>
            <a class="cta" href="#"><button>Contact</button></a>
        </header>
<body>
    <form id="form1" runat="server">
        
      
      <%--  &nbsp;--%>
      
        <%--<br />--%>
        <table class="auto-style27" align="center">
            <tr>
                <td class="auto-style16">
                     Ticket type: </td>
            </tr>
            <tr>
                <td class="auto-style16">
                     <asp:Button ID="btnA"  runat="server" Text="Band A" ToolTip="RM30" OnClick="btnA_Click" /> 
                    <%--  &nbsp;--%>
                    <asp:Button ID="btnB" runat="server" Text="Band B" ToolTip="RM70" />
                    <%--  &nbsp;--%>
                    <asp:Button ID="btnC" runat="server" Text="Band C" ToolTip="RM100"/>
                </td>
            </tr>
            <tr>
                     <td class="auto-style46">
                         </td>
            </tr>
            <tr>
                <td class="auto-style46">
            <table align="center"  ID="seattable" class="auto-style36">
                <tr>
                    <td >
                        <asp:Button ID="A1" runat="server" Text="1"  CssClass="bandc"  OnClick="Button1_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A2" runat="server" Text="2"  CssClass="bandc"  OnClick="Button2_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A3" runat="server" Text="3"  CssClass="bandc" OnClick="Button3_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A4" runat="server" Text="4"  CssClass="bandc" OnClick="A4_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A5" runat="server" Text="5"  CssClass="bandc" OnClick="A5_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A6" runat="server" Text="6"  CssClass="bandc" OnClick="A6_Click" ForeColor="White" />
                    </td>
                    <td>
                        <asp:Button ID="A7" runat="server" Text="7"  CssClass="bandc" OnClick="A7_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A8" runat="server" Text="8"  CssClass="bandc" OnClick="A8_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A9" runat="server" OnClick="Button9_Click" Text="9"  CssClass="bandc" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A10" runat="server" Text="10" CssClass="bandc"  OnClick="A10_Click" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Button ID="A11" runat="server" Text="11" CssClass="bandc" OnClick="A11_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A12" runat="server" Text="12" CssClass="bandc" OnClick="A12_Click" ForeColor="White" />
                    </td>
                    <td >
                        <asp:Button ID="A13" runat="server"  Text="13" CssClass="bandc" OnClick="A13_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A14" runat="server" Text="14" CssClass="bandc" OnClick="A14_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A15" runat="server" Text="15" CssClass="bandc" OnClick="A15_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A16" runat="server" Text="16" CssClass="bandc" OnClick="A16_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A17" runat="server" Text="17" CssClass="bandc" OnClick="A17_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A18" runat="server" Text="18" CssClass="bandc" OnClick="A18_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A19" runat="server" Text="19" CssClass="bandc" OnClick="A19_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A20" runat="server" Text="20" CssClass="bandc" OnClick="A20_Click" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td   >
                        <asp:Button ID="A21" runat="server" Text="21" CssClass="bandc" OnClick="A21_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A22" runat="server" Text="22" CssClass="bandc" OnClick="A22_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A23" runat="server" Text="23" CssClass="bandb" OnClick="A23_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A24" runat="server" Text="24" CssClass="bandb" OnClick="A24_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A25" runat="server" Text="25" CssClass="bandb" OnClick="A25_Click" ForeColor="White"  />
                    </td>
                    <td   >
                        <asp:Button ID="A26" runat="server" Text="26" CssClass="bandb" OnClick="A26_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A27" runat="server" Text="27" CssClass="bandb" OnClick="A27_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A28" runat="server" Text="28" CssClass="bandb" OnClick="A28_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A29" runat="server" Text="29" CssClass="bandc" OnClick="A29_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A30" runat="server" Text="30" CssClass="bandc" OnClick="A30_Click" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td  >
                        <asp:Button ID="A31" runat="server" Text="31" CssClass="bandc" OnClick="A31_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A32" runat="server" Text="32" CssClass="bandc" OnClick="A32_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A33" runat="server" Text="33" CssClass="bandb" OnClick="A33_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A34" runat="server" Text="34" CssClass="bandb" OnClick="A34_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A35" runat="server" Text="35" CssClass="bandb" OnClick="A35_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A36" runat="server" Text="36" CssClass="bandb" OnClick="A36_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A37" runat="server" Text="37" CssClass="bandb" OnClick="A37_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A38" runat="server" Text="38" CssClass="bandb" OnClick="A38_Click" ForeColor="White" />
                    </td>
                    <td   >
                        <asp:Button ID="A39" runat="server" Text="39" CssClass="bandc" OnClick="A39_Click" ForeColor="White" />
                    </td>
                    <td  >
                        <asp:Button ID="A40" runat="server" Text="40" CssClass="bandc" OnClick="A40_Click" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td   colspan="10" class="gap"></td>
                </tr>
                <tr>
                    <td  >
                        <asp:Button ID="A41" runat="server" Text="41" CssClass="bandb" ForeColor="White" OnClick="A41_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A42" runat="server" Text="42" CssClass="bandb" ForeColor="White" OnClick="A42_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A43" runat="server" Text="43" CssClass="bandb" ForeColor="White" OnClick="A43_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A44" runat="server" Text="44" CssClass="bandb" ForeColor="White" OnClick="A44_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A45" runat="server" Text="45" CssClass="bandb" ForeColor="White" OnClick="A45_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A46" runat="server" Text="46" CssClass="bandb" ForeColor="White" OnClick="A46_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A47" runat="server" Text="47" CssClass="bandb" ForeColor="White" OnClick="A47_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A48" runat="server" Text="48" CssClass="bandb" ForeColor="White" OnClick="A48_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A49" runat="server" Text="49" CssClass="bandb" ForeColor="White" OnClick="A49_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A50" runat="server" Text="50" CssClass="bandb" ForeColor="White" OnClick="A50_Click" />
                    </td>
                </tr>
                <tr>
                    <td   >
                        <asp:Button ID="A51" runat="server" Text="51" CssClass="bandb" ForeColor="White" OnClick="A51_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A52" runat="server" Text="52" CssClass="bandb" ForeColor="White" OnClick="A52_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A53" runat="server" Text="53" CssClass="bandb" ForeColor="White" OnClick="A53_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A54" runat="server" Text="54" CssClass="bandb" ForeColor="White" OnClick="A54_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A55" runat="server" Text="55" CssClass="bandb" ForeColor="White" OnClick="A55_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A56" runat="server" Text="56" CssClass="bandb" ForeColor="White" OnClick="A56_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A57" runat="server" Text="57" CssClass="bandb" ForeColor="White" OnClick="A57_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A58" runat="server" Text="58" CssClass="bandb" ForeColor="White" OnClick="A58_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A59" runat="server" Text="59" CssClass="bandb" ForeColor="White" OnClick="A59_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A60" runat="server" Text="60" CssClass="bandb" ForeColor="White" OnClick="A60_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="gap" colspan="10"></td>
                </tr>
                <tr>
                    <td   >
                        <asp:Button ID="A61" runat="server" Text="61" CssClass="banda" ForeColor="White" OnClick="A61_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A62" runat="server" Text="62" CssClass="banda" ForeColor="White" OnClick="A62_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A63" runat="server" Text="63" CssClass="banda" ForeColor="White" OnClick="A63_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A64" runat="server" Text="64" CssClass="banda" ForeColor="White" OnClick="A64_Click" />
                    </td>
                    <td colspan="2" rowspan="3">&nbsp;</td>
                    <td  >
                        <asp:Button ID="A65" runat="server" Text="65" CssClass="banda" ForeColor="White" OnClick="A65_Click" />
                    </td>
                    <td >
                        <asp:Button ID="A66" runat="server" Text="66" CssClass="banda" ForeColor="White" OnClick="A66_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A67" runat="server" Text="67" CssClass="banda" ForeColor="White" OnClick="A67_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A68" runat="server" Text="68" CssClass="banda" ForeColor="White" OnClick="A68_Click" />
                    </td>
                </tr>
                <tr>
                    <td  >
                        <asp:Button ID="A69" runat="server" Text="69" CssClass="banda" ForeColor="White" OnClick="A69_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A70" runat="server" Text="70" CssClass="banda" ForeColor="White" OnClick="A70_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A71" runat="server" Text="71" CssClass="banda" ForeColor="White" OnClick="A71_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A72" runat="server" Text="72" CssClass="banda" ForeColor="White" OnClick="A72_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A73" runat="server" Text="73" CssClass="banda" ForeColor="White" OnClick="A73_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A74" runat="server" Text="74" CssClass="banda" ForeColor="White" OnClick="A74_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A75" runat="server" Text="75" CssClass="banda" ForeColor="White" OnClick="A75_Click" />
                    </td>
                    <td >
                        <asp:Button ID="A76" runat="server" Text="76" CssClass="banda" ForeColor="White" OnClick="A76_Click" />
                    </td>
                </tr>
                <tr>
                    <td   >
                        <asp:Button ID="A77" runat="server" Text="77" CssClass="banda" ForeColor="White" OnClick="A77_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A78" runat="server" Text="78" CssClass="banda" ForeColor="White" OnClick="A78_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A79" runat="server" Text="79" CssClass="banda" ForeColor="White" OnClick="A79_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A80" runat="server" Text="80" CssClass="banda" ForeColor="White" OnClick="A80_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A81" runat="server" Text="81" CssClass="banda" ForeColor="White"  OnClick="A81_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A82" runat="server" Text="82" CssClass="banda" ForeColor="White" OnClick="A82_Click" />
                    </td>
                    <td  >
                        <asp:Button ID="A83" runat="server" Text="83" CssClass="banda" ForeColor="White" OnClick="A83_Click" />
                    </td>
                    <td   >
                        <asp:Button ID="A84" runat="server" Text="84" CssClass="banda" ForeColor="White" OnClick="A84_Click" />
                    </td>
                </tr>
            </table>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" >
                    <asp:Label ID="Label12" runat="server" Text="STAGE" Font-Names="Sitka Subheading" ></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style47" style="font-size: small; color: #FFFFFF; font-family: 'Sitka Subheading';">
                        <table class="auto-style28">
                            <tr>
                                <td class="auto-style30">&nbsp;</td>
                                <td>
                        <asp:Button ID="A85" runat="server" CssClass="bandc"  OnClick="Button1_Click" ForeColor="White" Enabled="False" />
                                </td>
                                <td>Band A</td>
                                <td>
                        <asp:Button ID="A86" runat="server" CssClass="bandb" OnClick="A23_Click" ForeColor="White" Enabled="False" />
                                </td>
                                <td>Band B</td>
                                <td>
                        <asp:Button ID="A87" runat="server" CssClass="banda" ForeColor="White" Enabled="False" />
                                </td>
                                <td>Band C</td>
                                <td>
                        <asp:Button ID="A88" runat="server"  CssClass="bandc"  OnClick="Button1_Click" ForeColor="White" BackColor="Red" Enabled="False" />
                                </td>
                                <td>Booked</td>
                            </tr>
                        </table>
                </td>
            </tr>
            </table>
        <br />
                    <table class="bookingtable" align="center">
                                              
                        <tr>
                            <td >Booking Id</td>
                            <td ><asp:Label ID="Label5" runat="server" CssClass="auto-style16" Enabled="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >Performance Name</td>
                            <td ><asp:Label ID="Label6" runat="server" CssClass="auto-style16" Enabled="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >Seat No</td>
                            <td >
                                <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"  ></asp:TextBox>
                                <span class="auto-style16"><asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click2" />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td >Cost per ticket</td>
                            <td >
                                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td >No of Ticket</td>
                            <td >
                                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td >&nbsp;</td>
                            <td >
                                <span class="auto-style16">&nbsp;<asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                                </span></td>
                        </tr>
                        <tr>
                            <td >&nbsp;</td>
                            <td >
                                &nbsp;</tr>
                        <tr>
                            <td >
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td >
                                  <asp:Button ID="cartbtn" runat="server" Text="Add to Cart" Width="126px" OnClick="cartbtn_Click" />
                            </td>
                        </tr>
                    </table>
        <br />
    </form>
</body>
</html>
