<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaGeneral.aspx.cs" Inherits="TablaGeneral" %>

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
                        <h1>Copa Oro 2015</h1>
                    </div>

                </header>

                <div id="cssmenu" >
                    <ul  >
                        <li>
                            <a runat="server" href="~/MR2.aspx">Mis Resultados</a>
                        </li>
                        <li>
                            <a class="active" runat="server" href="#">Tabla General</a>
                        </li>
                        <li>
                            <a runat="server" href="~/MisResultados.aspx">Resultados</a>
                        </li>
                        <li>
                            <a class="last" runat="server" href="~/Grupos.aspx">Grupos</a>
                        </li>
                    </ul>
                </div>

                <section id="main">
                    <div>
                        <asp:SqlDataSource SelectCommand="Select * FROM TablaPosiciones WHERE IdTorneo = 3 ORDER BY PuntosTotales desc" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>
                        <telerik:RadGrid ID="RadGrid1" runat="server" ShowGroupPanel="False" GridLines="None" DataSourceID="DataSource1" PageSize="50"
                                         AllowSorting="False" AllowPaging="True" AllowFiltering="True">
                            <MasterTableView GroupLoadMode="server" ShowGroupFooter="False" GroupsDefaultExpanded="False" AutoGenerateColumns="false">
                            <Columns>

                            <telerik:GridBoundColumn DataField="Posicion" HeaderText="Posicion" SortExpression="Posicion" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="Posicion" />

                            <telerik:GridBoundColumn DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="Nombre" />
                            <telerik:GridBoundColumn DataField="PuntosTotales" HeaderText="Puntos"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" ItemStyle-ForeColor="Red"
                                                     UniqueName="PuntosTotales" />
                            
                        </Columns>
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
