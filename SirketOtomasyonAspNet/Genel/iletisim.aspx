<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="SirketOtomasyonAspNet.Genel.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>İletişim Sayfası</h2>
    <div>
        <div class="form-group" style="float:left;width:47%">
            <b>Adı Soyadı</b><asp:TextBox ID="txtAdiSoyadi" PlaceHolder="Adınız Soyadınız" cssClass="form-control" runat="server" required=""></asp:TextBox>
        </div>
         <div class="form-group" style="float:right;width:47%">
            <b>E-mail</b><asp:TextBox ID="txtEmail" cssClass="form-control" PlaceHolder="E-mail Adresiniz" runat="server" required=""></asp:TextBox>
        </div>
        <br />
        <br />
        <br /> 
        <br />
         <div class="form-group">
            <b>Başlık</b><asp:TextBox ID="txtBaslik" cssClass="form-control" PlaceHolder="Başlık" runat="server" required="" ></asp:TextBox>
        </div>
        <br />
         <div class="form-group">
            <b>Mesaj</b><asp:TextBox ID="txtMesaj" cssClass="form-control" PlaceHolder="Mesajınız" runat="server" required="" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="form-group"> 
            <asp:Button ID="btnGonder" runat="server" Text="Gönder" CssClass="btn btn-primary" OnClick="btnGonder_Click" /> 
        </div>
    </div>
    <div>
        <div class="form-group">
            <b>Şirket Adı:</b><asp:Label ID="lblSirketAdi" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <b>Telefon-1:</b><asp:Label ID="lblTel1" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <b>Telefon-2:</b><asp:Label ID="lblTel2" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <b>Fax:</b><asp:Label ID="lblFax" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <b>E-mail:</b><asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <b>Adres:</b><asp:Label ID="lblAdres" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <b>Kuruluş Tarihi:</b><asp:Label ID="lblTarih" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>
