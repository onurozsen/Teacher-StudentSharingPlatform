<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="WebApplication6.Grafikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="form1" runat="server">
       <table class="table table-bordered table-hover">
            <tr>
                <td>
                    <h5>Dersi Alan Öğrenciler</h5>
                    <asp:Chart ID="Chart1" runat="server" Width="761px" Height="400px">
                        <Series>
                            <asp:Series Name="Notlar">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>
                    <h5>Derslere Göre Öğretmen Dağılımları</h5>
                    <asp:Chart ID="Chart3" runat="server" Width="700px" Height="402px">
                        <Series>
                            <asp:Series Name="Brans" ChartType="Doughnut">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                     <h5>Cinsiyet</h5>
                    <asp:Chart ID="Chart2" runat="server" Width="763px" Height="400px">
                        <Series>
                            <asp:Series Name="Cinsiyet" ChartType="Pie">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>
                    <h5>Vize Notları</h5>
                    <asp:Chart ID="Chart4" runat="server" OnLoad="Chart4_Load" Width="700px" Height="400px">
                        <Series>
                            <asp:Series Name="Not" ChartType="StackedColumn">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>


</asp:Content>
