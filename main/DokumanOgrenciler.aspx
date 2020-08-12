<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="DokumanOgrenciler.aspx.cs" Inherits="WebApplication6.DokumanOgrenciler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <h4>Dokümanlar</h4>
    <p>Dokümanları görüntülemek için görüntüle butonuna basınız. İndirmek istediğiniz dökümanın üzerine tıklayarak indirme işlemini gerçekleştirebilirsiniz.</p>
    <hr />

     <form id="form1" runat="server">
                <asp:Button ID="Button1" runat="server" CssClass="bg-info" Text="Görüntüle" Height="32px" Width="104px" OnClick="Button1_Click" />

        <div class="text-justify">

            <br />

            <div style="margin-left: 220px; margin-top: -50px;">
                &nbsp;&nbsp;
            
            <asp:FileUpload ID="FileUpload1" runat="server" Height="43px" Text="Dosya Seç" Visible="False" />
            </div>

            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="227px" Width="786px" OnRowCommand="GridView1_RowCommand">
                <columns>
                    <asp:TemplateField HeaderText="Dosya Adı">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Size" HeaderText="Dosya Boyutu" />
                    <asp:BoundField DataField="Type" HeaderText="Dosya Türü" />
                </columns>
                <footerstyle backcolor="#FFFFCC" forecolor="#330099" />
                <headerstyle backcolor="#990000" font-bold="True" forecolor="#FFFFCC" />
                <pagerstyle backcolor="#FFFFCC" forecolor="#330099" horizontalalign="Center" />
                <rowstyle backcolor="White" forecolor="#330099" />
                <selectedrowstyle backcolor="#FFCC66" font-bold="True" forecolor="#663399" />
                <sortedascendingcellstyle backcolor="#FEFCEB" />
                <sortedascendingheaderstyle backcolor="#AF0101" />
                <sorteddescendingcellstyle backcolor="#F6F0C0" />
                <sorteddescendingheaderstyle backcolor="#7E0000" />
            </asp:GridView>
            <br />


        </div>

    </form>


</asp:Content>
