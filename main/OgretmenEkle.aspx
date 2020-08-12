<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OgretmenEkle.aspx.cs" Inherits="WebApplication6.OgretmenEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

 <form id="Form1" runat="server">

    <div class="form-group">
       
         <h4>Öğretmen Kayıt</h4>
        <hr />
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
    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" style="width: 86px" OnClick="Button1_Click" ></asp:Button>

</form>

</asp:Content>
