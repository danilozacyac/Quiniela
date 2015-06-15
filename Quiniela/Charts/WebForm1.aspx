<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Quiniela.Charts.WebForm1" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <telerik:RadChart ID="RadChart1" runat="server" DataGroupColumn="Marcador" DataSourceID="SqlDataSource1" Height="600px" Skin="DeepRed" Width="800px">
            <Appearance>
                <FillStyle FillType="ComplexGradient">
                    <FillSettings>
                        <ComplexGradient>
                            <telerik:GradientElement Color="179, 37, 26" />
                            <telerik:GradientElement Color="253, 153, 66" Position="0.5" />
                            <telerik:GradientElement Color="179, 37, 26" Position="1" />
                        </ComplexGradient>
                    </FillSettings>
                </FillStyle>
                <Border Color="141, 50, 0" Width="5" />
            </Appearance>
            <Series>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="0 - 1">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="213, 247, 255" />
                                    <telerik:GradientElement Color="193, 239, 252" Position="0.5" />
                                    <telerik:GradientElement Color="157, 217, 238" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="1 - 0">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="163, 222, 78" />
                                    <telerik:GradientElement Color="132, 207, 27" Position="0.5" />
                                    <telerik:GradientElement Color="102, 181, 3" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                        <Border Color="94, 160, 0" />
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="1 - 2">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="136, 221, 246" />
                                    <telerik:GradientElement Color="97, 203, 234" Position="0.5" />
                                    <telerik:GradientElement Color="59, 161, 197" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                        <Border Color="67, 181, 229" />
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="2 - 0">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="218, 254, 122" />
                                    <telerik:GradientElement Color="193, 240, 74" Position="0.5" />
                                    <telerik:GradientElement Color="163, 205, 46" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                        <Border Color="111, 174, 12" />
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="2 - 1">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="79, 152, 198" />
                                    <telerik:GradientElement Color="34, 123, 182" Position="0.5" />
                                    <telerik:GradientElement Color="4, 85, 156" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                        <Border Color="39, 103, 210" />
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="2 - 2">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="86, 153, 78" />
                                    <telerik:GradientElement Color="43, 126, 33" Position="0.5" />
                                    <telerik:GradientElement Color="18, 96, 3" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                        <Border Color="46, 93, 0" />
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="3 - 0">
                    <Appearance>
                        <FillStyle FillType="ComplexGradient">
                            <FillSettings>
                                <ComplexGradient>
                                    <telerik:GradientElement Color="213, 247, 255" />
                                    <telerik:GradientElement Color="193, 239, 252" Position="0.5" />
                                    <telerik:GradientElement Color="157, 217, 238" Position="1" />
                                </ComplexGradient>
                            </FillSettings>
                        </FillStyle>
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                    </Appearance>
                </telerik:ChartSeries>
                <telerik:ChartSeries DataYColumn="Cuantos" Name="3 - 1">
                </telerik:ChartSeries>
            </Series>
            <Legend>
                <Appearance Dimensions-Margins="1px, 2%, 12%, 1px">
                    <ItemTextAppearance TextProperties-Color="White">
                    </ItemTextAppearance>
                    <FillStyle MainColor="37, 255, 255, 255">
                    </FillStyle>
                    <Border Color="76, 255, 255, 255" />
                </Appearance>
                <TextBlock>
                    <Appearance Position-AlignedPosition="Top" TextProperties-Color="220, 158, 119">
                    </Appearance>
                </TextBlock>
            </Legend>
            <PlotArea>
                <XAxis AutoScale="False" DataLabelsColumn="Cuantos" MaxValue="8" MinValue="1" Step="1">
                    <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255">
                        <MajorGridLines Color="179, 255, 255, 255" Width="0" />
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                    </Appearance>
                    <AxisLabel>
                        <Appearance Dimensions-Paddings="1px, 1px, 10%, 1px">
                        </Appearance>
                        <TextBlock>
                            <Appearance TextProperties-Color="254, 178, 112">
                            </Appearance>
                        </TextBlock>
                    </AxisLabel>
                    <Items>
                        <telerik:ChartAxisItem Value="1">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="4">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="14">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="2">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="8">
                        </telerik:ChartAxisItem>
                    </Items>
                </XAxis>
                <YAxis>
                    <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255" MinorTick-Color="179, 255, 255, 255">
                        <MajorGridLines Color="179, 255, 255, 255" />
                        <MinorGridLines Color="179, 255, 255, 255" Width="0" />
                        <TextAppearance TextProperties-Color="White">
                        </TextAppearance>
                    </Appearance>
                    <AxisLabel>
                        <TextBlock>
                            <Appearance TextProperties-Color="220, 158, 119">
                            </Appearance>
                        </TextBlock>
                    </AxisLabel>
                </YAxis>
                <Appearance Dimensions-Margins="19%, 90px, 12%, 9%">
                    <FillStyle MainColor="50, 255, 255, 255" SecondColor="Transparent">
                    </FillStyle>
                    <Border Color="76, 255, 255, 255" />
                </Appearance>
            </PlotArea>
            <ChartTitle>
                <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                    <FillStyle MainColor="">
                    </FillStyle>
                </Appearance>
                <TextBlock Text="Resultados Para el Partido">
                    <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                    </Appearance>
                </TextBlock>
            </ChartTitle>
        </telerik:RadChart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuinielaMundialConnectionString %>" SelectCommand="select CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar) Marcador, 
	COUNT(CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar)) Cuantos From Pronosticos P
	Where idPartido = 68 group by CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar)"></asp:SqlDataSource>
    </div>
    </form>

</body>
</html>
