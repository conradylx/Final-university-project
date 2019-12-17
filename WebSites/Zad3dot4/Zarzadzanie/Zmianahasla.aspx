<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zmianahasla.aspx.cs" Inherits="Zarzadzanie_Zmianahasla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" ChangePasswordButtonText="Zmień hasło:" ChangePasswordTitleText="Zmień hasło:" ConfirmNewPasswordLabelText="Potwierdź hasło:" NewPasswordLabelText="Nowe hasło:" PasswordLabelText="Hasło:" UserNameLabelText="Nazwa użytkownika:">
    </asp:ChangePassword>
</asp:Content>

