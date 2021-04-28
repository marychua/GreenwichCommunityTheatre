<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GreenwichCommunityTheatre.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>
    <script src="jquery.corner.js" type="text/javascript"></script>
    

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <link rel="stylesheet" href="stylelogin.css" />
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".divStyle").corner("round");
        });
</script>
    
    
    <style type="text/css">
      
      
        .auto-style10 {
            box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
      
       
        .auto-style11 {
            position: inherit;
            top: 5px;
            width: 500px;
            bottom: 5px;
            height: 25px;
        }
      
       
        .auto-style12 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            padding: 10px 30px;
            cursor: pointer;
            background: transparent;
            outline: none;
            position: relative;
            color: #999999;
        }
      
       
    </style>
    
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="hero" style="background-color:slateblue">
            <div class="form-box">
                <div class="button-box">

                        <div id="btn"></div>
                         <asp:Button  ID="loginbtn" runat="server" Text="Admin" CssClass="auto-style12"/>
                         <asp:Button  ID="registerbtn" runat="server" Text="User"  CssClass="auto-style12" OnClick="registerbtn_Click"/>
                
           </div>
                
                
                <table align="center" style="text-align: center; vertical-align: top; padding-top: 4px; padding-bottom: 4px; table-layout: inherit; margin-right: 10px; margin-left: 10px;">
                    
                    <tr>                      
                        <td style="position: inherit; top: 5px; width: 500px; height: 50px; bottom: 5px; padding-bottom: 40px;">
                                         
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="username" CssClass="auto-style10" width="210px" height="30px" padding="5px" autocomplete="off"></asp:TextBox> 
                          
                                              
                 
                            <br />
                          
                                              
                 
                        </td>
                    </tr>
                    <tr>
                        <td style="position: inherit; top: 5px; width: 500px; height: 50px; bottom: 5px; padding-bottom: 40px;">
                 
                          <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10" TextMode="Password" placeholder="password" width="210px" height="30px" padding="5px" autocomplete="off" ></asp:TextBox>
                            <br />
                            <br />
                          <input type="checkbox"  onchange="document.getElementById('TextBox2').type = this.checked ? 'text' : 'password'" style="padding: 0px 30% 0px 30%; display: table-caption; text-align: right; position: center;"><span>Show password</span>
                          
                         </td>
                        
                        
                       </tr>
                    <tr>
                        <td style="padding-bottom: 40px;" class="auto-style11">
                                           
                 
                        
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                   
                 
                        
                            <br />
                   
                        <asp:Button ID="Button1" runat="server" Text="login" Height="50px" Width="200px" OnClick="Button1_Click"/>
                
                 
                        
                            <br />
                            <br />
                
                 
                        
                         </td>
                       </tr>
                        
                        
                    
                    </table>
                </div> 
        </div>
         <script>
             var x = document.getElementById("btn");
             var y = document.getElementById("login");
             var z = document.getElementById("register");

             function register() {
                 x.style.left = "-100px";
                 y.style.left = "50px";
             }
             function register() {
                 x.style.right = "100px";
                 y.style.right = "-100px";
             }
      </script>
        </form>
</body>
</html>
