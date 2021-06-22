<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SirketOtomasyonAspNet.AdminPaneli.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" />
    <link href="/Content/style.css" rel="stylesheet" />
</head>
<body style="background-color: #eaeaea;">
    <form id="form1" runat="server"> 
        <div class ="container" style="width:30%; background-color:white;margin-top:90px;border-radius:10px; height: 382px;">
            <div class="form-group">
                <h2 class="text-center">Kullanıcı Girişi</h2>
            </div>
            <div class="form-group"> 
                <b>Kullanıcı Adı</b><asp:TextBox ID="txtKullanıcıAdi" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">   
                <b>Şifre</b><asp:TextBox ID="txtSifre" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:CheckBox ID="CheckBox1" Text="Beni Hatırla" ForeColor="#d5d5d5" runat="server"  />
            </div>
            <div class="form-group"> 
                <asp:Button ID="btnGiris" cssClass="btn btn-danger form-control" runat="server" Text="Giriş" OnClick="btnGiris_Click" Width="395px" />
            </div>
            <div class="form-group" style="float:left">
                <a href="#">Yeni Kullanıcı</a>

            </div>
            <div class="form-group" style="float:right">
                <a href="#">Şifremi Unuttum</a> 

            </div>

        <div class="form-group text-center" style ="margin-top:70px;color:#d5d5d5;font-size:15px"> 
          -
        </div>
             </div>             
    </form>
</body>
</html>
