<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReply.aspx.cs" Inherits="GreenwichCommunityTheatre.AdminReply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />     
    <style type="text/css">

        body{

             height: 100%;
             width: 90%;   
            background-color:#aa48bd;
            
            position: absolute;
            font-family:sans-serif;
        }
        
        table {
            font-size: 80%; table-layout: fixed; width: 100%; font: sans-serif;
                 border-collapse: separate; border-spacing: 2px;letter-spacing: 0.05em;
                 margin-top:15%;
           
        }
        table td, th {                
                padding: 0.5em;
                position: relative;
                text-align: left;
            }
        .form-box {
            width: 500px;
            height: 480px;
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
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" form-box">

            <table class="auto-style1" align="center">
                <tr>
                    <td>Review ID</td>
                    <td>
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Registered Date and Time</td>
                    <td>
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Review Details</td>
                    <td>
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Reply</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="44px" TextMode="MultiLine" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">View All Feedback</asp:HyperLink>
            
        </div>
    </form>
</body>
</html>
