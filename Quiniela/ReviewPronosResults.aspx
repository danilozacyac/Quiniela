<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewPronosResults.aspx.cs" Inherits="Quiniela.ReviewPronosResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div>
                <telerik:RadGrid ID="RadGrid1" runat="server" Culture="es-ES" AllowSorting="True" >
                    <MasterTableView Width="100%" AutoGenerateColumns="False" DataKeyNames="IdPartido">
                        
                        <Columns>

                            <telerik:GridBoundColumn DataField="PaisLocal" HeaderText="Equipo Local" SortExpression="PaisLocal" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="PaisLocal" />
                            <telerik:GridBoundColumn DataField="GolesLocal" HeaderText="" SortExpression="GolesLocal"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="GolesLocal" />
                            <telerik:GridBoundColumn DataField="GolesVisita" HeaderText="" SortExpression="GolesVisita" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="GolesVisita" />
                            <telerik:GridBoundColumn DataField="PaisVisita" HeaderText="Equipo Visitante" SortExpression="PaisVisita" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="PaisVisita" />
                            <telerik:GridBoundColumn DataField="Fecha" HeaderText="Fecha del partido" SortExpression="Fecha" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="Fecha" />
                        </Columns>

                    </MasterTableView>
                </telerik:RadGrid>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </div>
        </form>
    </body>
</html>
