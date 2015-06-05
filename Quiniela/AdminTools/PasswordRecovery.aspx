<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <link href="../Content/Login.css" rel="stylesheet" />
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

     <div id="login">
                    <h1>
                        
                    </h1>
                        <fieldset>
                            <p>
                            <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password" value="Password" onBlur="if(this.value == '')this.value = 'Password'" onFocus="if(this.value == 'Password')this.value = '' "/>
                                <%--<input name="Username" runat="server" type="text" required value="Username" onBlur="if(this.value == '')this.value = 'Username'" onFocus="if(this.value == 'Username')this.value = '' ">--%>
                            </p>
                            <p>
                            <asp:TextBox ID="TxtConfirma" runat="server" TextMode="Password" required value="Password" onBlur="if(this.value == '')this.value = 'Password'" onFocus="if(this.value == 'Password')this.value = '' " />
                                <%--<input type="password" required value="Password" onBlur="if(this.value == '')this.value = 'Password'" onFocus="if(this.value == 'Password')this.value = '' ">--%>
                            </p>
                            
                            <p>
                                <%--<input type="submit" value="Login" runat="server">--%>
                                <asp:Button ID="BtnCambia" runat="server" Text="Cambiar contraseña"  
                                    CssClass="logButton" OnClick="BtnCambia_Click" />
                            </p>
                            
                        </fieldset>
                    
                </div> <!-- end login -->

    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
 
    <telerik:RadSkinManager ID="RadSkinManager1" Runat="server" Skin="Metro">
    </telerik:RadSkinManager>
    <div>

    </div>
    </form>
</body>
</html>
