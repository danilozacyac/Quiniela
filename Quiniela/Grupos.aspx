<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grupos.aspx.cs" Inherits="Quiniela.Grupos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="Content/Site.css" rel="stylesheet" />
        <link href="Content/Probando.css" rel="stylesheet" />
        <link href="Content/MenuCss.css" rel="stylesheet" />
        <script src="js/modernizr.custom.js"></script>
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">

            <div class="page">
                <telerik:RadFormDecorator ID="QsfFromDecorator" runat="server" DecoratedControls="All" EnableRoundedCorners="false" Skin="Black" />

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
                            <a runat="server" href="~/MisResultados.aspx">Resultados</a>
                        </li>
                        <li>
                            <a class="active" runat="server" href="#">Grupos</a>
                        </li>
                    </ul>
                </div>

                <section id="main">
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPag1" SelectedIndex="0" Skin="Silk" Width="100%">
                        <Tabs>
                            <telerik:RadTab Text="Grupo A"/>
                            <telerik:RadTab  Text="Grupo B"/>
                            <telerik:RadTab Text="Grupo C"/>

                        </Tabs>

                    </telerik:RadTabStrip>

                    <telerik:RadMultiPage ID="RadMultiPag1" runat="server" SelectedIndex="0">
                        <telerik:RadPageView ID="RadPageView1" runat="server" Height="1300" Style="overflow: hidden">
                            <div class="whiteDiv" ></div>
                            <div>
                                <table class="tablaGrupos" style="left:35%; position:relative">
                                    <tr>
                                        <td>
                                            <img alt="Chile" src="Images/7.png" />
                                        </td>
                                        <td>
                                            <img alt="México" src="Images/3.png" />
                                        </td>
                                        <td>
                                            <img alt="Ecuador" src="Images/18.png" />
                                        </td>
                                        <td>
                                            <img alt="Bolivia" src="Images/33.png" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Chile</td>
                                        <td>México</td>
                                        <td>Ecuador</td>
                                        <td>Bolivia</td>
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
                                            <img alt="Argentina" src="Images/21.png" />
                                        </td>
                                        <td>
                                            <img alt="Uruguay" src="Images/13.png" />
                                        </td>
                                        <td>
                                            <img alt="Paraguay" src="Images/34.png" />
                                        </td>
                                        <td>
                                            <img alt="Jamaica" src="Images/35.png" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Argentina</td>
                                        <td>Uruguay</td>
                                        <td>Paraguay</td>
                                        <td>Jamaica</td>
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
                                            <img alt="
                                            
                                            " src="Images/1.png" />
                                        </td>
                                        <td>
                                            <img alt="Colombia" src="Images/9.png" />
                                        </td>
                                        <td>
                                            <img alt="Peru" src="Images/36.png" />
                                        </td>
                                        <td>
                                            <img alt="Venezuela" src="Images/37.png" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Brasil</td>
                                        <td>Colombia</td>
                                        <td>Peru</td>
                                        <td>Venezuela</td>
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
                                            <img alt="Uruguay" src="Images/13.png" />
                                        </td>
                                        <td>
                                            <img alt="Costa Rica" src="Images/14.png" />
                                        </td>
                                        <td>
                                            <img alt="Inglaterra" src="Images/15.png" />
                                        </td>
                                        <td>
                                            <img alt="Italia" src="Images/16.png" />
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
                                            <img alt="Suiza" src="Images/17.png" />
                                        </td>
                                        <td>
                                            <img alt="Ecuador" src="Images/18.png" />
                                        </td>
                                        <td>
                                            <img alt="Francia" src="Images/19.png" />
                                        </td>
                                        <td>
                                            <img alt="Honduras" src="Images/20.png" />
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
                                            <img alt="Argentina" src="Images/21.png" />
                                        </td>
                                        <td>
                                            <img alt="Bosnia" src="Images/22.png" />
                                        </td>
                                        <td>
                                            <img alt="Irán" src="Images/23.png" />
                                        </td>
                                        <td>
                                            <img alt="Nigeria" src="Images/24.png" />
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
                                            <img alt="Alemania" src="Images/25.png" />
                                        </td>
                                        <td>
                                            <img alt="Portugal" src="Images/26.png" />
                                        </td>
                                        <td>
                                            <img alt="Ghana" src="Images/27.png" />
                                        </td>
                                        <td>
                                            <img alt="EUA" src="Images/28.png" />
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
                                            <img alt="Bélgica" src="Images/29.png" />
                                        </td>
                                        <td>
                                            <img alt="Argelia" src="Images/30.png" />
                                        </td>
                                        <td>
                                            <img alt="Rusia" src="Images/31.png" />
                                        </td>
                                        <td>
                                            <img alt="Corea" src="Images/32.png" />
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

            <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
            </telerik:RadStyleSheetManager>
            <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            </telerik:RadAjaxManager>
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"/>

        </form>
        <script src="js/ytmenu.js"></script>
    </body>
</html>
