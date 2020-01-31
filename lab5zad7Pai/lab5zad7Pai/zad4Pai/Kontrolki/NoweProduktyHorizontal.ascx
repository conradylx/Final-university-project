<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NoweProduktyHorizontal.ascx.cs" Inherits="zad4Pai.Kontrolki.NoweProduktyHorizontal" %>
<asp:ListView ID="NoweProduktyListView" ItemPlaceholderID="ListaPlaceHolder" runat="server">
    <LayoutTemplate>
        <strong>Nasze nowe produkty:</strong><br />
        <asp:PlaceHolder runat="server" ID="ListaPlaceHolder"/>
    </LayoutTemplate>
    <ItemTemplate>
        <div class="OknoProduktow1">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/Szczegoly.aspx?id=" + Eval("ProductID") %>' Text='<%#Eval("Name") %>' /> <br />
            <asp:Image ID="ProduktyImage" runat="server" ImageUrl='<%#"~/Miniatura.aspx?id=" + Eval("ProductID") %>'  AlternateText='<%#Eval("Name") %>'/> <br />
            Kategoria: <%# Eval("ProductCategory.Name") %> <br />
            Kolor: <%# Eval("Color") %> <br />
            Cena: <%# Eval("ListPrice", "{0:C}") %> <br />
        </div>
    </ItemTemplate>
</asp:ListView>