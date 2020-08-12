<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="WebApplication6.OgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

    <div class="form-group">
       <h4>Öğrenci Kayıt</h4>
        <hr />
        <div>
            <asp:Label for="TxtOgrAd" runat="server">Öğrenci Adı</asp:Label>
            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyadı</asp:Label>
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrMail" runat="server">Öğrenci Mail</asp:Label>
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefon</asp:Label>
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrAdres" runat="server">Öğrenci Adres</asp:Label>
            <asp:TextBox ID="TxtOgrAdres" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrSifre" runat="server">Öğrenci Şifre</asp:Label>
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
         <br />
        <div>
            <asp:Label for="TxtOgrFoto" runat="server">Öğrenci Fotoğraf Linki</asp:Label>
            <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
        </div>
       
    </div>
    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" style="width: 86px"></asp:Button>

</form>


</asp:Content>
