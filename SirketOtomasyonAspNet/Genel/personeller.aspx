<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="personeller.aspx.cs" Inherits="SirketOtomasyonAspNet.Genel.personeller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .cerceve{
            padding:5px;
            border:1px solid gray;
            width:100%;
        }
    </style>
    <div>
        <h2>Personeller</h2>
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="cerceve">
                    <div>
                       <img src="<%# Eval("Resim") %>"widht="100" height="100" />
                    </div>
                        <div> 
                        <label>Birim:</label><%#Eval("Birimler.Birim") %>
                    </div>
                    <div> 
                        <label>Ad Soyad:</label><%#Eval("Adi") %><%#Eval("Soyadi") %>
                    </div>
                    
                    
                    <div>
                        <label>E-mail:</label><%# Eval("Email")%>
                    </div>
                    <div>
                        <label>Tanıtım:</label><%# Eval("Aciklama")%>
                    </div>
                    </div>
                    <br />
                    
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
