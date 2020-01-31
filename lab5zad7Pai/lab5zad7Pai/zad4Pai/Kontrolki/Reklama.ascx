<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Reklama.ascx.cs" Inherits="zad4Pai.Kontrolki.Reklama" %>
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Interval="6000"></asp:Timer>
        <asp:AdRotator runat="server" ID="adrotator1" AdvertisementFile="~/Adv/adv.xml" CssClass="ad"></asp:AdRotator>
        <ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" TargetControlID="adrotator1" HorizontalSide="Right" runat="server"></ajaxToolkit:AlwaysVisibleControlExtender>
    </ContentTemplate>
</asp:UpdatePanel>
