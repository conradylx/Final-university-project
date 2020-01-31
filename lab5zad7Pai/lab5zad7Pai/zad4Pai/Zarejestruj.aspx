<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Zarejestruj.aspx.cs" Inherits="zad4Pai.Zarejestruj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" UserNameRequiredErrorMessage="Nazwa uzytkownika jest wymagana." QuestionRequiredErrorMessage="Pytanie kontrolne jest wymagane." PasswordRequiredErrorMessage="Haslo jest wymagane" PasswordRegularExpressionErrorMessage="Wprowadz inne haslo." EmailRequiredErrorMessage="Email jest wymagany." EmailRegularExpressionErrorMessage="Wprowadz inny email." ConfirmPasswordRequiredErrorMessage="Haslo potwierdzajace jest wymmagane." ConfirmPasswordCompareErrorMessage="Hasla nie sa takie same." AnswerRequiredErrorMessage="Odpowiedz jest wymagana.">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
   <%-- <div>
            <h4 style="font-size: medium">Zarejestruj nowego uzytkownika</h4>
            <hr />
            <p>
                <asp:Literal runat="server" ID="StatusMessage" />
            </p>
            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="UserName">Nazwa uzytkownika</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="UserName" />
                </div>
            </div>
            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="Password">Haslo</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                </div>
            </div>
            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Potwierdz haslo</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                </div>
            </div>
            <div>
                <div>
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Zarejestruj" />
                </div>
            </div>
        </div>--%>
</asp:Content>
