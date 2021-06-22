<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="SirketOtomasyonAspNet.Genel.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Şirket Hakkında</h2>
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div>
                    <%#Eval("Hakkinda") %>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
