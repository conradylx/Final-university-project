<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zaloguj.aspx.cs" Inherits="Zaloguj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Zaloguj się w serwisie
        <asp:Login ID="Login1" runat="server" 
            FailureText="Logowanie nie powiodło się. Upewnij się, że poprawnie wpisałeś nazwę użytkownika i hasło." 
            LoginButtonText="Zaloguj" 
            PasswordLabelText="Hasło" 
            PasswordRequiredErrorMessage="Wprowadź hasło." 
            RememberMeText="Zapamiętaj mnie"
             UserNameLabelText="Login:" 
            UserNameRequiredErrorMessage="Wprowadź nazwę.">
        </asp:Login>
        <a href="Odzyskiwanie.aspx">Zapomniałem hasła</a>
    </p>
</asp:Content>

