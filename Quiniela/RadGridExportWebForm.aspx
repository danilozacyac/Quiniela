<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadGridExportWebForm.aspx.cs" Inherits="RadGridExportWebForm" %>

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
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="RadGrid1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
        <div>
            <asp:ImageButton ID="ExportToPdf" Style="cursor: pointer;" ImageUrl="Pdf.png"
                AlternateText="Export to PDF" runat="server" OnClick="ExportToPdf_Click"></asp:ImageButton>

            <asp:SqlDataSource SelectCommand="Select * from TablaPosiciones Order by PuntosTotales desc" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>

            <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="DataSource1">
                <ExportSettings FileName="ExportedRadGrid" OpenInNewWindow="False">
                    <Pdf AllowCopy="False" AllowModify="False" AllowPrinting="True" PaperSize="A4" Title="Exported RadGrid" Subject="Exported RadGrid" />
                </ExportSettings>
            </telerik:RadGrid>
        </div>
    </form>
</body>
</html>

