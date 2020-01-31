<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Odzykiwanie.aspx.cs" Inherits="zad4Pai.Odzykiwanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" SubmitButtonText="Ok" SuccessText="Hasło zostało wysłane do Ciebie." UserNameFailureText="Spróbuj ponownie później." UserNameInstructionText="Wpisz swoją nazwę użytkownika żeby odzyskać hasło." UserNameLabelText="Nazwa:" UserNameTitleText="Zapomniales hasla?"></asp:PasswordRecovery>
</asp:Content>
