<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadGridAutomaticCrudOperations.aspx.cs" Inherits="RadGridAutomaticCrudOperations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style type="text/css">
            .MyImageButton
            {
            cursor: hand;
            }

            .EditFormHeader td
            {
            font-size: 14px;
            padding: 4px !important;
            color: #0066cc;
            }
        </style>
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
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
            <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
            <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
                <telerik:RadGrid ID="RadGrid1" GridLines="None" runat="server" AllowAutomaticDeletes="False" AllowSorting="False" PageSize="10" AllowMultiRowEdit="False"
                                 AllowPaging="False" DataSourceID="DataSource1" OnItemUpdated="RadGrid1_ItemUpdated" 
                                 AllowFilteringByColumn="False" OnItemDeleted="RadGrid1_ItemDeleted"
                                 OnItemInserted="RadGrid1_ItemInserted" OnDataBound="RadGrid1_DataBound" Skin="Telerik">
                    <MasterTableView Width="100%" CommandItemDisplay="TopAndBottom" DataKeyNames=""
                                     DataSourceID="DataSource1" HorizontalAlign="NotSet" EditMode="PopUp">
                        <RowIndicatorColumn Visible="False">
                            <HeaderStyle Width="41px" />
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn Created="True">
                            <HeaderStyle Width="41px" />
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                                <ItemStyle CssClass="MyImageButton" />
                            </telerik:GridEditCommandColumn>
                            <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="Delete" ConfirmDialogType="RadWindow" ConfirmText="Delete this product?" ConfirmTitle="Delete" Text="Delete" UniqueName="DeleteColumn">
                                <ItemStyle CssClass="MyImageButton" HorizontalAlign="Center" />
                            </telerik:GridButtonColumn>
                        </Columns>
                        <EditFormSettings>
                            <FormTableItemStyle Wrap="False" />
                            <FormCaptionStyle CssClass="EditFormHeader" />
                            <FormMainTableStyle BackColor="White" CellPadding="3" CellSpacing="0" GridLines="None" Width="100%" />
                            <FormTableStyle BackColor="White" CellPadding="2" CellSpacing="0" Height="110px" />
                            <FormTableAlternatingItemStyle Wrap="False" />
                            <EditColumn ButtonType="ImageButton" CancelText="Cancel edit" UniqueName="EditCommandColumn1">
                            </EditColumn>
                            <FormTableButtonRowStyle CssClass="EditFormButtonRow" HorizontalAlign="Right" />
                        </EditFormSettings>
                    </MasterTableView>
                </telerik:RadGrid>
                <telerik:RadWindowManager ID="RadWindowManager1" runat="server"></telerik:RadWindowManager>
            </telerik:RadAjaxPanel>
            <asp:SqlDataSource SelectCommand="SELECT * FROM ResultadoPartidos ORDER By Fecha" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" ProviderName="System.Data.SqlClient" ID="DataSource1" runat="server"></asp:SqlDataSource>

            <telerik:RadSkinManager ID="RadSkinManager1" runat="server" Skin="BlackMetroTouch">
            </telerik:RadSkinManager>
        </form>
    </body>
</html>
