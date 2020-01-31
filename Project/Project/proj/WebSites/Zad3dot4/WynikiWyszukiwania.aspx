<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="WynikiWyszukiwania.aspx.cs" Inherits="WynikiWyszukiwania" %>

<%@ Register src="Kontrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Wyniki Wyszukiwania:
    <asp:GridView ID="WynikiWyszukiwaniaGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" Width="865px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID"
                DataNavigateUrlFormatString="~/Szczegolu.aspx?id={0}"
                HeaderText="NazwaProduktu" DataTextField="Name"
                Text="Nazwa produktu" />
            <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy"
                SortExpression="ProductNumber" />
            <asp:BoundField DataField="Color" HeaderText="Kolor"
                SortExpression="Color" />
            <asp:Boundfield DataField="ListPrice" DataFormatString="{0:c}"
                HeaderText="Cena" SortExpression="ListPrice" />
        </Columns>
        
    </asp:GridView>
    <br />Szukaj:<uc1:Szukaj ID="Szukaj1" runat="server" />
<br />
</asp:Content>

