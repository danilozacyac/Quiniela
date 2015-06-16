<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultsByMatch.aspx.cs" Inherits="Quiniela.Visualization.ResultsByMatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/Site.css" rel="stylesheet" />
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

            <div class="initialPage">
                <header>
                    <div id="title">
                        <%--<h1>Copa América 2015</h1>--%>
                    </div>

                </header>


                <section id="main">
                    <div>

                        <asp:SqlDataSource SelectCommand="<%# IdUsuario %>" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>

                        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="DataSource1" >
                            <ExportSettings FileName="QuinielaAmerica2015" OpenInNewWindow="True">
                                <Pdf AllowCopy="False" AllowModify="False" AllowPrinting="True" PaperSize="A4" Title="Exported RadGrid" Subject="Exported RadGrid" />
                            </ExportSettings>
                            <MasterTableView Width="100%" AutoGenerateColumns="False" DataKeyNames="NombreCompleto">

                                <Columns>
                                    <telerik:GridBoundColumn  DataField="NombreCompleto" HeaderText="Nombre"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                 UniqueName="NombreCompleto" ItemStyle-HorizontalAlign="Center" />
                                    <telerik:GridBoundColumn DataField="Local" HeaderText="Equipo Local"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                             UniqueName="Local" ItemStyle-HorizontalAlign="Center" />

                                    <telerik:GridBoundColumn DataField="Visitante" HeaderText="Equipo Visitante"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                             UniqueName="Visitante" ItemStyle-HorizontalAlign="Center"/>

                                    <telerik:GridBoundColumn DataField="Marcador" HeaderText="Pronostico"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" ItemStyle-ForeColor="Red"
                                                             UniqueName="Marcador" ItemStyle-HorizontalAlign="Center"/>
                                    
                                </Columns>

                            </MasterTableView>
                        </telerik:RadGrid>
                    </div>
                </section>
            </div>
        </form>
</body>
</html>
