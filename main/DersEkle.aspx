 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="WebApplication6.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <h4>Yeni Ders Ekle</h4>
            <p>Eklemek istediğiniz yeni ders adını giriniz.</p>
            <hr />
           
            <div>
                <asp:Label for="TxtDers" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDers" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
            <br />
            
        </div>
        <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button1_Click1"></asp:Button>
    </form>

</asp:Content>
