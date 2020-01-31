<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="WP.aspx.cs" Inherits="zad4Pai.Zarzadzanie.WP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Zarządzanie kontrolkami WebPart. <br />
    Wybierz tryb: <asp:DropDownList ID="trybDropDownList" AutoPostBack="true" runat="server" OnSelectedIndexChanged="trybDropDownList_SelectedIndexChanged">
        <asp:ListItem Value="0">Przeglądaj</asp:ListItem>
        <asp:ListItem Value="1">Projektuj</asp:ListItem>
        <asp:ListItem Value="2">Edytuj</asp:ListItem>
        <asp:ListItem Value="3">Katalog</asp:ListItem>
    </asp:DropDownList>
    <asp:EditorZone ID="EditorZone1" runat="server">
        <ZoneTemplate>
            <asp:AppearanceEditorPart ID="apperanceEditorPart1" runat="server">
            </asp:AppearanceEditorPart>
        </ZoneTemplate>
    </asp:EditorZone>
    <asp:CatalogZone ID="CatalogZone1" runat="server"><ZoneTemplate><asp:PageCatalogPart ID="PageCatalogPart1" runat="server" /></ZoneTemplate></asp:CatalogZone>
    
</asp:Content>
