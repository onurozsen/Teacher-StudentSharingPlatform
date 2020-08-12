<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeFile="OgrenciNotu.aspx.cs" Inherits="WebApplication6.OgrenciNotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h4>Sınav Notları</h4>
    <hr />

     <table class="table table-bordered table-hover">


        <tr>
           <%-- <th scope="col">ID</th>--%>
            <th scope="col">Ad Soyad</th>
            <th scope="col">Ders</th>
            <th scope="col">Vize</th>
            <th scope="col">Final</th>
            <th scope="col">Ödev</th>
            <th scope="col">Quiz1</th>
            <th scope="col">Quiz2</th>
            <th scope="col">Quiz3</th>
            <th scope="col">Quiz4</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Sonuç</th>
          

        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                       <%-- <td><%#Eval("OgrenciID")%></td>--%>
                        <td><%#Eval("ÖğrenciAdSoyad")%></td>
                        <td><%#Eval("DersinAdı")%></td>
                        <td><%#Eval("Vize")%></td>
                        <td><%#Eval("Final")%></td>
                        <td><%#Eval("Odev")%></td>
                        <td><%#Eval("Quiz1")%></td>
                        <td><%#Eval("Quiz2")%></td>
                        <td><%#Eval("Quiz3")%></td>
                        <td><%#Eval("Quiz4")%></td>
                        <td><%#Eval("Ortalama")%></td>
                        <td><%#Eval("Sonuc")%></td>




                       
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
