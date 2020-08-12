<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="SıfreDegıstır.aspx.cs" Inherits="WebApplication6.SıfreDegıstır" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <h4>Şifreyi değiştir</h4>

            <p>Başka bir yerde kullanmadığın güçlü bir şifre kullanmak iyi bir fikirdir</p>
            <hr />

            <br />

            <div>
                <asp:Label for="TextBox1" runat="server">ID</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false" Width="600px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TextBox2" runat="server">Yeni Şifre</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="600px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtOgrSifre2" runat="server">Yeni şifreyi tekrar yaz</asp:Label>
                <asp:TextBox ID="TxtOgrSifre2" runat="server" CssClass="form-control" Width="600px"></asp:TextBox>
            </div>
            <br />
            
        </div>
        <asp:Button ID="btn11" runat="server" Text="Değişiklikleri Kaydet" CssClass="btn btn-success" OnClick="Button1_Click"></asp:Button>
      
        </form>

</asp:Content>
