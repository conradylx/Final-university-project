<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Zaloguj.aspx.cs" Inherits="zad4Pai.Zaloguj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        Zaloguj się w serwisie<asp:Login ID="Login1" runat="server" FailureText="Logowanie nie powiodlo sie, Upewnij sie, że poprawnie wpisałeś nazwę i hasło" LoginButtonText="Zaloguj" PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Wprowadz haslo" RememberMeText="Zapamietaj mnie" UserNameLabelText="Login:" UserNameRequiredErrorMessage="Wprowadz nazwe" TitleText="Zaloguj">
        </asp:Login>
      <%--  <div>
         <h4 style="font-size: medium">Zaloguj</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="UserName">Nazwa użytkownika</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="Password">Hasło
               </asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                  <asp:Button runat="server" OnClick="SignIn" Text="Zaloguj" />
               </div>
            </div>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Wyloguj" />
               </div>
            </div>
         </asp:PlaceHolder>
      </div>--%>
        <a href="Odzykiwanie.aspx">Zapomnialem hasla</a>
    
</asp:Content>
