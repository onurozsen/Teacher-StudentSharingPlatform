<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Document.aspx.cs" Inherits="WebApplication6.Document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <form id="form1" runat="server">

        <table class="nav-justified">
            <tr>
                <td class="auto-style1" style="background-color: #CCCCCC; text-align: center; font-weight: bold;">DOKÜMANLAR</td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <br />
                    <%-- <h4>Doküman Ekle</h4>
        <p>Buradan öğrencilerinizle dokümanlar paylaşabilirsiniz.</p>
        <hr />--%>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>Dosya Adı:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-info" OnClick="Button1_Click" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="726px" Height="187px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("FileName") %>'  OnClick="LinkButton1_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>  
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>



    </form>



</asp:Content>
