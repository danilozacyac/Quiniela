<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadGroupedGridForm.aspx.cs" Inherits="RadGroupedGridForm" %>

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
                
                <nav >
                    <ul id="menu"> 
                        <li>
                            <a id="A1" runat="server" href="~/">Home</a>
                        </li>
                        <li>
                            <a id="A2" runat="server" href="~/About">About</a>
                        </li>
                        <li>
                            <a id="A3" runat="server" href="~/Contact">Contact</a>
                        </li>
                    </ul>
                </nav>
                 
                <section id="main">
                    <div>
                        <asp:SqlDataSource SelectCommand="SELECT * FROM [TablaPosiciones] ORDER BY [PuntosTotales] DESC" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ID="DataSource1" runat="server"></asp:SqlDataSource>
                        <telerik:RadGrid ID="RadGrid1" runat="server" ShowGroupPanel="True" DataSourceID="DataSource1" AllowFiltering="False" Font-Size="Large" Culture="es-ES" Skin="WebBlue">
                            <MasterTableView GroupLoadMode="server" ShowGroupFooter="False" GroupsDefaultExpanded="False" AutoGenerateColumns="False" DataKeyNames="idUsuario">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="idUsuario" DataType="System.Int32" FilterControlAltText="Filter idUsuario column" HeaderText="idUsuario" ReadOnly="True" SortExpression="idUsuario" UniqueName="idUsuario">
                                        <ColumnValidationSettings>
                                            <ModelErrorMessage Text="" />
                                        </ColumnValidationSettings>
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Nombre" FilterControlAltText="Filter Nombre column" HeaderText="Nombre" SortExpression="Nombre" UniqueName="Nombre">
                                        <ColumnValidationSettings>
                                            <ModelErrorMessage Text="" />
                                        </ColumnValidationSettings>
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Paterno" FilterControlAltText="Filter Paterno column" HeaderText="Paterno" SortExpression="Paterno" UniqueName="Paterno">
                                        <ColumnValidationSettings>
                                            <ModelErrorMessage Text="" />
                                        </ColumnValidationSettings>
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Materno" FilterControlAltText="Filter Materno column" HeaderText="Materno" SortExpression="Materno" UniqueName="Materno">
                                        <ColumnValidationSettings>
                                            <ModelErrorMessage Text="" />
                                        </ColumnValidationSettings>
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="PuntosTotales" DataType="System.Int32" FilterControlAltText="Filter PuntosTotales column" HeaderText="PuntosTotales" SortExpression="PuntosTotales" UniqueName="PuntosTotales">
                                        <ColumnValidationSettings>
                                            <ModelErrorMessage Text="" />
                                        </ColumnValidationSettings>
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                        <%--<ClientSettings AllowDragToGroup="True">
                        </ClientSettings>--%>
                        </telerik:RadGrid>
                    </div>
                </section>
            </>

        </form>
    </body>
</html>
