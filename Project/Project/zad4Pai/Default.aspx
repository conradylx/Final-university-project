<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zad4Pai.Default" MasterPageFile="~/SzablonStrony.Master" %>

<%@ Register Src="~/Kontrolki/NoweProduktyHorizontal.ascx" TagPrefix="uc1" TagName="NoweProduktyHorizontal" %>







<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float:left;">
        <uc1:NoweProduktyHorizontal runat="server" id="NoweProduktyHorizontal" />

    </div>
    <div>
        

    </div>
</asp:Content>
