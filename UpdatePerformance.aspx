<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePerformance.aspx.cs" Inherits="GreenwichCommunityTheatre.UpdatePerformance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="style_admin.css" />
    <script src="js/jsDatepicker/bootstrap.js"></script>
    <%--<script src="js/jsDatepicker/jquery-1.10.2.js"></script>--%>
    <link href="js/jsDatepicker/jquery-ui.css" rel="stylesheet" />
    <script src="js/jsDatepicker/jquery-ui.js"></script>
   <script>
       $(function () {
           var $gv = $("table[id$=GridView1]");
           var $rows = $("> tbody > tr:not(:has(th, table))", $gv);
           var $inputs = $(".myDatePickerClass", $rows);

           $rows.css("background-color", "yellow");

           $inputs.datepicker();
       });
</script>
       
    <style type="text/css">
       
       
        .auto-style7 {
            
          font-size: small;
           
        }
        .auto-style8 {
            height: 400px;
             width: 95%;
            overflow: scroll;
             margin-left:10px;
            margin-right:10px;
        }
        .auto-style9 {
            color: #000000;                        
            cursor: pointer;
            
  
        }
    </style>
    
</head>
     <form id="form1" runat="server">
         <header>
            <img class="logo" src="images/logo.png" alt="logo" />
            <nav>
                <ul class="nav_bar">
                     
                    <li><a href="Admin.aspx">Home</a></li>
                    <li><a href="UpdatePerformance.aspx">Add</a></li>
                    <li><a href="Report.aspx">Report</a></li>                   
                    <li><a href="Main.aspx">Logout</a></li>
                    
                </ul>
            </nav>
           
        </header>
<body>
    
      
    <div class="page">
        <div class="auto-style8">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main.aspx">View All Performance</asp:HyperLink>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="1" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True" CssClass="auto-style7" ForeColor="Black" GridLines="Horizontal" Height="500px" Width="1000px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                <Columns>
                    <asp:TemplateField HeaderText="ID" SortExpression="PerfId">
                        <EditItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("PerfId") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Width="40px"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("PerfId") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" width="20px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Performance">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("PerfName") %>' Width="110px"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Width="115px"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("PerfName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Show Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("PerfDate") %>' Width="110px" TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox13" runat="server" Width="111px"  CssClass="myDatePickerClass" TextMode="Date" ></asp:TextBox>
                            
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("PerfDate") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Show Time">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("PerfTime") %>' Width="100px"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox14" runat="server" Width="100px" TextMode="Time"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("PerfTime") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Poster">
                        <EditItemTemplate>
                            
                            <asp:FileUpload ID="FileUpload3" runat="server" Height="22px" Width="179px" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="FileUpload2" runat="server" Width="171px" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("PerfImage") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Eval("Category") %>' Width="100px"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox15" runat="server" Width="97px"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Eval("Description") %>' TextMode="MultiLine" ></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" Width="290px" Height="100px"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Justify" Width="800px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Operation">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update" CssClass="auto-style9">Update</asp:LinkButton>
                            <span class="auto-style9">&nbsp;&nbsp; </span>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" CssClass="auto-style9">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" CssClass="auto-style9">Insert</asp:LinkButton>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CssClass="auto-style9">Edit</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" CssClass="auto-style9">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#333333" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />               
                
                <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PageButtonCount="4" Position="Top" PreviousPageText="Next" />
                
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GCTConnectionString %>" DeleteCommand="DELETE FROM [Performance_tbl] WHERE [PerfName] = @PerfName" InsertCommand="INSERT INTO [Performance_tbl] ([PerfName], [PerfDate], [PerfTime], [PerfImage], [Category], [Description]) VALUES (@PerfName, @PerfDate, @PerfTime, @PerfImage, @Category, @Description)" SelectCommand="SELECT * FROM [Performance_tbl]" UpdateCommand="UPDATE [Performance_tbl] SET [PerfId] = @PerfId, [PerfDate] = @PerfDate, [PerfTime] = @PerfTime, [PerfImage] = @PerfImage, [Category] = @Category, [Description] = @Description WHERE [PerfName] = @PerfName">
                <DeleteParameters>
                    <asp:Parameter Name="PerfName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PerfName" Type="String" />
                    <asp:Parameter Name="PerfDate" Type="String" />
                    <asp:Parameter Name="PerfTime" Type="String" />
                    <asp:Parameter Name="PerfImage" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PerfId" Type="Int32" />
                    <asp:Parameter Name="PerfDate" Type="String" />
                    <asp:Parameter Name="PerfTime" Type="String" />
                    <asp:Parameter Name="PerfImage" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PerfName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label11" runat="server"></asp:Label>
            <br />

        </div>
     <div>
         </div>
     </div>
     
    </form>
</body>
</html>
