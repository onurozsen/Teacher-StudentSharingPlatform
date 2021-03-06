﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OgretmenListesi.aspx.cs" Inherits="WebApplication6.OgretmenListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<table class="table table-bordered table-hover">
     <h4>Öğretmen Listesi</h4>
        <hr />

        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ad</th>
            <th scope="col">Soyad</th>
            <th scope="col">Mail</th>
            <th scope="col">Telefon</th>
            <th scope="col">Adres</th>
            <th scope="col">Şifre</th>
            <th scope="col">İşlemler</th>
        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("Ad")%></td>
                        <td><%#Eval("Soyad")%></td>
                        <td><%#Eval("Mail")%></td>
                        <td><%#Eval("Tel")%></td>
                        <td><%#Eval("Adres")%></td>
                        <td><%#Eval("Sifre")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgretmenSil.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgretmenGuncelle.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>


</asp:Content>
