<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MisResultados.aspx.cs" Inherits="MisResultados" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <script type="text/javascript">
            //Put your JavaScript code here.
        </script>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <ClientEvents OnRequestStart="RadAjaxManager1_RequestStart" />
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="RadGrid1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
        <div>
            <telerik:RadScriptBlock ID="RadScriptBlock1" runat="server">
                <script type="text/javascript">
                    function exportToPdf() {
                        $find("<%= RadGrid1.ClientID %>").get_masterTableView().exportToPdf();
                    return false;
                }
                function RadAjaxManager1_RequestStart(sender, args) {
                    if (args.get_eventTarget() == "<%= RadGrid1.ClientID %>")
                        args.set_enableAjax(false);
                }
                </script>
            </telerik:RadScriptBlock>
            <asp:ImageButton OnClientClick="return exportToPdf()" ID="ImageButton1" Style="cursor: pointer;" ImageUrl="Pdf.png" AlternateText="Export to PDF" runat="server" />

            <asp:SqlDataSource SelectCommand="<%# IdUsuario %>" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>

            <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="DataSource1">
                <ExportSettings FileName="MiQuiniela" OpenInNewWindow="False">
                    <Pdf AllowCopy="False" AllowModify="False" AllowPrinting="True" PaperSize="A4" Title="Mi Quiniela Brasil 2014" Subject="Brasil2014" />
                </ExportSettings>
            </telerik:RadGrid>
        </div>
    </form>
</body>
</html>

