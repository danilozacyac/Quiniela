<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LlenaQuiniela.aspx.cs" Inherits="Quiniela.LlenaQuiniela" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>

        <link href="Content/Site.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <telerik:RadWindowManager ID="RadWindowManager1" runat="server" EnableShadow="true"></telerik:RadWindowManager>
            <div class="initialPage">
                <header>
                    <div id="title">
                        <h1>Brasil 2014</h1>
                    </div>

                </header>

                <section id="main">

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                            <div id="quinielaP" runat="server">
                                <table  style="left:35%; position:relative">
                                    <tr>
                                        <td>
                                            <asp:Image ID="ImLocal" runat="server" ImageUrl="~/Images/2.png" />

                                        </td>
                                        <td>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:Image ID="ImVisita" runat="server" ImageUrl="~/Images/3.png"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LblLocal" runat="server" Text="Alemania" Font-Size="XX-Large"></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="VS" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LblVisita" runat="server" Text="México" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadLocal" runat="server" Text="  Local" GroupName="Result"/>
                                        <%--<telerik:RadNumericTextBox ID="RTxtGolesLoca" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0" >

                                        </telerik:RadNumericTextBox>--%>
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadEmpate" runat="server" Text="  Empate" GroupName="Result" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadVisita" runat="server" Text="  Visita" GroupName="Result"/>
                                        <%--<telerik:RadNumericTextBox ID="RTxtGolesVisita" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <telerik:RadButton ID="RBtnAnterior" runat="server" Text="Partido Anterior" OnClick="RBtnAnterior_Click"></telerik:RadButton>
                                        </td>
                                        <td></td>
                                        <td>
                                            <telerik:RadButton ID="RBtnSiguiente" runat="server" Text="Siguiente Partido" OnClick="RBtnSiguiente_Click"></telerik:RadButton>
                                        </td>
                                    </tr>
                                    <tr style="height:50px">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>

                                        </td>
                                        <td></td>
                                        <td>

                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="mexicoP" runat="server">
                                <table  style="left:35%; position:relative">
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/3.png" />

                                        </td>
                                        <td>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/4.png"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="México" Font-Size="XX-Large"></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="VS" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Camerún" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            <telerik:RadNumericTextBox DisplayText="0" ID="RTxtLocal1" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0" >

                                            </telerik:RadNumericTextBox>
                                        </td>
                                        <td></td>
                                        <td>
                                            <telerik:RadNumericTextBox DisplayText="0" ID="RTxtVisita1" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/1.png" />

                                        </td>
                                        <td>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/3.png"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Brasil" Font-Size="XX-Large"></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="VS" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="México" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            <telerik:RadNumericTextBox DisplayText="0" ID="RTxtLocal2" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0" >

                                            </telerik:RadNumericTextBox>
                                        </td>
                                        <td></td>
                                        <td>
                                            <telerik:RadNumericTextBox DisplayText="0" ID="RTxtVisita2" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/2.png" />

                                        </td>
                                        <td>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/3.png"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="Croacia" Font-Size="XX-Large"></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="VS" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Text="México" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            <telerik:RadNumericTextBox DisplayText="0" ID="RTxtLocal3" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0" >

                                            </telerik:RadNumericTextBox>
                                        </td>
                                        <td></td>
                                        <td>
                                            <telerik:RadNumericTextBox DisplayText="0" ID="RTxtVisita3" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:50px">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>

                                        </td>
                                        <td></td>
                                        <td>

                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <telerik:RadWindow ID="RadWindow1" VisibleOnPageLoad="false" Title="Quiniela al momento" NavigateUrl="ReviewPronosResults.aspx" Width="700" Height="400"

                                       IconUrl="~/Resources/brazucafavicon.ico" runat="server">

                    </telerik:RadWindow>
                    <telerik:RadButton ID="RBtnRevisar" runat="server" Text="Revisar Resultados" OnClick="RBtnRevisar_Click1"></telerik:RadButton>
                    <telerik:RadButton ID="RBtnSiguientePaso" runat="server" Text="Siguiente" OnClick="RBtnSiguientePaso_Click"  Visible="false" ></telerik:RadButton>
                    <telerik:RadButton ID="RBtnGuardar" runat="server" Text="Guardar" OnClick="RBtnGuardar_Click"  ></telerik:RadButton>
                </section>
            </div>
        </form>
    </body>
</html>
