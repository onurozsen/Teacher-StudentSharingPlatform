<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="WebApplication6.DuyuruGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 58%;
            height: 171px;
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
             <h4>Duyuru Güncelle</h4>
        <hr />

            <div>
                <asp:Label for="TxtDuyuruID" runat="server">Duyuru ID</asp:Label>
                <asp:TextBox ID="TxtDuyuruID" runat="server" CssClass="form-control" Enabled="false" Width="950px" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDuyuruKonu" runat="server">Duyuru Konu</asp:Label>
                <asp:TextBox ID="TxtDuyuruKonu" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
               <textarea id="TextArea1" class="auto-style1" runat="server"></textarea>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" ></asp:Button>
    </form>


</asp:Content>
