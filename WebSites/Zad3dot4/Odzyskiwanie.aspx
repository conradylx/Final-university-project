<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Odzyskiwanie.aspx.cs" Inherits="Odzyskiwanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerLabelText="Odpowiedź:" AnswerRequiredErrorMessage="Odpowiedź jest wymagana." QuestionLabelText="Pytanie:" SubmitButtonText="Zatwierdź" UserNameInstructionText="Podaj nazwę użytkownika aby otrzymać hasło." UserNameLabelText="Nazwa użytkownika:" UserNameRequiredErrorMessage="Nazwa użytkownika jest wymagana." UserNameTitleText="Zapomniałeś hasła?">
    </asp:PasswordRecovery>
</asp:Content>

