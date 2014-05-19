<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaGeneral.aspx.cs" Inherits="TablaGeneral" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
        <link href="Content/Site.css" rel="stylesheet" />
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
            <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
                <AjaxSettings>
                    <telerik:AjaxSetting AjaxControlID="RadGrid1">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings>
            </telerik:RadAjaxManager>

            <div class="page">
                <header>
                    <div id="title">
                        <h1>Brasil 2014</h1>
                    </div>

                </header>

                <nav style="background-color:#04B404; height:50px;" >
                    <ul id="menu" >
                        <li>
                            <a id="A4" runat="server" href="~/LlenaQuiniela.aspx">Llenar Quiniela</a>
                        </li>
                        <li>
                            <a id="A1" runat="server" href="~/MR2.aspx">Mis Resultados</a>
                        </li>
                        <li>
                            <a id="A2" runat="server" href="~/#">Tabla General</a>
                        </li>
                        <li>
                            <a id="A3" runat="server" href="~/Contact">Resultados</a>
                        </li>
                        <li>
                            <a id="A5" runat="server" href="~/Contact">Grupos</a>
                        </li>
                    </ul>
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"></telerik:RadTabStrip>
                </nav>

                <section id="main">
                    <div>
                        <asp:SqlDataSource SelectCommand="Select * FROM ResultadosUsuarios ORDER BY IdUsuario asc, Fecha asc" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>
                        <telerik:RadGrid ID="RadGrid1" runat="server" ShowGroupPanel="True" GridLines="None" DataSourceID="DataSource1" PageSize="50"
                                         AllowSorting="True" AllowPaging="True" AllowFiltering="True">
                            <MasterTableView GroupLoadMode="server" ShowGroupFooter="False" GroupsDefaultExpanded="False">
                            </MasterTableView>
                            <ClientSettings AllowDragToGroup="True">
                            </ClientSettings>
                        </telerik:RadGrid>
                    </div>
                </section>
            </div>
        </form>
    </body>
</html>
