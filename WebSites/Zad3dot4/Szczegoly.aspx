<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Szczegoly.aspx.cs" Inherits="Szczegoly" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="prawidlowyView" runat="server">
            <asp:Label ID="nazwaLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:Image ID="produktImage" runat="server" />
            <br />
            Kategoria: <asp:Label ID="kategoriaLabel" runat="server" Text=""></asp:Label>
            <br />
            Cena: <asp:Label ID="cenaLabel" runat="server" Text=""></asp:Label>
            Kolor: <asp:Label ID="kolorLabel" runat="server" Text=""></asp:Label>
            <br />
            Opis:<br />
            <asp:Label ID="opisLabel" runat="server" Text="Label"></asp:Label>
        </asp:View>
        <asp:View ID="blednyView" runat="server">
            Nieprawidłowy produkt<br />
            
        </asp:View>
    </asp:MultiView>
    <br />
    <a href="Produkty.aspx">Powrót do przeglądania produktów</a>
</asp:Content>

