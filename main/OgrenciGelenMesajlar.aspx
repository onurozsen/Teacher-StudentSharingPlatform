<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGelenMesajlar.aspx.cs" Inherits="WebApplication6.OgrenciGelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    <h4>Gelen Mesajlar</h4>
    <hr />

    <table class="table table-bordered table-hover">


        <tr>

            <th scope="col">Gönderen</th>
            <th scope="col">Konu</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
            <th scope="col">İşlemler</th>

        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>


                        <td><%#Eval("OgrenciGelenMesaj")%></td>
                        <td><%#Eval("Baslik")%></td>
                        <td><%#Eval("Icerik")%></td>
                        <td><%#Eval("Tarih")%></td>




                        <td>
                            <asp:HyperLink NavigateUrl='<% #"OgrenciMesajSil1.Aspx?IDD=" + Eval("IDD") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
