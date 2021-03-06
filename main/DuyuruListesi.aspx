﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="WebApplication6.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">
         <h4>Duyuru Listesi</h4>
        <hr />

        <tr>
            <th scope="col">ID</th>
            <th scope="col">Konu</th>
            <th scope="col">İçerik</th>
             <th scope="col">Öğretmen</th>
            <th scope="col">İşlemler</th>
        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("Konu")%></td>
                        <td><%#Eval("Icerik")%></td>
                        <td><%#Eval("OgretmenAdSoyad")%></td>
    
                       
                        <td>
                            <asp:HyperLink NavigateUrl='<% #"DuyuruSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1"  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<% #"DuyuruGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2"  runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>


<%--NavigateUrl='<%#"~/OgrenciGuncelle.aspx?ID="+Eval("ID")%>'--%>
