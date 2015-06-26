<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PronosticosPorParticipante.aspx.cs" Inherits="Quiniela.PronosticosPorParticipante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
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
                        <h1>Copa Oro 2015</h1>
                    </div>

                </header>

                <div id="cssmenu" >
                    <ul  >
                        <li>
                            <a id="A1" class="active" runat="server" href="#">Mis Resultados</a>
                        </li>
                        <li>
                            <a id="A2"  runat="server" href="~/TablaGeneral.aspx">Tabla General</a>
                        </li>
                        <li>
                            <a id="A3"  runat="server" href="~/MisResultados.aspx">Resultados</a>
                        </li>
                        <li>
                            <a id="A4" class="last" runat="server" href="~/Grupos.aspx">Grupos</a>
                        </li>
                    </ul>
                </div>

                <section id="main">
                    <div>
                        <div><asp:Label ID="Label1" runat="server" CssClass="labelPaises" ><%# Nombre %></asp:Label></div>
                        
                        <asp:ImageButton ID="ExportToPdf" Style="cursor: pointer;" ImageUrl="Pdf.png" ToolTip="Exporta tu quiniela a PDF"
                                         AlternateText="Export to PDF" runat="server" OnClick="ExportToPdf_Click" Visible="true"></asp:ImageButton>



                        <asp:SqlDataSource SelectCommand="<%# QueryString %>" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>
                        
                        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="DataSource1" >
                            <ExportSettings FileName="QuinielaAmerica2015" OpenInNewWindow="True">
                                <Pdf AllowCopy="False" AllowModify="False" AllowPrinting="True" PaperSize="A4" Title="Exported RadGrid" Subject="Exported RadGrid" />
                            </ExportSettings>
                            <MasterTableView Width="100%" AutoGenerateColumns="False" DataKeyNames="Fecha">

                                <Columns>
                                    <telerik:GridDateTimeColumn  DataField="Fecha" HeaderText="Fecha del partido"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                 UniqueName="Fecha" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-HorizontalAlign="Center" />
                                    <telerik:GridBoundColumn DataField="Local" HeaderText="Equipo Local"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                             UniqueName="PaisLocal" ItemStyle-HorizontalAlign="Center" />

                                    <telerik:GridBoundColumn DataField="Visitante" HeaderText="Equipo Visitante"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                             UniqueName="PaisVisita" ItemStyle-HorizontalAlign="Center"/>

                                    <telerik:GridBoundColumn DataField="Ganador" HeaderText="Mi Pronostico"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" ItemStyle-ForeColor="Red"
                                                             UniqueName="PaisGanador" ItemStyle-HorizontalAlign="Center"/>
                                    <telerik:GridHyperLinkColumn DataTextField="Marcador" HeaderText="Marcador Pronostico"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" ItemStyle-ForeColor="Red"
                                                             UniqueName="Marcador" ItemStyle-HorizontalAlign="Center" 
                                                             DataNavigateUrlFields="IdPartido"
                                                             DataNavigateUrlFormatString="Charts/ResultsChart.aspx?ID={0}" Target="_blank" />
                                </Columns>

                            </MasterTableView>
                        </telerik:RadGrid>
                    </div>
                </section>
            </div>
        </form>
    </body>
</html>
