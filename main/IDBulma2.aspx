<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="IDBulma2.aspx.cs" Inherits="WebApplication6.IDBulma2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h4>Öğrenci ID Numaraları</h4>
    <p>Bu kısımdan aradığınız öğrencinin ID numarasını bulabilirsiniz.</p>
    <hr />
    <table class="table table-bordered table-hover">


        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ad Soyad</th>
            <th scope="col">Görev</th>

        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("AdSoyadListesii")%></td>
                        <td><%#Eval("RolAdıı")%></td>

                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
