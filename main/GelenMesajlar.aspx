﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="GelenMesajlar.aspx.cs" Inherits="WebApplication6.GelenMesajlar" %>

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

                       
                        <td><%#Eval("OgretmenGelenMesaj")%></td>
                        <td><%#Eval("Baslik")%></td>
                        <td><%#Eval("Icerik")%></td>
                        <td><%#Eval("Tarih")%></td>




                        <td>
                            <asp:HyperLink NavigateUrl='<% #"OgrtMesajSil.Aspx?IDD=" + Eval("IDD") %>' ID="HyperLink1"  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                           
                        </td>
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
