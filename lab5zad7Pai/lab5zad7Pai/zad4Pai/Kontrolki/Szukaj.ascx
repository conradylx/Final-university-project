<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.ascx.cs" Inherits="zad4Pai.Kontrolki.Szukaj" %>
Podaj nazwe produktu:<asp:TextBox ID="nazwaTextBox" runat="server">
</asp:TextBox>
<asp:RequiredFieldValidator ID="NazwaRequiredFieldValidator" ControlToValidate="nazwaTextBox" runat="server" ErrorMessage="Podaj fragment nazwy produktu" Text="*"></asp:RequiredFieldValidator>
<ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID="nazwaTextBox" WatermarkText="Podaj nazwe produktu" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>
<asp:Button ID="szukajButton" runat="server" Text="Szukaj" OnClick="szukajButton_Click" />