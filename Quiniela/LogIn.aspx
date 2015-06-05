<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Quiniela.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <link href="Content/Site.css" rel="stylesheet" />
        <link href="Content/Login.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">

            <div class="initialPage">
                <header>
                    <div id="title">
                        <h1></h1>
                    </div>

                </header>

                <div id="login">
                    <h1>
                        
                    </h1>
                        <fieldset>
                            <p>
                            <asp:TextBox ID="TxtUsuario" runat="server" required value="Username" onBlur="if(this.value == '')this.value = 'Username'" onFocus="if(this.value == 'Username')this.value = '' "/>
                                <%--<input name="Username" runat="server" type="text" required value="Username" onBlur="if(this.value == '')this.value = 'Username'" onFocus="if(this.value == 'Username')this.value = '' ">--%>
                            </p>
                            <p>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required value="Password" onBlur="if(this.value == '')this.value = 'Password'" onFocus="if(this.value == 'Password')this.value = '' " />
                                <%--<input type="password" required value="Password" onBlur="if(this.value == '')this.value = 'Password'" onFocus="if(this.value == 'Password')this.value = '' ">--%>
                            </p>
                            
                            <p><a href="AdminTools/SendRecoveryMail.aspx" class="forget" >¿Olvidaste tu contraseña?</a></p>

                            <p>
                                <%--<input type="submit" value="Login" runat="server">--%>
                                <asp:Button ID="BtnIngreso" runat="server" Text="LOGIN" OnClick="RBtnIngreso_Click" CssClass="logButton" />
                            </p>
                             
                            <p>
                                <%--<input type="submit" value="Login" runat="server">--%>
                                <asp:Button ID="BtnRegistro" runat="server" Text="Registrarme" CssClass="regButton"
                                    OnClick="BtnRegistro_Click" />
                            </p>
                        </fieldset>
                    
                </div> <!-- end login -->

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
