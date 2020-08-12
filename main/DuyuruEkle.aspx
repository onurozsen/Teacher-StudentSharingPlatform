<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="WebApplication6.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 60%;
            height: 136px;
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

        <h4>Duyuru Ekle</h4>
        <p>Öğrencileriniz için yeni bir duyuru paylaşınız.</p>
        <hr />


        <div class="form-group">


            <div>
                <asp:Label for="DropDownList1" runat="server">Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="975px"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDuyuruKonu" runat="server">Duyuru Konusu</asp:Label>
                <asp:TextBox ID="TxtDuyuruKonu" runat="server" CssClass="form-control" Width="975px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server">Duyuru İçeriği</asp:Label>
               <textarea id="TextArea1" class="auto-style1" runat="server"></textarea>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button1_Click1"></asp:Button>
    </form>
</asp:Content>
