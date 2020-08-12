<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="IDbulma1.aspx.cs" Inherits="WebApplication6.IDbulma1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h4>Öğretmen ID Numaraları</h4>
    <p>Bu kısımdan aradığınız öğretmenin ID numarasını bulabilirsiniz.</p>
    <hr />
    <table class="table table-bordered table-hover">


        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ad Soyad</th>
            <th scope="col">Görev</th>
             <th scope="col">Branş</th>
        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("AdSoyadListesi")%></td>
                        <td><%#Eval("RolAdı")%></td>
                         <td><%#Eval("BransAdı")%></td>


                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
