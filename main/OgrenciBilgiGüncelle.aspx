<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciBilgiGüncelle.aspx.cs" Inherits="WebApplication6.OgrenciBilgiGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <h4>Güncelle</h4>

            <p>Sizinle iletişimde kalabilmemiz için lütfen güncel bilgilerinizi giriniz.</p>
            <hr />



            <div>
                <asp:Label for="TextBox1" runat="server">ID</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false" Width="600px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TextBox2" runat="server">Mail</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="600px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBox3" runat="server">Telefon</asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="600px"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-success" Width="119px" OnClick="Button2_Click" />

        </div>
    </form>

</asp:Content>
