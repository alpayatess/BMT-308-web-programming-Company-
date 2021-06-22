<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="birimlerdetay.aspx.cs" Inherits="SirketOtomasyonAspNet.Genel.birimler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <style>
        .cerceve{
            padding:5px;
            border:1px solid gray;
            width:100%;
        }
    </style>
    <h2>
        <asp:Label ID="lblBirim" runat="server" Text="Label"></asp:Label>
    </h2>
    <div>
        <asp:Label ID="lblAciklama" runat="server" Text="Label"></asp:Label>
    </div>
    <br />
    <br />
    <div>
        <h2>Birimde Çalışan Personeller</h2>
        <div>
            <asp:Repeater ID="Repeater1" runat="server">    
                <ItemTemplate>
                    <div class="cerceve">
                  
                    <div>
                        <label>Birim</label><%# Eval("Birim")%>
                    </div>
                    <div>
                        <label>Açıklama:</label><%# Eval("Aciklama")%>
                    </div>
                   
                    
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
