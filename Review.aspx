<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="GreenwichCommunityTheatre.Review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <style type="text/css">
  * {
    margin: 0;
    padding: 0;
}
html {
  box-sizing: border-box;
}
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: inherit;
}


/* BODY */
body {
    /*position: absolute;*/
    color: #666;
    font: 16px/26px "Raleway", sans-serif;
    text-align: center;
    height: 100%;
    background-image: linear-gradient(to bottom, #121012, #181119, #1d121f, #211326, #25132d, #2f163b, #38184a, #421a59, #561d74, #6c1e8f, #831eac, #9c19c8);
    /*overflow:hidden;*/
}




/* USER (FORM WRAPPER) */
.user {
    position: relative;
    z-index: 0;
    float: none;
    margin: 0 auto;
    padding-top: 40px;
    width: 100%;
    height: 100vh;
    overflow: auto;
    background: -moz-linear-gradient(48deg, rgba(42,46,54,1) 0%, rgba(97,107,125,1) 100%);
    background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, rgba(42,46,54,1)), color-stop(100%, rgba(97,107,125,1)));
    background: -webkit-linear-gradient(48deg, rgba(42,46,54,1) 0%, rgba(97,107,125,1) 100%);
    background: linear-gradient(42deg, rgba(42,46,54,1) 0%, rgba(97,107,125,1) 100%);
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-radius: 0;
    border-top: 1px solid #4FC1B7;
}




/* CONTENT */
.content {
    position: fixed;
    z-index: 1;
    float: none;
    margin: 0 auto;
    width: 100%;
    height: 40px;
    background-image: linear-gradient(to bottom, #a405d1, #a623ce, #a733cb, #a93fc9, #aa4ac6);
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    overflow: hidden;
}



.three {
   margin-top:20px;
    padding: 10px;
    border-radius: 10px 0 0 10px;
}
h2 {
    margin-top:20px;
    text-align: center;
    font-size: 2.5em;
    color: #fff;
    line-height: .7em;
    font: bold 100% sans-serif; letter-spacing: 0.3em; text-align: center; text-transform: uppercase;
            
}
font{
   
    margin-top:10px;
    text-align: center;
    font-size: 1.5em;
    color: #fff;
    line-height: .7em;
    font: bold 100% sans-serif; letter-spacing: 0.3em; text-align: left; 
            
}




/* FORM ELEMENTS */
input {
    font: 16px/26px "Raleway", sans-serif;
}
    /* WRAP */
    .wrap {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        width: 600px;
        height: 500px;
        margin: auto;
        border-radius: 10px;
    }
    
  
    
    /* CONTENT */
    .content, .content.full {
        position: relative;
        float: left;
        width: 50%;
        height: 500px;
        -webkit-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        -moz-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        border-radius: 10px 0 0 10px;
    }
  
    /* USER (FORM WRAPPER) */
    .user {
        padding-top: 0;
        float: right;
        width: 50%;
        height: 500px;
        -webkit-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        -moz-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        border-radius: 0 10px 10px 0;
        border: 0;
    }
    .user .actions {
        margin: 0;
        text-align: right;
    }
    /* FORM ELEMENTS */
    .form-wrap {
        margin: 3em auto 0;
    }
    .form-wrap .tabs-content {
        padding: 1.5em 2.5em;
    }
    .tabs-content p {
        position: relative;
    }

/* LARGE VIEWPORT */
        @media only screen and (min-width: 60em) {
            /* WRAP */
            .wrap {
                width: 900px;
                height: 550px;
            }
            /* CONTENT */
            .content, .content.full {
                height: 550px;
            }

            .terms, .recovery {
                height: 490px;
            }

            /* USER (FORM WRAPPER) */
            .user {
                height: 550px;
            }

            .form-wrap {
                margin: 5em auto 0;
            }

                .form-wrap .tabs-content {
                    padding: 1.5em 4.9em;
                }
        }
          /*Star Rating*/
        .star-rating {
            display: flex;
            flex-direction: row-reverse;
            margin-left:20%;
             margin-right:30%;
        }

            .star-rating input {
                display: none;
            }

            .star-rating label {
                display: block;
                cursor: pointer;
                width: 60px;
            }

                .star-rating label:before {
                    content: '\f005';
                    font-family: fontAwesome;
                    position: relative;
                    display: block;
                    font-size: 50px;
                    color: #383D41;
                }

                .star-rating label:after {
                    content: '\f005';
                    font-family: fontAwesome;
                    display: block;
                    font-size: 50px;
                    color: #8e44b1;
                    opacity: 0;
                    transition: .5s;
                    text-shadow: 0 2px 5px rgba(0,0,0,.5);
                    position: relative;
                    margin-top: -100%;
                    padding-bottom: 20px;
                }

                .star-rating label:hover:after,
                .star-rating label:hover ~ label:after,
                .star-rating input:checked ~ label:after {
                    opacity: 1;
                }
 .performance-rating {
            padding: 10px 30px;
        }
 .star-rating label {
                width: 30px;
            }

                .star-rating label:before {
                     padding-right: 10px ;
                    font-size: 30px;
                }

                .star-rating label:after {
                     padding-right: 20px;
                    font-size: 30px;
                }
                   .textarea {
            margin: 0px;
            width: 100%;
            height: 150px;
        }
                    
    /* ARROW */
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
   .publish {
           color:gray;
            margin: 8px 8px 8px 0px;
            font-family: Roboto,sans-serif;            
            font-size: 14px;
             background-color: rgba(0, 0, 0, 0.19);
             border: none;
             border-radius: 50px;
            padding: 10px 25px;
            cursor: pointer;
            display: inline-block;   
            text-align: center;           
            box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);                    
            transition: 0.3s;
            text-decoration: none;
        }
     .publish:hover {
                opacity: 1;
                background-color:#181119;
            }

        .tablestyle{
            padding:20px;
            font-size:medium;
            text-align:left;
            margin-bottom: 10px;
            margin-top: 3px;
        }
        h4{
           margin: 10px 10px 10px 0px;
           color:rgba(42,46,54,1);
        }
        .auto-style1 {
            background-color: #CC66FF;
        }
    </style>
   
</head>
<body style="height: 637px">
    <form id="form1" runat="server">
      
            <div class="wrap">              
                <div class="content">                      
                    <div class="three">
                        <h2>ADMIN FEEDBACK</h2>   <br />               
                              <%--<div style="padding-top:20px">  </div>--%>
                         <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"  placeholder="Enter your ID here"></asp:TextBox> <br />
                         <asp:Button ID="Button2" runat="server" Text="Check status" OnClick="Button2_Click" CssClass="publish" />
                                    <div style="margin-left:10%; margin-right:10%;padding:10px; color:white; text-align:left">
                                    <table style="padding:10px">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" ></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td> <asp:Label ID="Label3" runat="server"></asp:Label> </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <asp:Label ID="Label4" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <asp:Label ID="Label5" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                       
                                    </table>
                                 <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" >
                                      <asp:Label ID="Label6" runat="server"></asp:Label>
                                </asp:Panel>                     
                        </div>
                        
                        </div>
                        
                    
                </div>
                <!-- LOGIN FORM -->
                <div class="user">
                    <div class="three">
                        <h2>RATE & REVIEW</h2>
                     <div style="padding:10px;text-align:match-parent">
                   	
                        <div class="performance-rating">
                            <h4 >Rate your overall experience </h4>
                        <div class="star-rating">
                            <input type="radio" name="star" id="star1" /><label for="star1"></label>
                            <input type="radio" name="star" id="star2" /><label for="star2"></label>
                            <input type="radio" name="star" id="star3" /><label for="star3"></label>
                            <input type="radio" name="star" id="star4" /><label for="star4"></label>
                            <input type="radio" name="star" id="star5" /><label for="star5"></label>
                        </div>
                           
                                                				
                             <asp:TextBox ID="TextBox1" runat="server"  placeholder="Name" CssClass="input-field" autocomplete="off"></asp:TextBox> <br />
                             <asp:TextBox ID="TextBox2" runat="server"    placeholder="Feedback" CssClass="input-field" TextMode="MultiLine" Height="50px" autocomplete="off"></asp:TextBox><br />
                    	     <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="publish" /> 
                            <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" CssClass="publish" /> 
                                </div>
                            </div>
                         <asp:Label ID="Label1" runat="server"></asp:Label> <br /> 
                         <asp:Label ID="Label7" runat="server" CssClass="input-field"></asp:Label>
                         </div>
                                    
                  <br />
            				
                    				
                    			</div>
                    			
                    	</div>

        
      
                        	        



           
    </form>
</body>
</html>
