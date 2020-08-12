<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication6.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style2 {
            height: 1015px;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
        }
        .newStyle2 {
            font-family: "Comic Sans MS";
        }
        .newStyle3 {    
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2" style="background-image: url('ee.jpg')">
        <div style="width:700px; margin:auto;">
            
            <br /><br /><br /><br /><br />
            <h2 class="newStyle2">Öğrenci-Öğretmen Bilgi ve <span class="newStyle2">Paylaşım </span>Platformu</h2>
             <br /><br /><br /><br /><br />
            
            <div style="margin:auto" class="text-center"> 
            <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl="~/depositphotos_129875174-stock-illustration-user-icon-human-person-sign.jpg"></asp:Image>
             </div>
                <br />
             <br /> 
            <div>
                <strong>
                <asp:Label for="TxtNumara" runat="server">Kullanıcı Adı</asp:Label>
                </strong>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="auto-style1" Height="32px" Width="700px" ></asp:TextBox>
            </div>
            <br />

             <div>
                 <strong>
                <asp:Label for="TxtSifre" runat="server">Şifre</asp:Label>
                 </strong>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="auto-style1" Height="32px" Width="700px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            
             <strong>
            
                 <asp:Button ID="Button4" runat="server"  Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" style="font-weight: bold" />
            <br /> <br />
                 <asp:Button ID="Button2" runat="server"  Text="Şifremi Unuttum" CssClass="btn btn-default" Width="210px" />
            <asp:Button ID="Button1" runat="server"  Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="272px"  style="font-weight: bold" OnClick="Button1_Click1"  />
             <asp:Button ID="Button3" runat="server"  Text="Admin Girişi" CssClass="btn btn-info" Width="210px" style="font-weight: bold" OnClick="Button3_Click" />
            </strong>
        </div>
    </form>
</body>
</html>
