<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="WynikiWyszukiwania.aspx.cs" Inherits="zad4Pai.WynikiWyszukiwania" %>
<%@ Register src="Kontrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Wyniki wyszukiwania:
    <asp:GridView ID="WynikiWyszukiwaniaGridView" AllowPaging="True" AutoGenerateColumns="False" EnableViewState="False" DataKeyNames="ProductID" runat="server">
            <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}" DataTextField="Name" HeaderText="Nazwa produktu" />
            <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" SortExpression="ProductNumber" />
            <asp:BoundField DataField="Color" HeaderText="Kolor" SortExpression="Color" />
            <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" HeaderText="Cena" SortExpression="ListPrice" />
        </Columns>
    </asp:GridView>
    <br /> Szukaj:
    <br />
    <uc1:Szukaj ID="Szukaj1" runat="server" />
</asp:Content>
