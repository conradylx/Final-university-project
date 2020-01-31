<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Kategorie.ascx.cs" Inherits="zad4Pai.Kontrolki.Kategorie" %>
<asp:LinqDataSource ID="KategorieLinqDataSource" ContextTypeName="zad4Pai.AdventureWorksDataContext" Select="new (ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID=null" runat="server"></asp:LinqDataSource>
<asp:Repeater ID="KategorieRepeater" runat="server" DataSourceID="KategorieLinqDataSource">
   <%-- <HeaderTemplate>
        <strong>Wybierz kategorie produktu</strong> <br />
    </HeaderTemplate>--%>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Produkty.aspx?KatID=" + Eval("ProductCategoryID") %>' Text='<%# Eval("Name") %>'>
        </asp:HyperLink> <br />
    </ItemTemplate>
</asp:Repeater>
