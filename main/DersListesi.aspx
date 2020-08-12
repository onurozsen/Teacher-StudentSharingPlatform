<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="WebApplication6.DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   

    <table class="table table-bordered table-hover">
         <h4>Dersler</h4>
        <p>Burada yeni ders ekleyebilirsiniz ve varolan dersleri güncelleyebilirsiniz.</p>
        <hr />


        <tr>
            <th scope="col">Ders ID</th>
            <th scope="col">Ders Adı</th>
            <th scope="col">İşlemler</th>


        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>

                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("Ad")%></td>

                        <td>
                            <asp:HyperLink NavigateUrl='<% #"DersSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<% #"DersGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>

                    </tr>

                </ItemTemplate>


            </asp:Repeater>


        </tbody>
    </table>
     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
            
</asp:Content>
