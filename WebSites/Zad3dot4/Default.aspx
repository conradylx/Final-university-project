<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="Kontrolki/NoweProdukty.ascx" tagname="NoweProdukty" tagprefix="uc1" %>

<%@ Register src="Kontrolki/WybraneProdukty.ascx" tagname="WybraneProdukty" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Pierwszy obszar boczny<uc2:WybraneProdukty ID="WybraneProdukty1" runat="server" />
&nbsp;
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:NoweProdukty ID="NoweProdukty2" runat="server" />
</asp:Content>

