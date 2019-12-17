<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zarejestruj.aspx.cs" Inherits="Zarejestruj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Odpowiedź:" AnswerRequiredErrorMessage="Odpowiedź jest wymagana." CompleteSuccessText="Twoje konto zostało pomyślnie założone." ConfirmPasswordCompareErrorMessage="Hasła nie są takie same." ConfirmPasswordLabelText="Powtórz hasło:" ConfirmPasswordRequiredErrorMessage="Podanie hasła jest wymagane." CreateUserButtonText="Stwórz konto" EmailRegularExpressionErrorMessage="Podaj inny adres email." EmailRequiredErrorMessage="Email jest wymagany." OnCreatedUser="CreateUserWizard1_CreatedUser" PasswordLabelText="Hasło:" PasswordRegularExpressionErrorMessage="Proszę podaj inne hasło." PasswordRequiredErrorMessage="Hasło jest wymagane." QuestionLabelText="Pytanie bezpieczeństwa:" QuestionRequiredErrorMessage="Pytanie bezpieczeństwa jest wymagane." UserNameLabelText="Nazwa użytkownika" UserNameRequiredErrorMessage="Nazwa użytkownika jest wmagana.">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

