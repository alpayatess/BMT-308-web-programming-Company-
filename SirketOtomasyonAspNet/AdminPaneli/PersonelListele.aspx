<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelListele.aspx.cs" Inherits="SirketOtomasyonAspNet.AdminPaneli.PersonelListele" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">
        <div class="section-header">
            <h1>
                <div>Personel Listesi</div>
            </h1>
            <div class="section-body">
                <div style="font-style: normal" aria-orientation="vertical">
                <div class="card" style="font-style: normal" title="Personeller">
                  <div class="card-header">
                      <form runat="server">
                    <div>
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control col-md-8" style="float:left" Placeholder="Ad veya soyad"></asp:TextBox>  
                        <asp:Button ID="btnSearch" runat="server" Text="Ara" CSsClass="btn btn-primary" style="float:left" OnClick="btnSearch_Click2"/>
                    </div>


                       </form>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                        <HeaderTemplate> 
                      <table class="table table-bordered" style="font-style: normal" aria-orientation="vertical">
                          <thead>
                            <tr>
                          <th style="height: 20px">ID</th>
                          <th style="height: 20px">Adı</th>
                          <th style="height: 40px">Soyadı</th>
                          <th style="height: 40px">Birimi</th>
                          <th style="height: 40px">Telefon</th>
                          <th style="height: 40px">Adres</th>
                          <th style="height: 40px">E-mail</th>
                          <th style="height: 40px">Açıklama</th>
                          <th style="height: 40px">Giriş Tarihi</th>
                            <th style="height: 40px">Sil</th>
                            <th style="height: 40px">Güncelle</th>
                            <th style="height: 40px">Detay</th>
                        </tr>
                              </thead>
                          </HeaderTemplate>
                            <asp:Repeater ID="Repeater1" runat="server">

                                <ItemTemplate>
                                    <tbody>
                                     <tr>
                                       
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("Adi") %></td>
                            <td><%# Eval("Soyadi") %></td>
                            <td><%# Eval("Birimler.Birim") %></td>
                            <td><%# Eval("Tel_1") %></td>
                            <td><%# Eval("Adres") %></td>
                            <td><%# Eval("Email") %></td>
                            <td><%# Eval("Aciklama") %></td>
                            <td><%# Eval("GirisTarih") %></td>
                                <td><a href="/AdminPaneli/PersonelSil.aspx?gelenid=<%# Eval("ID") %> class="badge badge-danger">Sil</a></td>
                                <td><a href="/AdminPaneli/PersonelGuncelle.aspx?gelenid=<%# Eval("ID") %> class="badge badge-success">Güncelle</a></td>
                                <td><a href="/AdminPaneli/PersonelDetay.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-secondary">Detay</a></td>
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
                        <%--<li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li class="page-item">
                          <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                        </li>--%>
                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
            <div style="float:left">
                <a href="/AdminPaneli/YeniPersonel.aspx" class="btn btn-info">Yeni Personel</a>
            </div>
            <div style="float:right">
                <cc1:CollectionPager ID="CollectionPager1" runat="server" BackText="« Geri" FirstText="İlk" LastText="Son" NextText="İleri »" LabelText="Sayfa:" ShowFirstLast="True" ResultsFormat="" ControlCssClass="Sayfalama" PageSize="3"></cc1:CollectionPager>
            </div>



        </div>
    </section>
    
    <style>
        .Sayfalama a{
            padding:8px;

        }
        .Sayfalama a:hover{
            text-decoration:none;
            background-color:#808080
        }

    </style>
      
          </section>
      
          </asp:Content>
