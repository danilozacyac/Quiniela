<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MisResultados.aspx.cs" Inherits="MisResultados" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
        <link href="Content/Site.css" rel="stylesheet" />
        <link href="Content/MenuCss.css" rel="stylesheet" />
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

                <div class="initialPage">
                    <header>
                        <div id="title">
                            <h1>Copa América 2015</h1>
                        </div>

                    </header>

                    <div id="cssmenu" >
                    <ul  >
                        <li>
                            <a runat="server" href="~/MR2.aspx">Mis Resultados</a>
                        </li>
                        <li>
                            <a runat="server" href="~/TablaGeneral.aspx">Tabla General</a>
                        </li>
                        <li>
                            <a class="active" runat="server" href="#">Resultados</a>
                        </li>
                        <li>
                            <a id="A8" class="last" runat="server" href="~/Grupos.aspx">Grupos</a>
                        </li>
                    </ul>
                </div>

                    <section id="main">
                        <div>
                            <asp:ImageButton OnClientClick="return exportToPdf()" ID="ImageButton1" Style="cursor: pointer;" ImageUrl="Pdf.png" Visible="false" AlternateText="Export to PDF" runat="server" />

                            <asp:SqlDataSource SelectCommand="<%# IdUsuario %>" 
                                ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" 
                                ID="DataSource1" runat="server">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="2" Name="IdTorneo" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="DataSource1" 
                                CellSpacing="-1" Culture="es-ES" GridLines="Both">
                                <ExportSettings FileName="MiQuiniela" OpenInNewWindow="False">
                                    <Pdf AllowCopy="False" AllowModify="False" AllowPrinting="True" PaperSize="A4" Title="Mi Quiniela Copa América 2015" Subject="America2015" />
                                </ExportSettings>
                            </telerik:RadGrid>
                        </div>
                    </section>
                </div>
            </div>
        </form>
    </body>
</html>

