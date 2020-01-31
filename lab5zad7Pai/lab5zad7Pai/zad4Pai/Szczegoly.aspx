<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Szczegoly.aspx.cs" Inherits="zad4Pai.Szczegoly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="prawidlowyView" runat="server">
            <asp:Label ID="nazwaLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:Image ID="produktImage" runat="server" />
            <br />
            Kategoria:
            <asp:Label ID="kategoriaLabel" runat="server" Text=""></asp:Label>
            <br />
            Cena:
            <asp:Label ID="cenaLabel" runat="server" Text=""></asp:Label>
             Kolor:
            <asp:Label ID="kolorLabel" runat="server" Text=""></asp:Label>
            Opis:
            <asp:Label ID="opisLabel" runat="server" Text=""></asp:Label>
            <asp:HyperLink ID="KoszykHyperLink" runat="server" Text="Dodaj do koszyka" /> <br />
        </asp:View>
        <asp:View ID="blednyView" runat="server">
            Nieprawidlowy produkt<br />
            <a href="Produkty.aspx">Powrot do przegladania produktow</a>

        </asp:View>
    </asp:MultiView>
</asp:Content>
