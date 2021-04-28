<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="GreenwichCommunityTheatre.Verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
     
    <style type="text/css">
        body {
             background-image: linear-gradient(to bottom, #121012, #181119, #1d121f, #211326, #25132d, #2f163b, #38184a, #421a59, #561d74, #6c1e8f, #831eac, #9c19c8);
            /*background-image: linear-gradient(to right top, #ffffff, #f3f2f7, #e8e4f0, #ddd7e7, #d3c9df, #cfc1dc, #cbb9d9, #c8b1d6, #c9acd8, #caa8d9, #cba3db, #cc9edc);*/
            font-family: 'Muli', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 160%;
            margin: 0;
            
        }
        .bannerbtn {
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
  



        
}

.container {
	background-color:white;
	/*border: 3px solid #000;*/
	border-radius: 10px;
    margin-top:10px;
	padding: 30px;
	max-width: 1000px;
	 text-align: center;
    box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
 
}

.code-container {
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 40px 0;
}

.code {
    background: rgba(255,255,255,0.1);    
	border-radius: 5px;
	border: 1px solid #eee;
	font-size: 50px;
	font-weight: 300;
	margin: 1%;    
	height: 100px;
	width: 80px;
	text-align: center;
    -moz-appearance:textfield; /* Firefox */
}

.code:valid {
	border-color: #3498db;
	box-shadow: 0 10px 10px -5px rgba(0, 0, 0, 0.25);
}

.code::-webkit-outer-spin-button,
.code::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;

}
 h2{
                 font: bold 100% sans-serif; letter-spacing: 0.3em; text-align: center; text-transform: uppercase; color:black;
             }
  p{
                 font: lighter 100% sans-serif; text-align: center; color:black; letter-spacing: 0.1em;
             }
        </style>
</head>
<body style="height: 600px">
    <form id="form1" runat="server">
        
        <div class="container">
            <h2>Verify your account</h2>
	        <p>We emailed you the six digit code to <br/>&nbsp;
&nbsp;<asp:Label ID="txtEmail" runat="server"></asp:Label>
                .Enter the code below to confirm your email address.</p><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">resend</asp:LinkButton>
            <div class="code-container">
            
                <asp:TextBox ID="TextBox1" runat="server" CssClass="code" placeholder="0" min="0" max="9" autocomplete="off"></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="code" placeholder="0" min="0" max="9" autocomplete="off"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="code" placeholder="0" min="0" max="9" autocomplete="off"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="code" placeholder="0" min="0" max="9" autocomplete="off"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="code" placeholder="0" min="0" max="9" autocomplete="off"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="code" placeholder="0" min="0" max="9" autocomplete="off"></asp:TextBox>
	</div>
            
            
                <br />
                
                <br />
                &nbsp;<asp:Button ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click" CssClass="bannerbtn" />
                <br />
                
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
           
        </div>
        <script type="text/javascript">

            const codes = document.querySelectorAll(".code");

            codes[0].focus();

            // Initially focus first input         

            codes.forEach((code, idx) => {
                code.addEventListener('keydown', (e) => {
                    if (e.key >= 0 && e.key <= 9) {
                        setTimeout(() => {
                            codes[idx + 1].focus();
                        }, 10);
                    } else if (e.key === 'Backspace') {
                        setTimeout(() => {
                            codes[idx - 1].focus();
                        }, 10);
                    }
                });
            });


    </script>
    </form>
</body>
</html>
