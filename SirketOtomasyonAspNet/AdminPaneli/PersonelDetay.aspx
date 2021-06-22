<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelDetay.aspx.cs" Inherits="SirketOtomasyonAspNet.AdminPaneli.PersonelDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section class="section">
        <div class="section-header">
            <h1>
                <div>Yeni Personel Ekle</div>
            </h1>
            <div class="section-body">
                <div>
                <div class="card">

                  <div class="card-body">
                      <form runat="server">    
                          <div class="form-group">
                              <asp:Image ID="Image1" runat="server" class="form-control resim" Height="100px" Width="100px" />  
                              </div>
                          
                        <div class="form-group">
                          <b>Personel Adı:</b>
                            <asp:TextBox ID="txtAd" CssClass="form-group" runat="server"></asp:TextBox><br />
                          <div class="form-group">
                          <b>Personel Soyadı:</b>
                              <asp:TextBox ID="txtSoyad" CssClass="form-group" runat="server"></asp:TextBox></div><br />
                            <div class="form-group">
                          <b>Birimi:</b>
                                  <asp:TextBox ID="txtBirim" CssClass="form-group" runat="server"></asp:TextBox></div><br />
                              <div class="form-group">  
                          <b>Telefon-1:</b>
                                  <asp:TextBox ID="txtTel1" CssClass="form-group" runat="server"></asp:TextBox></div><br />
                              <div class="form-group">
                          <b>Telefon-2:</b>
                                  <asp:TextBox ID="txtTel2" CssClass="form-group" runat="server"></asp:TextBox></div><br />
                                  <div class="form-group">
                          <b>E-mail:</b>
                                      <asp:TextBox ID="txtEmail" CssClass="form-group" runat="server"></asp:TextBox></div><br />
                                      <div class="form-group">
                                           <div class="form-group">
                          <b>Maaş:</b>
                                              <asp:TextBox ID="txtMaas" CssClass="form-group" runat="server"></asp:TextBox></div><br />
                                          <div class="form-group">
                          <b>Adres:</b>
                                          <asp:TextBox ID="txtAdres" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox></div><br />
                             <div class="form-group">
                          <b>Açıklama:</b>
                                                  <asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox></div><br />        
                                                  <div class="form-group">
                                                      <b>Giriş Tarih:</b><asp:TextBox ID="txtTarih"  CssClass="form-group" runat="server"></asp:TextBox></div><br />
                            <div class="form-group"> <br /> 
                            <b>Çalışma Durumu:</b>
                                                  <asp:TextBox ID="txtAktifMi" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox></div><br />
                                                
                          
                      </div>
                    </form>
                    </div>
                  
                 </div>
                    </div>
              </div>
            </div>
           
    </section>

</asp:Content>
