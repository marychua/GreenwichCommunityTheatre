<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GreenwichCommunityTheatre.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        @import url(https://fonts.googleapis.com/css?family=Lato:400,300,700);
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: lato;
        }
     
        h2 {
            margin-bottom: 0px;
            margin-top: 25px;
            text-align: center;
            font-weight: 200;
            font-size: 19px;
            font-size: 1.2rem;
        }
        .container {
            height: 630px;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            background: -webkit-linear-gradient(#c5e5e5, #ccddf9);
            background: linear-gradient(#c9e5e9,#ccddf9);
        }
        .dropdown-select.visible {
            display: block;
        }
        .dropdown {
            position: relative;
        }
        ul {
            margin: 0;
            padding: 0;
        }
            ul li {
                list-style: none;
                padding-left: 10px;
                cursor: pointer;
            }
                ul li:hover {
                    background: rgba(255,255,255,0.1);
                }
        .dropdown-select {
            position: absolute;
            background: #77aaee;
            text-align: left;
            box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.1);
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px;
            width: 90%;
            left: 2px;
            line-height: 2em;
            margin-top: 2px;
            box-sizing: border-box;
        }
        .thin {
            font-weight: 400;
        }
        .small {
            font-size: 12px;
            font-size: .8rem;
        }
        .half-input-table {
            border-collapse: collapse;
            width: 100%;
        }
            .half-input-table td:first-of-type {
                border-right: 10px solid #4488dd;
                width: 50%;
            }
        .window {
            height: 540px;
            width: 800px;
            background: #fff;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            box-shadow: 0px 15px 50px 10px rgba(0, 0, 0, 0.2);
            border-radius: 30px;
            z-index: 10;
        }
        .order-info {
            height: 100%;
            width: 50%;
            padding-left: 25px;
            padding-right: 25px;
            box-sizing: border-box;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            position: relative;
        }
        .price {
            bottom: 0px;
            position: absolute;
            right: 0px;
            color: #4488dd;
        }
        .order-table td:first-of-type {
            width: 25%;
        }
        .order-table {
            position: relative;
        }
        .line {
            height: 1px;
            width: 100%;
            margin-top: 10px;
            margin-bottom: 10px;
            background: #ddd;
        }
        .order-table td:last-of-type {
            vertical-align: top;
            padding-left: 25px;
        }
        .order-info-content {
            table-layout: fixed;
        }

        .full-width {
            width: 100%;
        }
        .pay-btn {
            border: none;
            background: #22b877;
            line-height: 2em;
            border-radius: 10px;
            font-size: 19px;
            font-size: 1.2rem;
            color: #fff;
            cursor: pointer;
            position: absolute;
            bottom: 25px;
            width: calc(100% - 50px);
            -webkit-transition: all .2s ease;
            transition: all .2s ease;
        }
            .pay-btn:hover {
                background: #22a877;
                color: #eee;
                -webkit-transition: all .2s ease;
                transition: all .2s ease;
            }

        .total {
            margin-top: 25px;
            font-size: 20px;
            font-size: 1.3rem;
            position: absolute;
            bottom: 30px;
            right: 27px;
            left: 35px;
        }
        .dense {
            line-height: 1.2em;
            font-size: 16px;
            font-size: 1rem;
        }
        .input-field {
            background: rgba(255,255,255,0.1);
            margin-bottom: 10px;
            margin-top: 3px;
            line-height: 1.5em;
            font-size: 20px;
            font-size: 1.3rem;
            border: none;
            padding: 5px 10px 5px 10px;
            color: #fff;
            box-sizing: border-box;
            width: 100%;
            margin-left: auto;
            margin-right: auto;
        }
        .credit-info {
            background: #4488dd;
            height: 100%;
            width: 50%;
            color: #eee;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            font-size: 14px;
            font-size: .9rem;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            box-sizing: border-box;
            padding-left: 25px;
            padding-right: 25px;
            border-top-right-radius: 30px;
            border-bottom-right-radius: 30px;
            position: relative;
        }
        .dropdown-btn {
            background: rgba(255,255,255,0.1);
            width: 100%;
            border-radius: 5px;
            text-align: center;
            line-height: 1.5em;
            cursor: pointer;
            position: relative;
            -webkit-transition: background .2s ease;
            transition: background .2s ease;
        }
            .dropdown-btn:after {
                content: '\25BE';
                right: 8px;
                position: absolute;
            }
            .dropdown-btn:hover {
                background: rgba(255,255,255,0.2);
                -webkit-transition: background .2s ease;
                transition: background .2s ease;
            }
        .dropdown-select {
            display: none;
        }
        .credit-card-image {
            display: block;
            max-height: 80px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 35px;
            margin-bottom: 15px;
        }
        .credit-info-content {
            margin-top: 25px;
            -webkit-flex-flow: column;
            -ms-flex-flow: column;
            flex-flow: column;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            width: 100%;
        }
        @media (max-width: 600px) {
            .window {
                width: 100%;
                height: 100%;
                display: block;
                border-radius: 0px;
            }

            .order-info {
                width: 100%;
                height: auto;
                padding-bottom: 100px;
                border-radius: 0px;
            }

            .credit-info {
                width: 100%;
                height: auto;
                padding-bottom: 100px;
                border-radius: 0px;
            }

            .pay-btn {
                border-radius: 0px;
            }
        }
        .box{
            display: inline-block;
            vertical-align:middle;
            margin-left:37px;
           
          
        }
        .inside {
             display: inline-block;
             vertical-align:middle;
             margin-right: 7%;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
  <div class="window">
    <div class="order-info">
      <div class="order-info-content">
        <h2>Order Summary</h2>
              <div class="line">
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </div>
        <table class="order-table">
          <tbody>
              <asp:Label ID="lblname" runat="server" Text="Label" Visible="False"></asp:Label>
              <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>
              <asp:Label ID="lblcard" runat="server" Text="Label" Visible="False"></asp:Label>
          </tbody>
        
        </table>
        <div class="line"></div>
        <div class="total">
          <span style="float:left;">
            <div class="thin dense">Discount</div>
            <div class="thin dense">Shipping</div>
            TOTAL
          </span>
          <span style="float:right; text-align:right;">
            <div class="thin dense">
                <asp:Label ID="lbldiscount" runat="server" Text="RM"></asp:Label></div>
            <div class="thin dense">
                <asp:Label ID="lblshipping" runat="server" Text="RM"></asp:Label>
            </div>
              <asp:Label ID="lbltotal" runat="server" Text="RM120"></asp:Label>
          </span>
        </div>
</div>
</div>
        <div class="credit-info">
          <div class="credit-info-content">
            <table class="half-input-table">
                <div class="box">                   
              
                 <asp:RadioButton ID="RadioButton1" runat="server" GroupName="payment" Text= "<img src='Images/mastercard.png' width=55px height=55px vertical-align:middle>" CssClass="inside" />
                 <asp:RadioButton ID="RadioButton2" runat="server" GroupName="payment" Text= "<img src='Images/p1.png' width=55px height=55px vertical-align:middle>" CssClass="inside" />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="payment" Text= "<img src='Images/v1.png' width=55px height=55px vertical-align:middle>" CssClass="inside" />
                 
                  
             </div>
                    </div>
               
            </table>
          <img src="https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png" height="80" class="credit-card-image" id="credit-card-image"></img>
            Card Number           
              <asp:TextBox ID="txtcardno" runat="server" CssClass="input-field"  MaxLength="16" autocomplete="off"></asp:TextBox>
            Card Holder
             <asp:TextBox ID="txtcardholder" runat="server" CssClass="input-field" autocomplete="off"></asp:TextBox>
            <table class="half-input-table">
              <tr>
                <td> Valid Thru
                    <asp:TextBox ID="txtexpiry" runat="server" CssClass="input-field" placeholder="eg 12/23" autocomplete="off"></asp:TextBox>
                </td>
                <td>CVC
                    <asp:TextBox ID="txtcvc" runat="server" CssClass="input-field" placeholder="eg 123" MaxLength="3" autocomplete="off"></asp:TextBox>
                </td>
              </tr>
            </table>
              <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="pay-btn" OnClick="Button1_Click"/>
            <%--<button class="pay-btn">Checkout</button>--%>

          </div>

        </div>
      </div>
    </div>


    </form>
</body>
</html>
