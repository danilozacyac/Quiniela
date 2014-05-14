<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Quiniela.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <link href="Content/Site.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">

            <div class="page">
                <header>
                    <div id="title">
                        <h1>Brasil 2014</h1>
                    </div>

                </header>

                <section id="main">
                    <table border="0" cellpadding="0" cellspacing="0" style="left:35%; position:relative">
                        <tr>
                            <th colspan="3">
                                Log In
                            </th>
                        </tr>
                        <tr>
                            <td>
                                Usuario
                            </td>
                            <td>
                                <asp:TextBox ID="TxtUsuario" runat="server" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtUsuario"
                                                            runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
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
                            </td>
                            <td>
                                <telerik:RadButton ID="RBtnIngreso" runat="server" Text="Ingresar" OnClick="RBtnIngreso_Click" ></telerik:RadButton>
                            </td>
                            <td>
                                
                            </td>
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
            </div>
        </form>
    </body>
</html>
