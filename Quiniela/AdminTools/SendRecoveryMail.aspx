<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendRecoveryMail.aspx.cs" Inherits="Quiniela.AdminTools.SendRecoveryMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title></title>
    <link href="../Content/Login.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="login">
                    <h1>
                        
                    </h1>
                        <fieldset>
                            <p>
                            <asp:TextBox ID="TxtUsuario" runat="server" required value="E-mail o  usuario" onBlur="if(this.value == '')this.value = 'Username'" onFocus="if(this.value == 'Username')this.value = '' "/>
                                <%--<input name="Username" runat="server" type="text" required value="Username" onBlur="if(this.value == '')this.value = 'Username'" onFocus="if(this.value == 'Username')this.value = '' ">--%>
                            </p>
                           
                            <p>
                                <%--<input type="submit" value="Login" runat="server">--%>
                                <asp:Button ID="BtnIngreso" runat="server" Text="Enviar correo" 
                                    CssClass="regButton" OnClick="BtnIngreso_Click" />
                            </p>


                            <asp:Label ID="SendMail" runat="server" Text="Se te ha enviado un correo de recuperación, revisa tu bandeja de entrada" Visible="false"></asp:Label>
                            
                        </fieldset>
                    
                </div> <!-- end login -->
    </div>
    </form>
</body>
</html>
