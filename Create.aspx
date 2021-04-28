<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="GreenwichCommunityTheatre.Create" %>

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
         .tablestyle{
             margin-right:10%;
             margin-left:35%;
             width:430px;
             height:200px;
         }
         .button {
             padding: 9px;
             background-color: rgba(255,255,255,0.1);
             border: none;
             border-radius: 50px;
             cursor: pointer;
             transition: all 0.3s ease 0s;
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


         .auto-style1 {
             text-align: center;
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
     
         <div class="page" style="height=500px">
            <div style="margin-bottom:10%;">
                 <h2 class="auto-style1">Add new Staff</h2>
          
             <table class="tablestyle">
                
                 <tr>
                     <td>Username

                     </td>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>Password

                     </td>
                     <td>
                         <asp:TextBox ID="TextBox2" runat="server"  CssClass="input-field"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Position</td>
                     <td>
                         <asp:TextBox ID="TextBox3" runat="server"  CssClass="input-field"></asp:TextBox>
                     </td>
                 </tr>
                  <tr >
                    
                     <td colspan="2">
                         <asp:Button ID="Button1" CssClass="button" runat="server" Text="Create" OnClick="Button1_Click" />
                         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     </td>
                      
                 </tr>
             </table>
                 </div>
          </div>
    </form>
</body>
</html>
