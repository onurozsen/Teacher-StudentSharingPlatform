<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="WebApplication6.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
         <h4>Not Listesi</h4>
        <hr />

        <tr>
            <th scope="col">ID</th>
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
            <th scope="col">İşlemler</th>

        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        <td><%#Eval("OgrenciID")%></td>
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




                        <td>
                            <asp:HyperLink NavigateUrl='<%#"NotGuncelle.Aspx?NotID="+ Eval("NotID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>

</asp:Content>
