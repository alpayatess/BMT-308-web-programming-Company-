<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YeniDuyuru.aspx.cs" Inherits="SirketOtomasyonAspNet.AdminPaneli.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="section">
        <div class="section-header">
            <h1>
                &nbsp;<div>Yeni Duyuru Ekle</div>
            </h1>
            <div class="section-body">
                <div>
                <div class="card">

                  <div class="card-body">
                      <form runat="server">    
                          
                        <div class="form-group">
                          <b> Başlık:</b>
                            <asp:TextBox ID="txtBaslik" CssClass="form-group" runat="server"></asp:TextBox><br />
                          <div class="form-group">
                          <b> Duyuru:</b>
                              <asp:TextBox ID="txtDuyuru" TextMode="MultiLine"  CssClass="form-group" runat="server"></asp:TextBox></div><br/>
                            <div class="form-group">
                          <b>Açıklama:</b>
                                  <asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-group" runat="server"></asp:TextBox></div><br/>                     
                                                                                     
                                <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="btnEkle_Click" /><br />
                            </div>

                          
                      </div>
                    </form>
                    </div>
                  
                 </div>
                    </div>
              </div>
            </div>
           
    </section>

</asp:Content>
