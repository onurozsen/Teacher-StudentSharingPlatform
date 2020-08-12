<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="MesajOlustur2.aspx.cs" Inherits="WebApplication6.MesajOlustur2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 977px;
            height: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">
        <h4>Mesaj Oluştur</h4>
        <p>Alıcı kısmına mesajı göndermek istediğiniz kişinin ID'sini giriniz.</p>
        <p>
            Eğer ID numarasını bilmiyorsanız
            <asp:Button ID="Button1" runat="server" Height="29px" Text="Yardım" Width="70px" OnClick="Button1_Click" />
            butonuna tıklayınız.
        </p>
        <hr />

        <div class="form-group">

            <div>
                <asp:Label for="TxtGonderen" runat="server">Gönderen</asp:Label>
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" Enabled="False" Width="975px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control" Width="975px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtBaslik" runat="server">Başlık</asp:Label>
                <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" Width="975px"></asp:TextBox>
            </div>
            <br />
            <asp:Label for="TxtIcerik" runat="server">İçerik</asp:Label>
            <br />

            <div>
                <textarea id="TxtIcerik" class="auto-style1" runat="server"></textarea>
            </div>

        </div>
        <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click"></asp:Button>
    </form>


</asp:Content>
