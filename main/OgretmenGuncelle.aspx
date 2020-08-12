<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OgretmenGuncelle.aspx.cs" Inherits="WebApplication6.OgretmenGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

 <form id="Form1" runat="server">

        <div class="form-group">
            
            <h4>Güncelle</h4>
            <p>Öğretmen bilgilerini güncelleyin.</p>
            <hr />

            <div>
                <asp:Label for="TxtOgrtID" runat="server">Öğretmen ID</asp:Label>
                <asp:TextBox ID="TxtOgrtID" runat="server" CssClass="form-control" Enabled="false" Width="950px" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtAd" runat="server">Öğretmen Adı</asp:Label>
                <asp:TextBox ID="TxtOgrtAd" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtSoyad" runat="server">Öğretmen Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrtSoyad" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtMail" runat="server">Öğretmen Mail</asp:Label>
                <asp:TextBox ID="TxtOgrtMail" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtTelefon" runat="server">Öğretmen Telefon</asp:Label>
                <asp:TextBox ID="TxtOgrtTelefon" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtAdres" runat="server">Öğretmen Adres</asp:Label>
                <asp:TextBox ID="TxtOgrtAdres" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtSifre" runat="server">Öğretmen Şifre</asp:Label>
                <asp:TextBox ID="TxtOgrtSifre" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtFoto" runat="server">Öğretmen Fotoğraf Linki</asp:Label>
                <asp:TextBox ID="TxtOgrtFoto" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>

        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" ></asp:Button>

    </form>


</asp:Content>
