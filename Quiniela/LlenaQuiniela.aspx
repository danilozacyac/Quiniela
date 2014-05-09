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

    <div class="page">
    <header>
			<div id="title">
				<h1>Brasil 2014</h1>
			</div>
			
		</header>

        <section id="main">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" style="left:35%; position:relative">
                        <tr>
                            <td>
                                <asp:Image ID="ImLocal" runat="server" ImageUrl="~/Resources/alemania.png" />

                            </td>
                            <td>
                                <br />
                            </td>
                            <td>
                                <asp:Image ID="ImVisita" runat="server" ImageUrl="~/Resources/mexico.png"  />
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
                                <telerik:RadNumericTextBox ID="RTxtGolesLoca" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0" >
                                    
                                </telerik:RadNumericTextBox>
                            </td>
                            <td></td>
                            <td>
                                <telerik:RadNumericTextBox ID="RTxtGolesVisita" runat="server" MaxValue="20" MinValue="0" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox>
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
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </section>
    </div>
    </form>
</body>
</html>
