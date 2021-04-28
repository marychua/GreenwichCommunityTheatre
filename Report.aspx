<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="GreenwichCommunityTheatre.Report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="style_admin.css" />
    <style type="text/css">
        .boxp{
            width:60%;
            margin-left:20%;
        }
        .pagebox {
            position: relative;
            padding-top: 50px;
            width: 800px;
            height: 80%;
            left: 10%;
            top: 15%;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 4px;
            box-shadow: 0 0 10px 0 rgba(0,0,0, 0.4);
        }
        .back{
             position: relative;
             width: 900px;
            height:1800px;
            margin-left: 25%;
            margin-right:25%;
        }
        .reportstyle{
            width: 800px;
            height:700px;
            margin-left: 20px;
            margin-right:20px;
                
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
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="back">
       <h2>Report</h2>
   
   
        <asp:Panel ID="Panel1" runat="server" >
        <rsweb:ReportViewer ID="ReportViewer1"  runat="server"  ToolbarDividerColor="" Width="750px" Height="700px" WaitControlDisplayAfter="500">
            <LocalReport ReportPath="Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="Members" />

            </DataSources>

            </LocalReport></rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="GreenwichCommunityTheatre.GCTDataSetTableAdapters.User_tblTableAdapter"></asp:ObjectDataSource>
         </asp:Panel>
           
        <asp:Panel ID="Panel3" runat="server">
            <rsweb:ReportViewer ID="ReportViewer2" runat="server" CssClass="reportstyle" Width="750px" WaitControlDisplayAfter="500" Height="700px" >
                <LocalReport ReportPath="Report4.rdlc"><DataSources><rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet1" /></DataSources></LocalReport></rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="GreenwichCommunityTheatre.GCTDataSetAllTableAdapters.currentbookedseatTableAdapter"></asp:ObjectDataSource>
           </asp:Panel>

 
        <asp:Panel ID="Panel2" runat="server">
            <rsweb:ReportViewer ID="ReportViewer5" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="700px" Width="750px">
                <LocalReport ReportPath="Report7.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource8" Name="CollectionPerPerf" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" SelectMethod="GetData" TypeName="GreenwichCommunityTheatre.GCTDataSetAllTableAdapters.TotalCollectionTableAdapter"></asp:ObjectDataSource>
            </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <rsweb:ReportViewer ID="ReportViewer3" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="750px" Height="500px">
                <LocalReport ReportPath="Report9.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="MonthSales" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="GreenwichCommunityTheatre.GCTDataSetAllTableAdapters.MonthtotalSalesTableAdapter"></asp:ObjectDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <rsweb:ReportViewer ID="ReportViewer4" runat="server" BackColor="" ClientIDMode="AutoID" Height="500px" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="750px">
                <LocalReport ReportPath="Report10.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="YearSales" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData" TypeName="GreenwichCommunityTheatre.GCTDataSetAllTableAdapters.YeartotalSalesTableAdapter"></asp:ObjectDataSource>
        </asp:Panel>
     </div>
        </form>

</body>
</html>
