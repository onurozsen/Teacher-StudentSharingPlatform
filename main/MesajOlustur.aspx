<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="WebApplication6.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {
            display: block;
            width: 60%;
            height: 135px;
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
            margin-right: 0;
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
            <div>
                <asp:Label for="TxtIcerik" runat="server">İçerik</asp:Label>
                <textarea id="TxtIcerik" class="auto-style2" runat="server"></textarea>
            </div>
        </div>
        <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click2"></asp:Button>
    </form>

</asp:Content>
