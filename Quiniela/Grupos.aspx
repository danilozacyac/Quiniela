<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grupos.aspx.cs" Inherits="Quiniela.Grupos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="Content/Site.css" rel="stylesheet" />
        <link href="Content/Probando.css" rel="stylesheet" />
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">

            <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
            </telerik:RadStyleSheetManager>
            <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            </telerik:RadAjaxManager>
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"/>
            <div class="page">
                <telerik:RadFormDecorator ID="QsfFromDecorator" runat="server" DecoratedControls="All" EnableRoundedCorners="false" Skin="Black" />

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
                            <a id="A1" runat="server" href="MR2.aspx">Mis Resultados</a>
                        </li>
                        <li>
                            <a id="A2" runat="server" href="~/TablaGeneral.aspx">Tabla General</a>
                        </li>
                        <li>
                            <a id="A3" runat="server" href="~/Contact">Resultados</a>
                        </li>
                        <li>
                            <a id="A5" runat="server" href="~/#">Grupos</a>
                        </li>
                    </ul>
                </nav>

                <section id="main">
                            <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPag1" SelectedIndex="0" Skin="Silk" Width="100%">
                                <Tabs>
                                    <telerik:RadTab Text="Grupo A"/>
                                    <telerik:RadTab  Text="Grupo B"/>
                                    <telerik:RadTab Text="Grupo C"/>
                                    <telerik:RadTab Text="Grupo D"/>
                                    <telerik:RadTab Text="Grupo E" Selected="True"/>
                                    <telerik:RadTab Text="Grupo F"/>
                                    <telerik:RadTab Text="Grupo G"/>
                                    <telerik:RadTab Text="Grupo H" />
                                </Tabs>

                            </telerik:RadTabStrip>

                            <telerik:RadMultiPage ID="RadMultiPag1" runat="server" SelectedIndex="0">
                                <telerik:RadPageView ID="RadPageView1" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Brasil" src="Resources/1.png" />
                                                </td>
                                                <td>
                                                    <img alt="Croacia" src="Resources/2.png" />
                                                </td>
                                                <td>
                                                    <img alt="México" src="Resources/3.png" />
                                                </td>
                                                <td>
                                                    <img alt="Camerún" src="Resources/4.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Brasil</td>
                                                <td>Croacia</td>
                                                <td>México</td>
                                                <td>Camerún</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss" >
                                        <telerik:RadGrid ID="RGGrupoA" runat="server" >
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView2" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="España" src="Resources/5.png" />
                                                </td>
                                                <td>
                                                    <img alt="Holanda" src="Resources/6.png" />
                                                </td>
                                                <td>
                                                    <img alt="Chile" src="Resources/7.png" />
                                                </td>
                                                <td>
                                                    <img alt="Australia" src="Resources/8.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>España</td>
                                                <td>Holanda</td>
                                                <td>Chile</td>
                                                <td>Australia</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoB" runat="server">
                                            <MasterTableView  AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView3" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Colombia" src="Resources/9.png" />
                                                </td>
                                                <td>
                                                    <img alt="Grecia" src="Resources/10.png" />
                                                </td>
                                                <td>
                                                    <img alt="Costa de Marfil" src="Resources/11.png" />
                                                </td>
                                                <td>
                                                    <img alt="Japón" src="Resources/12.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Colombia</td>
                                                <td>Grecia</td>
                                                <td>Costa de Marfil</td>
                                                <td>Japón</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoC" runat="server">
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView4" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Uruguay" src="Resources/13.png" />
                                                </td>
                                                <td>
                                                    <img alt="Costa Rica" src="Resources/14.png" />
                                                </td>
                                                <td>
                                                    <img alt="Inglaterra" src="Resources/15.png" />
                                                </td>
                                                <td>
                                                    <img alt="Italia" src="Resources/16.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Uruguay</td>
                                                <td>Costa Rica</td>
                                                <td>Inglaterra</td>
                                                <td>Italia</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoD" runat="server">
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView5" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Suiza" src="Resources/17.png" />
                                                </td>
                                                <td>
                                                    <img alt="Ecuador" src="Resources/18.png" />
                                                </td>
                                                <td>
                                                    <img alt="Francia" src="Resources/19.png" />
                                                </td>
                                                <td>
                                                    <img alt="Honduras" src="Resources/20.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Suiza</td>
                                                <td>Ecuador</td>
                                                <td>Francia</td>
                                                <td>Honduras</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoE" runat="server">
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView6" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Argentina" src="Resources/21.png" />
                                                </td>
                                                <td>
                                                    <img alt="Bosnia" src="Resources/22.png" />
                                                </td>
                                                <td>
                                                    <img alt="Irán" src="Resources/23.png" />
                                                </td>
                                                <td>
                                                    <img alt="Nigeria" src="Resources/24.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Argentina</td>
                                                <td>Bosnia</td>
                                                <td>Irán</td>
                                                <td>Nigeria</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoF" runat="server">
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView7" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Alemania" src="Resources/25.png" />
                                                </td>
                                                <td>
                                                    <img alt="Portugal" src="Resources/26.png" />
                                                </td>
                                                <td>
                                                    <img alt="Ghana" src="Resources/27.png" />
                                                </td>
                                                <td>
                                                    <img alt="EUA" src="Resources/28.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Alemania</td>
                                                <td>Portugal</td>
                                                <td>Ghana</td>
                                                <td>EUA</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoG" runat="server">
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="RadPageView8" runat="server" Height="1300" Style="overflow: hidden">
                                    <div class="whiteDiv" ></div>
                                    <div>
                                        <table class="tablaGrupos" style="left:35%; position:relative">
                                            <tr>
                                                <td>
                                                    <img alt="Bélgica" src="Resources/29.png" />
                                                </td>
                                                <td>
                                                    <img alt="Argelia" src="Resources/30.png" />
                                                </td>
                                                <td>
                                                    <img alt="Rusia" src="Resources/31.png" />
                                                </td>
                                                <td>
                                                    <img alt="Corea" src="Resources/32.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Bélgica</td>
                                                <td>Argelia</td>
                                                <td>Rusia</td>
                                                <td>Corea</td>
                                            </tr>

                                        </table>
                                    </div>
                                    <div class="whiteDiv" ></div>
                                    <div class="gridcss">
                                        <telerik:RadGrid ID="RGGrupoH" runat="server">
                                            <MasterTableView AutoGenerateColumns="false">
                                                <Columns>

                                                    <telerik:GridBoundColumn DataField="Grupo" HeaderText="Grupo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Grupo" Visible="false"  ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center" />
                                                    <telerik:GridBoundColumn DataField="Pais" HeaderText="Pais" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Pais" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JGanados" HeaderText="JG" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JG" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JPerdidos" HeaderText="JP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JP" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="JEmpatados" HeaderText="JE" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="JE" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GFavor" HeaderText="GF" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GF" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GContra" HeaderText="GC" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="GC" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="GDiferencia" HeaderText="Dif." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Dif" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                    <telerik:GridBoundColumn DataField="Puntos" HeaderText="Puntos" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                                             UniqueName="Puntos" ItemStyle-Font-Size="15pt" ItemStyle-HorizontalAlign="Center"/>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </telerik:RadPageView>
                            </telerik:RadMultiPage>
                </section>
                
            </div>
        </form>
    </body>
</html>
