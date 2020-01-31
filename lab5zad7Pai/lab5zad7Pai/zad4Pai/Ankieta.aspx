<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ankieta.aspx.cs" Inherits="zad4Pai.Ankieta" MasterPageFile="~/SzablonStrony.Master" Title="Ankieta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <div>
            <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/Adv/adv.xml" />
			<br />
        <asp:MultiView ID="mainMultiView" runat="server" >
        
            <asp:View ID="ankietaGlowna" runat="server">
                Imię:
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID="imieTextBox" WatermarkText="Podaj imie" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imieTextBox"
                    ErrorMessage="Pole Imię jest wymagane">*</asp:RequiredFieldValidator><br />
            Płeć:
                <asp:DropDownList ID="plecDropDownList" runat="server">
                    <asp:ListItem Value="K">Kobieta</asp:ListItem>
                    <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
                    <asp:ListItem Selected="True" Value="N">Nie podaję</asp:ListItem>
                </asp:DropDownList><br />
                e-mail:
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" TargetControlID="emailTextBox" WatermarkText="Podaj email" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Pole e-mail jest wymagane">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Nieprawidłowy adres e-mail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                telefon:
                <asp:TextBox ID="telTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" TargetControlID="telTextBox" WatermarkText="Podaj telefon" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="telTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="telTextBox" 
                    ErrorMessage="Nieprawidłowy numer telefonu - podaj same cyfry" 
                    ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                <br />
                ulica:
                <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox><br />
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" TargetControlID="ulicaTextBox" WatermarkText="Podaj ulice" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                numer domu
                <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox><br />
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender7" TargetControlID="domTextBox" WatermarkText="Podaj nr domu" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="domTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>
                numer mieszkania:
                <asp:TextBox ID="mieszTextBox" runat="server"></asp:TextBox><br />
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender8" TargetControlID="mieszTextBox" WatermarkText="Podaj nr mieszkania" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" TargetControlID="mieszTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>
                kod pocztowy:
                <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox><br />
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" TargetControlID="kodTextBox" WatermarkText="Podaj kod pocztowy" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" TargetControlID="kodTextBox" FilterType="Custom, Numbers" ValidChars="-" runat="server"></ajaxToolkit:FilteredTextBoxExtender>
                miejscowość:
                <asp:TextBox ID="miejscTextBox" runat="server"></asp:TextBox><br />
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" TargetControlID="miejscTextBox" WatermarkText="Podaj miejscowosc" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                <asp:MultiView ID="ankietaMultiView" runat="server">
                    <asp:View ID="nowyView" runat="server">
                        Wzrost:
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" TargetControlID="wzrostTextBox" WatermarkText="Podaj wzrost" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                         <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" TargetControlID="wzrostTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="wzrostTextBox" 
                            ErrorMessage="Nieprawidłowy wzrost - podaj wzrost w cm" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="wzrostTextBox" ErrorMessage="Wzrost niepoprawny" 
                            MaximumValue="250" MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                        <br />
                        Rama roweru:
                        <asp:DropDownList ID="ramaDropDownList" runat="server">
                            <asp:ListItem Value="D">Damska</asp:ListItem>
                            <asp:ListItem Value="M">Męska</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Bez znaczenia</asp:ListItem>
                        </asp:DropDownList><br />
                        Marka:
                        <asp:ListBox ID="markaListBox" runat="server">
                            <asp:ListItem Value="C">Cateye</asp:ListItem>
                            <asp:ListItem Value="G">Giant</asp:ListItem>
                            <asp:ListItem Value="Ke">Kenda</asp:ListItem>
                            <asp:ListItem Value="Kr">Kross</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Bez znaczenia</asp:ListItem>
                        </asp:ListBox><br />
                        Rodzaj roweru:
                        <asp:ListBox ID="rodzajListBox" runat="server">
                            <asp:ListItem Value="G">G&#243;rski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                        </asp:ListBox><br />
                        Kwota planowanych wydatków:
                        <asp:RadioButtonList ID="cenaRadioButtonList" runat="server">
                            <asp:ListItem Selected="True" Value="0">Nie ma znaczenia</asp:ListItem>
                            <asp:ListItem Value="5">do 500 zł</asp:ListItem>
                            <asp:ListItem Value="10">500 - 1000 zł</asp:ListItem>
                            <asp:ListItem Value="15">1000 - 1500 zł</asp:ListItem>
                            <asp:ListItem Value="20">pow. 1500</asp:ListItem>
                            <asp:ListItem Value="1">Zakres</asp:ListItem>
                        </asp:RadioButtonList>od
                        <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" TargetControlID="odTextBox" WatermarkText="Podaj wartosc od" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                         <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" TargetControlID="odTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="odTextBox" 
                            ErrorMessage="Nieprawidłowa kwota - podaj zaokrąglając do pełnych złotych" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        do
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender11" TargetControlID="doTextBox" WatermarkText="Podaj wartosc do" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>

                         <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" TargetControlID="doTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="doTextBox" 
                            ErrorMessage="Nieprawidłowa kwota - podaj zaokrąglając do pełnych złotych" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="odTextBox" ControlToValidate="doTextBox" 
                            ErrorMessage="do musi być większe" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>
                        <br />
                    </asp:View>
                    <asp:View ID="wycieczkiView" runat="server">
                        Rodzaj posiadanego roweru:
                        <asp:ListBox ID="posiadaListBox" runat="server">
                            <asp:ListItem Value="G">G&#243;rski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                        </asp:ListBox><br />
                        Data ostatniej wycieczki:<%--<asp:Calendar ID="ostatniaCalendar" runat="server" 
                            onselectionchanged="ostatniaCalendar_SelectionChanged">
                        </asp:Calendar>--%>
                        <asp:TextBox ID="ostatniaTextBox" runat="server"></asp:TextBox>
                        <%--<ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender12" TargetControlID="ostatniaTextBox" WatermarkText="kliknij aby podac date ostatniej wycieczki" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>--%>
                        <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="ostatniaTextBox" FirstDayOfWeek="Monday" runat="server"></ajaxToolkit:CalendarExtender>--%>
                         <ajaxToolkit:CalendarExtender ID="ex1" runat="server" TargetControlID="ostatniaTextBox"/>
                        <br />
                        Data następnej wycieczki:
                         <asp:TextBox ID="nastepnaTextBox" runat="server"></asp:TextBox>
                      <%--   <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender13" TargetControlID="nastepnaTextBox" WatermarkText="kliknij aby podac date nastepnej wycieczki" WatermarkCssClass="watermarked" runat="server"></ajaxToolkit:TextBoxWatermarkExtender>--%>
                         <ajaxToolkit:CalendarExtender ID="ex2" runat="server" TargetControlID="nastepnaTextBox"/>
                       <%-- <asp:Calendar ID="nastepnaCalendar" runat="server" 
                            OnSelectionChanged="nastepnaCalendar_SelectionChanged"></asp:Calendar>--%>
                        <br />
                        Ilość kilometrów średnio na jednej wycieczce:
                        <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox><br />
                         <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" TargetControlID="kmTextBox" FilterType="Numbers" runat="server"></ajaxToolkit:FilteredTextBoxExtender>
                        Poziom umiejętności:
                        <asp:DropDownList ID="poziomDropDownList" runat="server">
                            <asp:ListItem Value="P">Początkujący</asp:ListItem>
                            <asp:ListItem Value="S">Średniozaawansowany</asp:ListItem>
                            <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </asp:View>
                </asp:MultiView>Preferowany rodzaj kontaktu:
                <asp:CheckBoxList ID="kontaktCheckBoxList" runat="server">
                    <asp:ListItem Value="E">E-mail</asp:ListItem>
                    <asp:ListItem Value="T">Telefon</asp:ListItem>
                    <asp:ListItem Value="O">Osobisty</asp:ListItem>
                </asp:CheckBoxList><br />
                <asp:Button ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="Wyślij" /></asp:View>
            &nbsp;
            <asp:View ID="podsumowanie" runat="server">
                Dziękujemy za wypełnienie ankiety <a href="Default.aspx">Default.aspx</a><br />
                Podane imię:
                <asp:Label ID="imieLabel" runat="server"></asp:Label>
                <br />
                Podany adres e-mail:
                <asp:Label ID="emailLabel" runat="server"></asp:Label>
            </asp:View>
        </asp:MultiView>
    </div>


    </asp:Content>

