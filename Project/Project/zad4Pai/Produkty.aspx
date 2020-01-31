<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Produkty.aspx.cs" Inherits="zad4Pai.Produkty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function abortPB() {
            var obj = Sys.WebForms.PageRequestManager.getInstance();
            if(obj.get_isInAsyncPostBack())
            {
                obj.abortPostBack();
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:LinqDataSource ID="KategorieLinqDataSource" ContextTypeName="zad4Pai.AdventureWorksDataContext" TableName="ProductCategories" Where="ParentProductCategoryID=null" Select="new(ProductCategoryID, Name)" runat="server"></asp:LinqDataSource>
            <asp:LinqDataSource ID="PodkategorieLinqDataSource" runat="server" ContextTypeName="zad4Pai.AdventureWorksDataContext" EntityTypeName="" Select="new (ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID == @ParentProductCategoryID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="KategorieListBox" DefaultValue="-1" Name="ParentProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            <asp:LinqDataSource ID="ProduktyLinqDataSource" runat="server" ContextTypeName="zad4Pai.AdventureWorksDataContext" EntityTypeName="" Select="new (ProductID, Name, ProductNumber, Color, ListPrice)" TableName="Products" Where="ProductCategoryID == @ProductCategoryID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="PodkategorieListBox" DefaultValue="-1" Name="ProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            <asp:ListBox ID="KategorieListBox" runat="server" AutoPostBack="True" DataSourceID="KategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID" OnSelectedIndexChanged="KategorieListBox_SelectedIndexChanged"></asp:ListBox>
            <asp:ListBox ID="PodkategorieListBox" runat="server" AutoPostBack="True" DataSourceID="PodkategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID"></asp:ListBox>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ProduktyLinqDataSource" EnableViewState="False" Width="1067px">
                <Columns>
                    <asp:ImageField DataAlternateTextField="Name" DataAlternateTextFormatString="Miniatura {0}" DataImageUrlField="ProductID" DataImageUrlFormatString="~/Miniatura.aspx?id={0}">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}" DataTextField="Name" HeaderText="Nazwa produktu" />
                    <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" SortExpression="ProductNumber" />
                    <asp:BoundField DataField="Color" HeaderText="Kolor" SortExpression="Color" />
                    <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" HeaderText="Cena" SortExpression="ListPrice" />
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~Zakupy.aspx?id={0}" HeaderText="Dodaj do koszyka" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img src="Images/ajax-loader.gif" />
            <br />
            <input type="button" id="abortbutton" onclick="abortPB()" value="Anuluj aktualizacje" />
        </ProgressTemplate>
    </asp:UpdateProgress>

</asp:Content>
