<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="GreenwichCommunityTheatre.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".divStyle").corner("round");
        });
</script>
    <script>
        var nbSlide = $(".slides").length;
        var i = 1;
        function sliderAutoplay() {
            if (i == nbSlide + 1) {
                i = 1;
                $("#button-" + i).prop("checked", true).trigger("click");
            } else {
                $("#button-" + i).prop("checked", true).trigger("click");
            }
            i++;
           
            timeout = setTimeout(sliderAutoplay, 8000);
        }
        sliderAutoplay();
          // AUTOPLAY STOP QUAND ON CHANGE MANUELLEMENT DE SLIDE
        $('#slideshow-wrap input').click(function () {
            var id = $(this).attr("id");
            clearTimeout(timeout);
            //console.log(id.substr(-1));
        });
    </script>
   
    
    <style type="text/css">
        .auto-style11 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: transparent;
            height: 36px;
        }
        .auto-style12 {
            color: #FFFFFF;
            box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            font-size: small;
        }
       .divStyle {
    width: 200px;
    height: 70px;
    margin: 0;
}
        .text{
            color:white;
            margin-left:10%;            
            margin-top:0;
            margin-bottom:7px;                       
            height: 30px;
           -moz-border-radius: 8px;
           border-radius: 8px;
           -webkit-border-radius: 10px;
            border: solid 1px transparent;
            padding: 5px;
            padding-top:2px;
            text-align:center;
            background-color:transparent;
            box-shadow: 0 3px 4px 0 rgb(163, 64, 250);
        }
        .text1{
            color:white;                     
            margin-top:0;
            margin-bottom:7px;                       
            height: 30px;
           -moz-border-radius: 8px;
           border-radius: 8px;
           -webkit-border-radius: 10px;
            border: solid 1px transparent;
            padding: 5px;
            padding-top:2px;
            text-align:center;
            background-color:transparent;
            box-shadow: 0 3px 4px 0 rgb(163, 64, 250);
        }
        .float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	/*background-color:#00ffff;*/
	color:#FFF;
	border-radius:50px;
	text-align:center;
    font-size:25px;
	/*box-shadow: 2px 2px 3px #999;*/
    z-index:100;
    background-image:url(Images/feedback.png);
    background-repeat:no-repeat;
    background-position:center;
}
        .float:hover{
            background-color:rgb(163, 64, 250);
            transition:0.5s ease-in;
            
        }
.my-float{
	margin-top:16px;
}
    </style>
   
    
</head>
    <form id="form1" runat="server">
     <header>
            <img class="logo" src="Images/logo.png" alt="logo" />
        
            <nav>
                <ul class="nav_bar">
                   
                         <li><asp:Label ID="usertxt" runat="server" Text="Label"></asp:Label> </li>  
                            <li> <asp:Button runat="server" Text="Login" ID="loginbtn" OnClick="loginbtn_Click1" CssClass="cta"  /></li>
                            <li><a href="Main.aspx">Home</a></li>
                            <li><a href="MyAccount.aspx">My Account</a></li>                    
                            <li><a href="AddtoCart.aspx">Cart</a></li>
                         <li><asp:Button runat="server" Text="Logout" ID="logoutbtn" OnClick="logoutbtn_Click" CssClass="cta" /></li>
                    
                </ul>
            </nav>
        
            <%--<a class= "cta" href="#"><button>Contact</button></a>--%>

         

        </header>

<body>

   <div class="conteneur">
            <div id="sliderAccueil">
                    <div id="slideshow-wrap">
                        <input type="radio" id="button-1" name="controls" checked="checked"/>
                        <label for="button-1"></label>
                        <input type="radio" id="button-2" name="controls"/>
                        <label for="button-2"></label>
                        <input type="radio" id="button-3" name="controls"/>
                        <label for="button-3"></label>
                      <input type="radio" id="button-4" name="controls"/>
                      <label for="button-4"></label>
                        
                        <label for="button-1" class="arrows" id="arrow-1">></label>
                        <label for="button-2" class="arrows" id="arrow-2">></label>
                        <label for="button-3" class="arrows" id="arrow-3">></label>
                       <label for="button-4" class="arrows" id="arrow-4">></label>
                        
                        <div id="slideshow-inner">
                            <ul>
                                <li >
                                    <div id="slide1" class="slides"> 
                                    </div>
                                    <div class="description">
                                        <div class="description-text">
                                            <p><span></span> 12-12-20</p>
                                            <h2>The Phantom of Opera</h2> 
                                            <p>See the legendary show Phantom of the Opera at its London West End home, Her Majesty’s Theatre. Enter the world of the Paris opera house and its mysterious masked figure, set to Andrew Lloyd Webber’s mesmerizing score.</p>
                                            <asp:Button runat="server" Text="View Details" ID="Button2" OnClick="logoutbtn_Click" CssClass="bannerbtn"/>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div id="slide2" class="slides"> 
                                    </div>
                                    <div class="description">
                                        <div class="description-text">
                                            <p><span></span> 12-12-20</p>
                                            <h2>Madagascar Live Musical</h2>
                                            <p>See the legendary show Madagascar at its London West End home, Her Majesty’s Theatre. Book Now!</p>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div id="slide3" class="slides">
                                      
                                    </div>
                                    <div class="description">
                                        <div class="description-text">
                                            <p><span></span>12-12-20</p>
                                            <h2>The Cats</h2>
                                            <p>See the legendary show The Cats at its London West End home, Her Majesty’s Theatre. Book Now!
                                            </p>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div id="slide4" class="slides"> 
                                    </div>
                                    <div class="description">
                                        <div class="description-text">
                                            <p><span></span>le 12-12-20</p>
                                            <h2>Enjoy 25% off</h2>
                                            <p> Children and Old Age Pensioners are given 25% reduction</p>
                                        </div>
                                    </div>
                                </li>    
                            </ul>
                        </div>
                    </div>
           </div>
        </div>
        <br />
    <br />
        <div style="position: center">
         
           <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" CssClass="text" Placeholder="Search" Width="200px"></asp:TextBox>
             <asp:LinkButton ID="LinkButton2" runat="server" CssClass="text1" OnClick="LinkButton2_Click">Comedy</asp:LinkButton>
                   <asp:LinkButton ID="LinkButton3" runat="server" CssClass="text1" OnClick="LinkButton3_Click">Musical</asp:LinkButton>   
                   <asp:LinkButton ID="LinkButton5" runat="server" CssClass="text1" OnClick="LinkButton5_Click">Tragedy</asp:LinkButton> 
                   <asp:LinkButton ID="LinkButton4" runat="server" CssClass="text1" OnClick="LinkButton4_Click">View All</asp:LinkButton>
                   
             
            <div >
                  
               
          
            </div>
            <div class="auto-style3">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" DataSourceID="SqlDataSource1" Height="300px" RepeatColumns="3" RepeatDirection="Horizontal" Width="1080px" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="perflist">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="perflist">
                                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("PerfImage") %>' Width="290px" CssClass="auto-style8" />
                            </td>
                        </tr>
                        <tr>
                            <td class="perflist">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("PerfName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11" aria-dropeffect="none">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text='<%# Eval("PerfDate") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="perflist">
                                <asp:Button ID="Button1" runat="server" Text="View Details" CssClass="auto-style9" CommandArgument='<%# Eval("perfName")%>' CommandName="viewdetails" BorderStyle="None" Width="202px" Height="46px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            </div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="SELECT [PerfName], [PerfImage], [PerfDate] FROM [Performance_tbl] ORDER BY PerfId ASC"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="SELECT * FROM [Performance_tbl] WHERE ([PerfName] LIKE '%' + @PerfName + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="PerfName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" SelectCommand="SELECT * FROM [Performance_tbl] WHERE ([Category] = @Category)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Category" QueryStringField="cat" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:LinkButton CssClass="float"  ID="LinkButton1" ToolTip="Write Feedback" runat="server" OnClick="LinkButton1_Click">
                </asp:LinkButton>
            
        </div>
      
    </form>

</body>
</html>
