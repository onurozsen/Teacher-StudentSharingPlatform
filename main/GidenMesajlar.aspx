<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GidenMesajlar.aspx.cs" Inherits="WebApplication6.GidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <h4>Gönderilen Mesajlar</h4>
    <hr />

    <table class="table table-bordered table-hover">


        <tr>
           
            <th scope="col">Alıcı</th>
            <th scope="col">Konu</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
            <th scope="col">İşlemler</th>
        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        
                        <td><%#Eval("OgretmenGidenMesaj")%></td>
                        <td><%#Eval("Baslik")%></td>
                        <td><%#Eval("Icerik")%></td>
                        <td><%#Eval("Tarih")%></td>



                        <td>
                            <asp:HyperLink NavigateUrl='<% #"OgrtMesajSil2.Aspx?IDD=" + Eval("IDD") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                        </td>
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
