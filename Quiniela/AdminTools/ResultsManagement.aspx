<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultsManagement.aspx.cs" Inherits="ResultsManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="../Content/Site.css" rel="stylesheet" />
        <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
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
            </telerik:RadAjaxManager>

            <div class="initialPage">
                <header>
                    <div id="title">
                        <h1>Copa América 2015</h1>
                    </div>

                </header>

                <nav style="background-color:#04B404; height:50px;" >
                    <ul id="menu" >
                        <li>
                            <a id="A1" runat="server" href="#">Mis Resultados</a>
                        </li>
                        <li>
                            <a id="A2" runat="server" href="~/TablaGeneral.aspx">Tabla General</a>
                        </li>
                        <li>
                            <a id="A3" runat="server" href="~/MisResultados.aspx">Resultados</a>
                        </li>
                        <li>
                            <a id="A5" runat="server" href="~/Grupos.aspx">Grupos</a>
                        </li>
                    </ul>
                </nav>

                <section id="main">
                    <div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <telerik:RadComboBox ID="RCbxPartidos" runat="server" Width="300" OnSelectedIndexChanged="RCbxPartidos_SelectedIndexChanged" DataTextField="PartidoString" DataValueField="IdPartido" AutoPostBack="True" ></telerik:RadComboBox>

                                <div class="whiteDiv"></div>

                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LblLocal" runat="server" Text="Local"></asp:Label>
                                        </td>
                                        <td>vs</td>
                                        <td>
                                            <asp:Label ID="LblVisita" runat="server" Text="Visita"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <telerik:RadNumericTextBox ID="GoalLocal" runat="server">
                                                <NegativeStyle Resize="None" />
                                                <NumberFormat DecimalDigits="0" ZeroPattern="n" />
                                                <EmptyMessageStyle Resize="None" />
                                                <ReadOnlyStyle Resize="None" />
                                                <FocusedStyle Resize="None" />
                                                <DisabledStyle Resize="None" />
                                                <InvalidStyle Resize="None" />
                                                <HoveredStyle Resize="None" />
                                                <EnabledStyle Resize="None" />
                                            </telerik:RadNumericTextBox>
                                        </td>
                                        <td></td>
                                        <td>
                                            <telerik:RadNumericTextBox ID="GoalVisita" runat="server">
                                                <NegativeStyle Resize="None" />
                                                <NumberFormat DecimalDigits="0" ZeroPattern="n" />
                                                <EmptyMessageStyle Resize="None" />
                                                <ReadOnlyStyle Resize="None" />
                                                <FocusedStyle Resize="None" />
                                                <DisabledStyle Resize="None" />
                                                <InvalidStyle Resize="None" />
                                                <HoveredStyle Resize="None" />
                                                <EnabledStyle Resize="None" />
                                            </telerik:RadNumericTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                        </td>
                                        <td></td>
                                        <td>
                                            <telerik:RadButton ID="RBtnGuardarResultado" runat="server" Text="Guardar Resultado" OnClick="RBtnGuardarResultado_Click"></telerik:RadButton>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </section>
            </div>

        </form>
    </body>
</html>
