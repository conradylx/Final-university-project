<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Produkty.aspx.cs" Inherits="Produkty" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinqDataSource ID="KategorieLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" TableName="ProductCategories" Where="ParentProductCategoryID=null" Select="new (ProductCategoryID, Name)"></asp:LinqDataSource>
<asp:ListBox ID="KategorieListBox" runat="server" DataSourceID="KategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID" AutoPostBack="True"></asp:ListBox>
<asp:ListBox ID="PodkategorieListBox" runat="server" DataSourceID="PodkategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID" AutoPostBack="True"></asp:ListBox>
<asp:LinqDataSource ID="PodkategorieLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" EntityTypeName="" Select="new (ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID == @ParentProductCategoryID">
    <WhereParameters>
        <asp:ControlParameter ControlID="KategorieListBox" PropertyName="SelectedValue" DefaultValue="-1" Name="ParentProductCategoryID" Type="Int32"></asp:ControlParameter>
    </WhereParameters>
</asp:LinqDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ProduktyLinqDataSource" AllowPaging="True" Width="1195px">
        <Columns>
            <asp:ImageField DataAlternateTextField="Name" DataAlternateTextFormatString="Miniatura {0}" DataImageUrlField="ProductID" DataImageUrlFormatString="~/Miniatura.aspx?id={0}"></asp:ImageField>
            <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" ReadOnly="True" SortExpression="ProductNumber"></asp:BoundField>
        <asp:BoundField DataField="ListPrice" HeaderText="Cena" ReadOnly="True" SortExpression="ListPrice" DataFormatString="{0:c}"></asp:BoundField>
        <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}" DataTextField="Name" HeaderText="Nazwa produktu"></asp:HyperLinkField>

        <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" ReadOnly="True" SortExpression="ListPrice"></asp:BoundField>
    </Columns>
</asp:GridView>
<asp:LinqDataSource ID="ProduktyLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" EntityTypeName="" Select="new (ProductID, Name, ProductNumber, Color, ListPrice)" TableName="Products" Where="ProductCategoryID == @ProductCategoryID">
    <WhereParameters>
        <asp:ControlParameter ControlID="PodkategorieListBox" PropertyName="SelectedValue" DefaultValue="-1" Name="ProductCategoryID" Type="Int32"></asp:ControlParameter>
    </WhereParameters>
</asp:LinqDataSource>
    
</asp:Content>

