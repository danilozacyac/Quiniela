<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultsChart.aspx.cs" Inherits="Quiniela.Charts.ResultsChart" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Charting" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/Login.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>

        <div id="charts">
            <telerik:RadChart ID="ResultChart" runat="server" IntelligentLabelsEnabled="True"
                DataSourceID="SqlDataSource1" Height="600px" Skin="Gradient"
                Width="800px" SeriesOrientation="Horizontal">
                <Appearance>
                    <FillStyle FillType="Gradient" MainColor="244, 244, 234"
                        SecondColor="167, 172, 137">
                    </FillStyle>
                    <Border Color="117, 117, 117" />
                </Appearance>
                <Series>
                    <telerik:ChartSeries DataYColumn="Cuantos" Name="Cuantos"
                        DataLabelsColumn="Marcador">
                        <Appearance>
                            <FillStyle MainColor="199, 243, 178" SecondColor="17, 147, 7">
                            </FillStyle>
                            <TextAppearance TextProperties-Color="Black">
                            </TextAppearance>
                            <Border Color="Black" />
                        </Appearance>
                    </telerik:ChartSeries>
                </Series>
                <Legend>
                    <Appearance Dimensions-Margins="18%, 1%, 1px, 1px"
                        Corners="Round, Round, Round, Round, 3">
                        <FillStyle MainColor="177, 183, 144">
                        </FillStyle>
                        <Border Color="64, 64, 64" />
                    </Appearance>
                </Legend>
                <PlotArea>
                    <XAxis AutoScale="False" DataLabelsColumn="Cuantos" MaxValue="5" MinValue="1"
                        Step="1">
                        <Appearance MajorTick-Color="Black">
                            <MajorGridLines Color="DimGray" />
                            <TextAppearance TextProperties-Color="Black">
                            </TextAppearance>
                        </Appearance>
                        <AxisLabel>
                            <Appearance RotationAngle="270">
                            </Appearance>
                            <TextBlock>
                                <Appearance TextProperties-Font="Verdana, 9.75pt, style=Bold">
                                </Appearance>
                            </TextBlock>
                        </AxisLabel>
                        <Items>
                            <telerik:ChartAxisItem Value="1">
                            </telerik:ChartAxisItem>
                            <telerik:ChartAxisItem Value="1">
                            </telerik:ChartAxisItem>
                            <telerik:ChartAxisItem Value="4">
                            </telerik:ChartAxisItem>
                            <telerik:ChartAxisItem Value="9">
                            </telerik:ChartAxisItem>
                            <telerik:ChartAxisItem Value="4">
                            </telerik:ChartAxisItem>
                            <telerik:ChartAxisItem Value="1">
                            </telerik:ChartAxisItem>
                            <telerik:ChartAxisItem Value="5">
                            </telerik:ChartAxisItem>
                        </Items>
                    </XAxis>
                    <YAxis>
                        <Appearance>
                            <MajorGridLines Color="Black" />
                        </Appearance>
                        <AxisLabel>
                            <Appearance RotationAngle="0">
                            </Appearance>
                            <TextBlock>
                                <Appearance TextProperties-Font="Verdana, 9.75pt, style=Bold">
                                </Appearance>
                            </TextBlock>
                        </AxisLabel>
                    </YAxis>
                    <YAxis2>
                        <AxisLabel>
                            <Appearance RotationAngle="0">
                            </Appearance>
                            <TextBlock>
                                <Appearance TextProperties-Font="Verdana, 9.75pt, style=Bold">
                                </Appearance>
                            </TextBlock>
                        </AxisLabel>
                    </YAxis2>
                    <Appearance Dimensions-Margins="18%, 22%, 12%, 10%"
                        Corners="Round, Round, Round, Round, 6">
                        <FillStyle MainColor="65, 201, 254" SecondColor="0, 107, 186">
                        </FillStyle>
                        <Border Color="94, 94, 93" />
                    </Appearance>
                </PlotArea>
                <ChartTitle>
                    <Appearance Dimensions-Margins="4%, 10px, 14px, 0%"
                        Corners="Round, Round, Round, Round, 3" Position-AlignedPosition="Top">
                        <FillStyle MainColor="177, 183, 144">
                        </FillStyle>
                        <Border Color="64, 64, 64" />
                    </Appearance>
                    <TextBlock Text="Resultados Para el Partido" >
                        <Appearance TextProperties-Color="White"
                            TextProperties-Font="Verdana, 14.25pt, style=Bold">
                        </Appearance>
                    </TextBlock>
                </ChartTitle>
            </telerik:RadChart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>"
                SelectCommand="<%# IdPartido %>"></asp:SqlDataSource>
            <telerik:RadButton ID="BtnDetalle" runat="server" Text="Ver Detalle" OnClick="BtnDetalle_Click"></telerik:RadButton>
        </div>
    </form>

</body>
</html>
