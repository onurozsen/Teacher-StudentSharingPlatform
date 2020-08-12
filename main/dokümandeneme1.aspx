<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dokümandeneme1.aspx.cs" Inherits="WebApplication6.dokümandeneme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-info" OnClick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMesaj" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
