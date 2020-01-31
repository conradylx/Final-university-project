<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Szukaj.aspx.cs" Inherits="Szukaj" %>

<%@ Register src="Kontrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Szukaj ID="Szukaj1" runat="server" />
</asp:Content>

