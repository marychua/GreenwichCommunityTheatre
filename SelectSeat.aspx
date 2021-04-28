<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectSeat.aspx.cs" Inherits="GreenwichCommunityTheatre.SelectSeat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="style_selectseat.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   
    <style type="text/css">
        .auto-style11 {
            height: 23px;
            text-align: center;
            width: 53%;
        }
        .auto-style13 {
            color: #9900CC;
            font-variant-caps:all-petite-caps;
        }
        .newStyle1 {
            padding: inherit;
        }
        .auto-style15 {
            width: 49%;
            text-align: left;
        }
        .auto-style16 {
            height: 23px;
            width: 45%;
        }
        .auto-style20 {
            height: 22px;
            width: 45%;
        }
        .auto-style22 {
            height: 22px;
            text-align: center;
            width: 53%;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            height: 22px;
            text-align: center;
        }
        .auto-style25 {
            text-align: left;
        }
        .auto-style26 {
            text-align: right;
        }
        .auto-style27 {
            font-size: small;
        }
        .auto-style29 {
            text-align: left;
            height: 32px;
        }
        .auto-style30 {
            text-align: right;
            color: #9900CC;
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
         .perf {
    background-color: #fff;
    border-radius: 5px;
    font-size: 14px;
    margin-right:10%;
    margin-left:70%;
    padding: 5px 15px 5px 15px;
    -moz-appearance: none;
    -webkit-appearance: none;
   
    /*color: white;    
    margin-left: 45%;
    margin-right: 45%;
    width: 80%;
    text-align: center;
    font-size:larger;
    font-family:Bahnschrift;*/
}
         .info-table {    
    margin-left: 15%;
    margin-right: 10%;
    width: 40%;
    color: #333333;
    /*box-shadow: 0px 1px 4px #000;*/
    border-radius: 8px;
    font-family: Bahnschrift;
}
        </style>
    <script type="text/JavaScript">
        alert('Select your Seat');
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

       
      <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      </div>
     
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          
          <ContentTemplate>
              <div class="divL">
              <asp:Label ID="Label8" runat="server" Text="Title" CssClass="perf" ></asp:Label>
                  <div style="float:right; margin-top:5%; width:450px"">
                              <table class="Tblright" style="padding: 10px; margin-left:10%; margin-right:10%;box-shadow: 0px 1px 4px #000; background: rgba(0, 0, 0, 0.356); color:white" >
                                  <tr>
                                       <td class="auto-style23" colspan="2">SEATS (<asp:Label ID="Label7" runat="server" AutoPostBack="true"></asp:Label>
                                          )</td>

                                  </tr>
                                  <tr>
                                     
                                      <td class="auto-style23" colspan="2">
                                          <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" CssClass="input-field" OnTextChanged="TextBox1_TextChanged" Width="215px"></asp:TextBox>
                                      </td>
                                  </tr>
                                  <tr>
                                      
                                      <td colspan="2" class="auto-style23">
                                          <asp:Label ID="Label6" runat="server" CssClass="auto-style13"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style16">ADULT</td>
                                      <td class="auto-style11">
                                          <asp:TextBox ID="txtAdult" CssClass="input-field" runat="server" min="0" max="20" AutoPostBack="true" OnTextChanged="txtAdult_TextChanged" TextMode="Number">0</asp:TextBox>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style20">CHILDREN</td>
                                      <td class="auto-style22">
                                          <asp:TextBox ID="txtChild" CssClass="input-field" runat="server" min="0" max="20" AutoPostBack="true" OnTextChanged="txtChild_TextChanged" TextMode="Number">0</asp:TextBox>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style20">OAP
                                          <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Visible="False"></asp:Label>
                                      </td>
                                      <td class="auto-style22">
                                          <asp:TextBox ID="txtOku" CssClass="input-field" min="0" max="20" runat="server" AutoPostBack="true" OnTextChanged="txtOku_TextChanged" TextMode="Number">0</asp:TextBox>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style24" colspan="2">
                                          <asp:Button ID="Button5" runat="server" CssClass="input-field" AutoPostBack="true" OnClick="Button4_Click" Text="Continue" Width="150px" />
                                      </td>
                                  </tr>
                              </table>
                              
                              <br />
                              <asp:Panel ID="Panel1" runat="server">
                                  <br />
                                  <div style="margin-top:5%;width:380px">
                                      <table style="padding: 10px;box-shadow: 0px 1px 4px #000; background: rgba(0, 0, 0, 0.356); color:white; margin-left:10%; margin-right:10%">
                                          <tr>
                                              <td class="auto-style26" colspan="2">
                                                  <p class="auto-style30">
                                                      <span class="auto-style27">ID:</span><asp:Label ID="lblbookingid" runat="server" CssClass="auto-style27"></asp:Label>
                                                  </p>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="auto-style29">SEAT</td>
                                              <td class="auto-style29">
                                                  <asp:Label ID="lblcount" runat="server" CssClass="input-field"></asp:Label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="auto-style25">
                                                  BAND</td>
                                              <td class="auto-style25">
                                                  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="dropdown-content" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                      <asp:ListItem>-SELECT-</asp:ListItem>
                                                      <asp:ListItem>BAND A</asp:ListItem>
                                                      <asp:ListItem>BAND B</asp:ListItem>
                                                      <asp:ListItem>BAND C</asp:ListItem>
                                                  </asp:DropDownList>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="auto-style15">PRICE PER</td>
                                              <td>
                                                  <asp:Label ID="lblprice" runat="server" CssClass="input-field"></asp:Label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="auto-style23" colspan="2">
                                                  <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                                  <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                                  <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                                                  <asp:Label ID="Label4" runat="server"></asp:Label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="auto-style23" colspan="2">
                                                  <asp:Button ID="Button6" CssClass="input-field" runat="server" OnClick="Button1_Click" Text="CONFIRM" Width="150px" />
                                              </td>
                                          </tr>
                                      </table>
                                  </div>
                              </asp:Panel>
                              
                          </div>
               <br />&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                      <asp:Panel ID="pnl1" runat="server" Height="700px" CssClass="panelback">
                          <asp:Table ID="seattable" runat="server" border="0" CellPadding="0" CellSpacing="0" CssClass="auto-style6">
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell1" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1" ToolTip="RM100" ImageUrl="~/Images/available_seatA_img.gif"
                                                            OnClick="s1click" runat="server" CssClass="bandA"/>1</asp:TableCell>
                                  <asp:TableCell ID="TableCell2" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s2" ToolTip="RM100" OnClick="s2click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />2</asp:TableCell>
                                  <asp:TableCell ID="TableCell3" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s3" ToolTip="RM100" OnClick="s3click"  ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />3</asp:TableCell>
                                  <asp:TableCell ID="TableCell4" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s4" ToolTip="RM100" OnClick="s4click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />4</asp:TableCell>
                                  <asp:TableCell ID="TableCell5" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s5" ToolTip="RM100" OnClick="s5click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />5</asp:TableCell>
                                  <asp:TableCell ID="TableCell6" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s6" ToolTip="RM100" OnClick="s6click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />6</asp:TableCell>
                                  <asp:TableCell ID="TableCell7" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s7" ToolTip="RM100" OnClick="s7click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                  <asp:TableCell ID="TableCell8" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s8" ToolTip="RM100" OnClick="s8click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />8</asp:TableCell>
                                  <asp:TableCell ID="TableCell9" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s9" ToolTip="RM100" OnClick="s9click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />9</asp:TableCell>
                                  <asp:TableCell ID="TableCell10" runat="server" class="seatCell" CssClass="bandA" valign="middle">
                                                        <asp:ImageButton ID="s10" ToolTip="RM100" OnClick="s10click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />10</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell11" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s11" ToolTip="RM100" ImageUrl="~/Images/available_seatA_img.gif" OnClick="s11click"
                                                            runat="server" />11</asp:TableCell>
                                  <asp:TableCell ID="TableCell12" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s12" ToolTip="RM100" OnClick="s12click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />12</asp:TableCell>
                                  <asp:TableCell ID="TableCell13" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s13" ToolTip="RM100" ImageUrl="~/Images/available_seatA_img.gif" OnClick="s13click"
                                                            runat="server" />13</asp:TableCell>
                                  <asp:TableCell ID="TableCell14" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s14" ToolTip="RM100" OnClick="s14click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />14</asp:TableCell>
                                  <asp:TableCell ID="TableCell15" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s15" ToolTip="RM100" OnClick="s15click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />15</asp:TableCell>
                                  <asp:TableCell ID="TableCell16" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s16" ToolTip="RM100" OnClick="s16click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />16</asp:TableCell>
                                  <asp:TableCell ID="TableCell17" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s17" ToolTip="RM100" OnClick="s17click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />17</asp:TableCell>
                                  <asp:TableCell ID="TableCell18" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s18" ToolTip="RM100" OnClick="s18click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />18</asp:TableCell>
                                  <asp:TableCell ID="TableCell19" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s19" ToolTip="RM100" OnClick="s19click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />19</asp:TableCell>
                                  <asp:TableCell ID="TableCell20" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s20" ToolTip="RM100" OnClick="s20click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />20</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell21" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s21" ToolTip="RM100" ImageUrl="~/Images/available_seatA_img.gif" OnClick="s21click"
                                                            runat="server" />21</asp:TableCell>
                                  <asp:TableCell ID="TableCell22" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s22" ToolTip="RM100" OnClick="s22click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />22</asp:TableCell>
                                  <asp:TableCell ID="TableCell23" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s23" ToolTip="RM130" ImageUrl="~/Images/available_seatB_img.gif" OnClick="s23click"
                                                            runat="server" />23</asp:TableCell>
                                  <asp:TableCell ID="TableCell24" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s24" ToolTip="RM130" OnClick="s24click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />24</asp:TableCell>
                                  <asp:TableCell ID="TableCell25" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s25" ToolTip="RM130" OnClick="s25click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />25</asp:TableCell>
                                  <asp:TableCell ID="TableCell26" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s26" ToolTip="RM130" OnClick="s26click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />26</asp:TableCell>
                                  <asp:TableCell ID="TableCell27" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s27" ToolTip="RM130" OnClick="s27click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />27</asp:TableCell>
                                  <asp:TableCell ID="TableCell28" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s28" ToolTip="RM130" OnClick="s28click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />28</asp:TableCell>
                                  <asp:TableCell ID="TableCell29" runat="server"  class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s29" ToolTip="RM100" OnClick="s29click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />29</asp:TableCell>
                                  <asp:TableCell ID="TableCell30" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s30" ToolTip="RM100" OnClick="s30click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />30</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell31" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s31" ToolTip="RM100" OnClick="s31click" ImageUrl="~/Images/available_seatA_img.gif"
                                                            runat="server" />31</asp:TableCell>
                                  <asp:TableCell ID="TableCell32" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s32" ToolTip="RM100" OnClick="s32click"  ImageUrl="~/Images/available_seatA_img.gif" 
                                                            runat="server" />32</asp:TableCell>
                                  <asp:TableCell ID="TableCell33" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s33" ToolTip="RM130" OnClick="s33click"  ImageUrl="~/Images/available_seatB_img.gif" 
                                                            runat="server" />33</asp:TableCell>
                                  <asp:TableCell ID="TableCell34" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s34" ToolTip="RM130"  OnClick="s34click"  ImageUrl="~/Images/available_seatB_img.gif" 
                                                            runat="server" />34</asp:TableCell>
                                  <asp:TableCell ID="TableCell35" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s35" ToolTip="RM130" OnClick="s35click"  ImageUrl="~/Images/available_seatB_img.gif" 
                                                            runat="server" />35</asp:TableCell>
                                  <asp:TableCell ID="TableCell36" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s36" ToolTip="RM130" OnClick="s36click" ImageUrl="~/Images/available_seatB_img.gif" 
                                                            runat="server" />36</asp:TableCell>
                                  <asp:TableCell ID="TableCell37" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s37" ToolTip="RM130" OnClick="s37click"  ImageUrl="~/Images/available_seatB_img.gif" 
                                                            runat="server" />37</asp:TableCell>
                                  <asp:TableCell ID="TableCell38" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s38" ToolTip="RM130" OnClick="s38click"  ImageUrl="~/Images/available_seatB_img.gif" 
                                                            runat="server" />38</asp:TableCell>
                                  <asp:TableCell ID="TableCell39" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s39" ToolTip="RM100" OnClick="s39click"  ImageUrl="~/Images/available_seatA_img.gif" 
                                                            runat="server" />39</asp:TableCell>
                                  <asp:TableCell ID="TableCell40" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s40" ToolTip="RM100" OnClick="s40click"  ImageUrl="~/Images/available_seatA_img.gif" 
                                                            runat="server" />40</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell41" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s41" ToolTip="RM130" ImageUrl="~/Images/available_seatB_img.gif"
                                                            OnClick="s41click" runat="server" />41</asp:TableCell>
                                  <asp:TableCell ID="TableCell42" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s42" ToolTip="RM130" OnClick="s42click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />42</asp:TableCell>
                                  <asp:TableCell ID="TableCell43" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s43" ToolTip="RM130" OnClick="s43click"  ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />43</asp:TableCell>
                                  <asp:TableCell ID="TableCell44" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s44" ToolTip="RM130" OnClick="s44click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />44</asp:TableCell>
                                  <asp:TableCell ID="TableCell45" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s45" ToolTip="RM130" OnClick="s45click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />45</asp:TableCell>
                                  <asp:TableCell ID="TableCell46" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s46" ToolTip="RM130" OnClick="s46click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />46</asp:TableCell>
                                  <asp:TableCell ID="TableCell47" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s47" ToolTip="RM130" OnClick="s47click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />47</asp:TableCell>
                                  <asp:TableCell ID="TableCell48" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s48" ToolTip="RM130" OnClick="s48click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />48</asp:TableCell>
                                  <asp:TableCell ID="TableCell49" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s49" ToolTip="RM130" OnClick="s49click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />49</asp:TableCell>
                                  <asp:TableCell ID="TableCell50" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s50" ToolTip="RM130" OnClick="s50click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />50</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell51" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s51" ToolTip="RM130" ImageUrl="~/Images/available_seatB_img.gif"
                                                            OnClick="s51click" runat="server" />51</asp:TableCell>
                                  <asp:TableCell ID="TableCell52" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s52" ToolTip="RM130" OnClick="s52click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />52</asp:TableCell>
                                  <asp:TableCell ID="TableCell53" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s53" ToolTip="RM130" OnClick="s53click"  ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />53</asp:TableCell>
                                  <asp:TableCell ID="TableCell54" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s54" ToolTip="RM130" OnClick="s54click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />54</asp:TableCell>
                                  <asp:TableCell ID="TableCell55" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s55" ToolTip="RM130" OnClick="s55click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />55</asp:TableCell>
                                  <asp:TableCell ID="TableCell56" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s56" ToolTip="RM130" OnClick="s56click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />56</asp:TableCell>
                                  <asp:TableCell ID="TableCell57" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s57" ToolTip="RM130" OnClick="s57click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />57</asp:TableCell>
                                  <asp:TableCell ID="TableCell58" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s58" ToolTip="RM130" OnClick="s58click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />58</asp:TableCell>
                                  <asp:TableCell ID="TableCell59" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s59" ToolTip="RM130" OnClick="s59click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />59</asp:TableCell>
                                  <asp:TableCell ID="TableCell60" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s60" ToolTip="RM130" OnClick="s60click" ImageUrl="~/Images/available_seatB_img.gif"
                                                            runat="server" />60</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell61" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s61" ToolTip="RM150" ImageUrl="~/Images/available_seatC_img.gif"
                                                            OnClick="s61click" runat="server" />61</asp:TableCell>
                                  <asp:TableCell ID="TableCell62" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s62" ToolTip="RM150" OnClick="s62click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />62</asp:TableCell>
                                  <asp:TableCell ID="TableCell63" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s63" ToolTip="RM150" OnClick="s63click"  ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />63</asp:TableCell>
                                  <asp:TableCell ID="TableCell64" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s64" ToolTip="RM150" OnClick="s64click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />64</asp:TableCell>
                                  <asp:TableCell ID="Tablecell85" runat="server">&nbsp;</asp:TableCell>
                                  <asp:TableCell ID="Tablecell86" runat="server">&nbsp;</asp:TableCell>
                                  <asp:TableCell ID="TableCell65" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s65" ToolTip="RM150" OnClick="s65click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />65</asp:TableCell>
                                  <asp:TableCell ID="TableCell66" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s66" ToolTip="RM150" OnClick="s66click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />66</asp:TableCell>
                                  <asp:TableCell ID="TableCell67" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s67" ToolTip="RM150" OnClick="s67click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />67</asp:TableCell>
                                  <asp:TableCell ID="TableCell68" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s68" ToolTip="RM150" OnClick="s68click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />68</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell69" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s69" ToolTip="RM150" OnClick="s69click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />69</asp:TableCell>
                                  <asp:TableCell ID="TableCell70" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s70" ToolTip="RM150" OnClick="s70click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />70</asp:TableCell>
                                  <asp:TableCell ID="TableCell71" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s71" ToolTip="RM150"  ImageUrl="~/Images/available_seatC_img.gif"
                                                            OnClick="s71click" runat="server" />71</asp:TableCell>
                                  <asp:TableCell ID="TableCell72" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s72" ToolTip="RM150" OnClick="s72click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />72</asp:TableCell>
                                  <asp:TableCell ID="Tablecell87" runat="server">&nbsp;</asp:TableCell>
                                  <asp:TableCell ID="Tablecell88" runat="server">&nbsp;</asp:TableCell>
                                  <asp:TableCell ID="TableCell73" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s73" ToolTip="RM150" OnClick="s73click"  ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />73</asp:TableCell>
                                  <asp:TableCell ID="TableCell74" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s74" ToolTip="RM150" OnClick="s74click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />74</asp:TableCell>
                                  <asp:TableCell ID="TableCell75" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s75" ToolTip="RM150" OnClick="s75click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />75</asp:TableCell>
                                  <asp:TableCell ID="TableCell76" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s76" ToolTip="RM150" OnClick="s76click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />76</asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                  <asp:TableCell ID="TableCell77" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s77" ToolTip="RM150" OnClick="s77click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />77</asp:TableCell>
                                  <asp:TableCell ID="TableCell78" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s78" ToolTip="RM150" OnClick="s78click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />78</asp:TableCell>
                                  <asp:TableCell ID="TableCell79" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s79" ToolTip="RM150" OnClick="s79click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />79</asp:TableCell>
                                  <asp:TableCell ID="TableCell80" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s80" ToolTip="RM150" OnClick="s80click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />80</asp:TableCell>
                                  <asp:TableCell ID="Tablecell89" runat="server">&nbsp;</asp:TableCell>
                                  <asp:TableCell ID="Tablecell90" runat="server">&nbsp;</asp:TableCell>
                                  <asp:TableCell ID="TableCell81" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s81" ToolTip="RM150" ImageUrl="~/Images/available_seatC_img.gif"
                                                            OnClick="s81click" runat="server" />81</asp:TableCell>
                                  <asp:TableCell ID="TableCell82" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s82" ToolTip="RM150" OnClick="s82click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />82</asp:TableCell>
                                  <asp:TableCell ID="TableCell83" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s83" ToolTip="RM150" OnClick="s83click"  ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />83</asp:TableCell>
                                  <asp:TableCell ID="TableCell84" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s84" ToolTip="RM150" OnClick="s84click" ImageUrl="~/Images/available_seatC_img.gif"
                                                            runat="server" />84</asp:TableCell>
                              </asp:TableRow>
                          </asp:Table>
                          &nbsp;&nbsp;&nbsp;
                          <br />
                          <table class="info-table">
                             
                              <tr>
                                  <td colspan="8">
                                      <asp:Panel ID="Panel2" runat="server" CssClass="stage">
                                          STAGE</asp:Panel>
                                  </td>
                              </tr>
                             
                              <tr class="aft">
                                  <td>
                                      <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/available_seatA_img.gif" />
                                  </td>
                                  <td style="font-size:small;color:white">
                                      <asp:Literal ID="Literal1" runat="server" Text="Band A"></asp:Literal>
                                  </td>
                                  <td>
                                      <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/available_seatB_img.gif" />
                                  </td>
                                  <td style="font-size:small;color:white">
                                      <asp:Literal ID="Literal2" runat="server" Text="Band B"></asp:Literal>
                                  </td>
                                  <td>
                                      <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/available_seatC_img.gif" />
                                  </td>
                                  <td style="font-size:small;color:white">
                                      <asp:Literal ID="Literal3" runat="server" Text="Band C"></asp:Literal>
                                  </td>
                                  <td>
                                      <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/booked_seatABC_img.gif" />
                                  </td>
                                  <td style="font-size:small;color:white">
                                      <asp:Literal ID="Literal4" runat="server" Text="Booked"></asp:Literal>
                                  </td>
                              </tr>
                             
                          </table>
                          </div>
                          <div>
                              &nbsp;<br />
                              </div>
                        
                            
                              </div>
                          <br />
                        
                      </asp:Panel>
                  </ContentTemplate>
              </asp:UpdatePanel>
          </ContentTemplate>
         
      </asp:UpdatePanel>
     <script>
         var limit = 3;
         $('button.single-checkbox').on('change', function (evt) {
             if ($(this).siblings(':enabled').length >= limit) {
                 this.disabled = true;
             }
         });
     </script>
      </form>
    
  </body>
</html>
