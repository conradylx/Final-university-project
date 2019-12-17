<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Szukaj.ascx.cs" Inherits="Kontrolki_Szukaj" %>
Podaj nazwę produktu:
<asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="NazwaRequiredFieldValidator" runat="server" ErrorMessage="Podaj fragment nazwy produktu" ControlToValidate="nazwaTextBox" Text="*"></asp:RequiredFieldValidator>
<asp:Button ID="szukajButton" runat="server" Text="Szukaj" OnClick="szukajButton_Click" />