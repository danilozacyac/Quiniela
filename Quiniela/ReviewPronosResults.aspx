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

                            <telerik:GridBoundColumn DataField="PaisVisita" HeaderText="Equipo Visitante" SortExpression="PaisVisita" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                     UniqueName="PaisVisita" />
                            <telerik:GridDateTimeColumn  DataField="Fecha" HeaderText="Fecha del partido" SortExpression="Fecha" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"
                                                         UniqueName="Fecha" DataFormatString="{0:dd/MM/yyyy}" />
                            <telerik:GridBoundColumn DataField="PaisGanador" HeaderText="Mi Pronostico"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" ItemStyle-ForeColor="Red"
                                                     UniqueName="PaisGanador" />
                            <telerik:GridBoundColumn DataField="Marcador" HeaderText="Marcador Pronosticado"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" ItemStyle-ForeColor="Red"
                                                     UniqueName="Marcador" />
                        </Columns>
                    
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </div>
        </form>
    </body>
</html>
