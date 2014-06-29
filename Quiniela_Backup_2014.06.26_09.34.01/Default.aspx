<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="initialPage">
        <header>
			<div id="title">
				<h1>Brasil 2014</h1>
			</div>
			
		</header>
    <section id="main">
        <table border="0" cellpadding="0" cellspacing="0" style="left:35%; position:relative">
            <tr>
                <th colspan="3">
                    Registration
                </th>
            </tr>
            <tr>
                <td>
                    A. Paterno
                </td>
                <td>
                    <asp:TextBox ID="TxtPaterno" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtPaterno"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    A. Materno
                </td>
                <td>
                    <asp:TextBox ID="TxtMaterno" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtMaterno"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Nombre
                </td>
                <td>
                    <asp:TextBox ID="TxtNombre" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtNombre"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="txtUsername"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Contraseña
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="txtPassword"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Confirmar contraseña
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                                          ControlToValidate="txtConfirmPassword" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Obligatorio" Display="Dynamic" ForeColor="Red"
                                                ControlToValidate="txtEmail" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Dirección de correo inválida." />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <telerik:RadButton ID="RbtnRegistrar" runat="server" Text="Registrar" OnClick="RbtnRegistrar_Click"></telerik:RadButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </section>
    
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
    <div>
    </div>
    

        </div>
        </form>
</body>
</html>
