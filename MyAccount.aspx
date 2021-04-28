<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="GreenwichCommunityTheatre.MyAccount" %>

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
        .passtbl{
            margin-left:20%;
            margin-right:20%;
            width:800px;
            height:400px;
            padding:10px;
            background-color:white;
            border-radius:25px;

        }
       .in{
           margin-left:25%;
           margin-right:20%;
           padding:10px;
           margin-top:10%;
       }
        .box {
    -moz-border-radius: 8px;
    border-radius: 8px;
    -webkit-border-radius: 8px;
    border: solid 1px black;
    padding: 5px;
    
}
input {
    -moz-border-radius: 15px;
    border-radius: 15px;
}
.btn{
     color: #FFFFFF;
    background-image: linear-gradient(to right top, #ffffff, #f3f2f7, #e8e4f0, #ddd7e7, #d3c9df, #cfc1dc, #cbb9d9, #c8b1d6, #c9acd8, #caa8d9, #cba3db, #cc9edc);
    border: none;
    border-radius: 50px;
    height: 40px;
    cursor: pointer;
    transition: all 0.3s ease 0s;
    box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-style :None;
    width:150px;
    margin-left:35%;
    margin-top:15%;
  
}
      </style>
    
    </head>
    <body>
    <form id="form1" runat="server">
     <header>
            <img class="logo" src="Images/logo.png" alt="logo" />
            <nav>
                <ul class="nav_bar">
                  <li><asp:Label ID="usertxt" runat="server" Text="Label"></asp:Label> </li>  
                         <li> <asp:Button runat="server" Text="Login" ID="loginbtn"  CssClass="cta"  /></li>
                            <li><a href="Main.aspx">Home</a></li>
                            <li><a href="MyAccount.aspx">Account</a></li>                    
                            <li><a href="Main.aspx">Cart</a></li>
                         <li><asp:Button runat="server" Text="Logout" ID="logoutbtn"  CssClass="cta" /></li>                         
                    
                </ul>
            </nav>
           
        </header>
    <div class="passtbl">
        <h2>Change Password</h2><br />
        <div class="in">
            
        <table>
            <tr>
                <td>Old password</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" width="200px" Height="35px" autocomplete="off"></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td>New Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" width="200px" Height="35px" autocomplete="off"></asp:TextBox>
                    </td>
            </tr>
             <tr>
                <td>Re-Enter</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" width="200px" Height="35px" autocomplete="off" ></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="btn"/>

                    <asp:Label ID="lbl" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
            </div>
    </div>

    </form>
</body>
        
</html>
