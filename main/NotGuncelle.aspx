<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="WebApplication6.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
             <h4>Not Güncelle</h4>
        <hr />

            <div class="auto-style1">
                <asp:Label for="TxtDersAdi" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersAdi" runat="server" CssClass="form-control" Enabled="false" Width="950px" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrID" runat="server">Öğrenci ID</asp:Label> 
                <asp:TextBox ID="TxtOgrID" runat="server" CssClass="form-control" Enabled="false" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server">Öğrenci Ad Soyad</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control" Enabled="false" Width="950px" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtVize" runat="server">Vize</asp:Label>
                <asp:TextBox ID="TxtVize" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtFinal" runat="server">Final</asp:Label>
                <asp:TextBox ID="TxtFinal" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOdev" runat="server">Ödev</asp:Label>
                <asp:TextBox ID="TxtOdev" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtQuiz1" runat="server">Quiz1</asp:Label>
                <asp:TextBox ID="TxtQuiz1" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtQuiz2" runat="server">Quiz2</asp:Label>
                <asp:TextBox ID="TxtQuiz2" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtQuiz3" runat="server">Quiz3</asp:Label>
                <asp:TextBox ID="TxtQuiz3" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtQuiz4" runat="server">Quiz4</asp:Label>
                <asp:TextBox ID="TxtQuiz4" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOrt" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="TxtOrt" runat="server" CssClass="form-control" Enabled="false" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSonuc" runat="server">Sonuç</asp:Label>
                <asp:TextBox ID="TxtSonuc" runat="server" CssClass="form-control" Enabled="false" Width="950px"></asp:TextBox>
            </div>

        </div>
        <asp:Button ID="Button1" runat="server" Text="Hesapla" CssClass="btn btn-primary" OnClick="Button1_Click"></asp:Button>
        <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button2_Click"></asp:Button>

    </form>

</asp:Content>
