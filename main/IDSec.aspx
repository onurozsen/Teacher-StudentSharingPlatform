<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="IDSec.aspx.cs" Inherits="WebApplication6.IDSec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">

        <h4>Öğrenci veya Öğretmenlerin ID'lerini Bul</h4>
        <p>Kimin ID numarasını bulmak istiyorsanız o butona tıklayınız.</p>
        <hr />
        <br /> <br />

        <div style="margin-left: 25px">
            <asp:Image ID="Image1" runat="server" Width="150px" Height="145px" ImageUrl="https://i.hizliresim.com/9RDlpL.png"></asp:Image>
            <br />
            <asp:Button ID="Button1" runat="server" Width="150px" Text="Öğretmen ID" CssClass="btn btn-info" OnClick="Button1_Click" />
        </div>
         

        <div style="margin-left: 328px; margin-top: -180px;">
            <asp:Image ID="Image2" runat="server" Width="150px" Height="148px" ImageUrl="https://i.hizliresim.com/lUQWw3.png"></asp:Image>
            <br />
           
            <asp:Button ID="Button2" runat="server" Width="150px" Text="Öğrenci ID" CssClass="btn btn-info" OnClick="Button2_Click" />
        </div>



    </form>



</asp:Content>
