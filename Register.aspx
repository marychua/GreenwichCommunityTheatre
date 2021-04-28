<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GreenwichCommunityTheatre.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <%-- <link rel="stylesheet" href="style_register.css"/>--%>
   <style type="text/css">
       *{
    padding:0;
    margin:0;
    font-family:Calibri;
    font-size:medium;
    
}
.hero {
    height: 140%;
    width: 100%;    
    background-image: linear-gradient(to bottom, #121012, #181119, #1d121f, #211326, #25132d, #2f163b, #38184a, #421a59, #561d74, #6c1e8f, #831eac, #9c19c8);
    background-position: center;
    background-size: cover;
    position: absolute;
    
}

.form-box {
    width: 500px;
    height: 600px;
    position: relative;
    margin: 3% auto;
    background-color:white ;
    padding: 5px;
    box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    z-index: 1;
    -moz-border-radius: 10px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}
.button-box {
    width: 220px;
    margin: 35px auto;
    position: relative;
    box-shadow: 0 0 20px 9px #cfcfcf;
    border-radius: 30px;
   
}
.toggle-btn{
    padding: 10px 30px;
    cursor:pointer;
    background:transparent;
    border:0;
    outline:none;
    position:relative;
}
#btn {
    top: 0;
    right: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background-image: linear-gradient(to right, #181119, #33173e, #4d1967, #661996, #7c19c8);
    border-radius: 30px;
    transition: .5s;
    
    
}


.logininputbox {
    height:300px;
    width:430px;
    position: relative;
    margin: 7% auto;
   
    padding: 10px;
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



.divStyle {
    width: 200px;
    height: 70px;
    margin: 0;
}

.txtboxStyle {
   
    
    
}
input::-webkit-input-placeholder { /* WebKit browsers */
    color: grey;
    text-align: center;
   
}


.loginbtn {
    width: 30%;
    height: 20%;
    margin-left: 35%;
    margin-right: 15%;
    margin-right: 15%;margin-top:7%;
    


}
.styletbl{
    margin-right:10%;
    margin-left:10%;
    padding:10px;
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
  .styletable{
                 font-size: 70%;  width: 100%; font: sans-serif;
                  border-spacing: 1px;letter-spacing: 0.05em; margin-left:10%;margin-right:15%;
            }
             .styletable td, th {                
                padding: 0.3em;
                position: relative;
                text-align: left;
            }
   
       .auto-style9 {
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
    <form id="form1" runat="server">
<body>
   

      <div class="hero" >
            <div class="form-box">
                <div class="button-box">

                        <div id="btn"></div>
                         <asp:Button OnClientClick="login()" ID="loginbtn" runat="server" Text="Login" CssClass="auto-style9" OnClick="loginbtn_Click"/>
                         <asp:Button OnClientClick="register()" ID="registerbtn" runat="server" Text="Register"  CssClass="auto-style9"   />
                
           </div>
                

                <table class="styletable">
                    <tr>
                        <td >
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" width="200px" height="25px" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"  width="200px" height="25px" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" width="200px" height="25px" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label4" runat="server" Text="Gender" ></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label5" runat="server" Text="Phone No."></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" width="200px" height="25px" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" width="200px" height="25px" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" width="200px" height="25px" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" width="200px" height="25px" autocomplete="off"></asp:TextBox><br />
                            <asp:Label ID="Label11" runat="server" Text="" CssClass="auto-style2"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label> </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" width="200px" height="25px"></asp:TextBox>
                            <br />
                            <input type="checkbox" onchange="document.getElementById('TextBox9').type = this.checked ? 'text' : 'password'">
                <span class="auto-style2">Show password</span><br />
                            <asp:Label ID="Label12" runat="server" Text="" CssClass="auto-style2"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" width="200px" height="25px" ></asp:TextBox></td>
                    </tr>

                </table>
                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="loginbtn" OnClick="Button1_Click" width="200px" height="35px" /><br />
                <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                
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
