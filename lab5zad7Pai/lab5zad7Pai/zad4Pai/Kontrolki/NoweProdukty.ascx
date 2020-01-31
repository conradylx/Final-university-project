<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NoweProdukty.ascx.cs" Inherits="zad4Pai.Kontrolki.NoweProdukty" %>
<asp:ListView ID="NoweProduktyListView" ItemPlaceholderID="ListaPlaceHolder" runat="server">
    <LayoutTemplate>
        <asp:PlaceHolder runat="server" ID="ListaPlaceHolder"/>
    </LayoutTemplate>
    <ItemTemplate>
        <div class="OknoProduktow">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/Szczegoly.aspx?id=" + Eval("ProductID") %>' Text='<%#Eval("Name") %>' /> <br />
            <asp:Image ID="ProduktyImage" runat="server" ImageUrl='<%#"~/Miniatura.aspx?id=" + Eval("ProductID") %>'  AlternateText='<%#Eval("Name") %>'/> <br />
            Kategoria: <%# Eval("ProductCategory.Name") %> <br />
            Kolor: <%# Eval("Color") %> <br />
            Cena: <%# Eval("ListPrice", "{0:C}") %> <br />
        </div>
    </ItemTemplate>
</asp:ListView>
