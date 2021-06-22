<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="DuyuruListele.aspx.cs" Inherits="SirketOtomasyonAspNet.AdminPaneli.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <section class="section">
        <div class="section-header">
            <h1>
                <div>Duyurular</div>
            </h1>
            <div class="section-body">
                <div style="font-style: normal" aria-orientation="vertical">
                <div class="card" style="font-style: normal" title="Personeller">
                  <div class="card-header">
                      
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                        <HeaderTemplate> 
                      <table class="table table-bordered" style="font-style: normal" aria-orientation="vertical">
                          <thead>
                            <tr>
                          <th style="height: 20px">ID</th>
                          <th style="height: 20px">Başlık</th>
                          <th style="height: 40px">Duyuru</th>
                          <th style="height: 40px">Açıklama</th>
                          <th style="height: 40px">Tarihi</th>
                            <th style="height: 40px">Sil</th>
                            <th style="height: 40px">Güncelle</th>
                        </tr>
                              </thead>
                          </HeaderTemplate>
                            <asp:Repeater ID="Repeater1" runat="server">

                                <ItemTemplate>
                                    <tbody>
                                     <tr>
                                       
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("Baslik") %></td>
                            <td><%# Eval("Duyuru") %></td>
                            <td><%# Eval("Aciklama") %></td>
                            <td><%# Eval("Tarih") %></td>
                                <td><a href="/AdminPaneli/DuyuruSil.aspx?gelenid=<%# Eval("ID") %> class="badge badge-danger">Sil</a></td>
                                <td><a href="/AdminPaneli/DuyuruGüncelle.aspx?gelenid=<%# Eval("ID") %> class="badge badge-success">Güncelle</a></td>
                            </tr>
                                        </tbody>
                                </ItemTemplate> 

                                
                                <FooterTemplate>
                                    
                      
                         
                            
                                </FooterTemplate>
                                 
                            </asp:Repeater>
                          </table>
                             
                    </div>
                  </div>
                  <div class="card-footer text-right">
                    <nav class="d-inline-block">
                      <ul class="pagination mb-0">
                        
                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
            <div style="float:left">
                <a href="/AdminPaneli/YeniDuyuru.aspx" class="btn btn-info">Yeni Duyuru</a>
            </div>
            



        </div>
    </section>


</asp:Content>
