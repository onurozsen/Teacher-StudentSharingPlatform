<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="WebApplication6.DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">
        <div class="form-group">
             <h4>Ders Güncelle</h4>
             
        <hr />

            <div>
                <asp:Label for="TxtDersID" runat="server">Ders ID</asp:Label>
                <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control" Enabled="false" Width="950px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control" Width="950px"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click"></asp:Button>
    </form>

</asp:Content>
