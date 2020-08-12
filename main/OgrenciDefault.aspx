<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeFile="OgrenciDefault.aspx.cs" Inherits="WebApplication6.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div style="margin-left:255px; margin-top:15px"> 
            <asp:Image ID="Image1" runat="server" Width="140px" Height="140px" ImageUrl="https://i.hizliresim.com/arK38i.png"></asp:Image>
             </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="alert-info" OnClick="Button1_Click" style="margin-left: 557" Height="33px" Width="119px" ></asp:Button>
            <br /><br />
            <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false" Width="615px">Numara:</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false" Width="615px">Ad Soyad:</asp:TextBox>
            </div>
             <br />
            
            <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false" Width="615px">Mail:</asp:TextBox>
            </div>
             <br />

            <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false" Width="615px">Telefon:</asp:TextBox>
            </div>
             <br />
        
        </div>
              <asp:Button ID="Button2" runat="server"  Text="Güncelle" CssClass="btn btn-success" Width="119px" OnClick="Button2_Click"  />

    </form>

</asp:Content>
