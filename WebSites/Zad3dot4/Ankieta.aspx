<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ankieta.aspx.cs" Inherits="Ankieta" MasterPageFile="~/SzablonStrony.master" Title="Ankieta"%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <a href="">Nowy klient</a>
    <a href="">Posiadam rower</a>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:MultiView ID="mainMultiView" runat="server">
            <asp:View ID="ankietaGlowna" runat="server">Imię:<br />
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                <br />
                Płeć<br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="m">mężczyzna</asp:ListItem>
                    <asp:ListItem Value="k">kobieta</asp:ListItem>
                    <asp:ListItem Selected="True" Value="n">nie podaję</asp:ListItem>
                </asp:DropDownList>
                <br />
                <div>
                     email
                     <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                </div>
                <div>
                     telefon
                     <asp:TextBox ID="telefonTextBox" runat="server"></asp:TextBox>
                </div>
                <div>
                     ulica
                     <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                </div>
                <div>
                     numer Domu
                     <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox>
                </div>
                 <div>
                     numer mieszkania
                     <asp:TextBox ID="mieszkanieTextBox" runat="server"></asp:TextBox>
                </div>
                 <div>
                     kod pocztowy
                     <asp:TextBox ID="kodPocztowyTextBox" runat="server"></asp:TextBox>
                </div>
                 <div>
                     miejscowość
                     <asp:TextBox ID="miejscowoscTextBox" runat="server"></asp:TextBox>
                </div>

                <asp:MultiView ID="ankietaMultiView" runat="server">
                    <asp:View ID="nowyView" runat="server">wzrost:<br />
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <br />
                        rama roweru:<br /> :<asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="d">damska</asp:ListItem>
                            <asp:ListItem Value="m">męska</asp:ListItem>
                            <asp:ListItem Value="n">nie ma znaczenia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        marka:<br />
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="c">Cateye</asp:ListItem>
                            <asp:ListItem Value="g">Giant</asp:ListItem>
                            <asp:ListItem Value="ke">Kenda</asp:ListItem>
                            <asp:ListItem Value="kr">Kross</asp:ListItem>
                            <asp:ListItem Selected="True" Value="n">Nie ma znaczenia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        rodzaj roweru:<br />
                        <asp:ListBox ID="rodzajListBox" runat="server">
                            <asp:ListItem Value="g">Górski</asp:ListItem>
                            <asp:ListItem Value="m">Miejski</asp:ListItem>
                            <asp:ListItem Value="s">Szosowy</asp:ListItem>
                            <asp:ListItem Value="b">BMX</asp:ListItem>
                            <asp:ListItem Value="d">Dziecięcy</asp:ListItem>
                            <asp:ListItem Value="n">Nie wiem</asp:ListItem>
                        </asp:ListBox>
                        <br />
                        Kwota planowanych wydatków:<br />
                        <asp:RadioButtonList ID="zakresRadioList" runat="server">
                            <asp:ListItem Value="0">Nie ma znaczenia</asp:ListItem>
                            <asp:ListItem Value="5">do 500zł</asp:ListItem>
                            <asp:ListItem Value="10">500zł-100zł</asp:ListItem>
                            <asp:ListItem Value="15">1000zł-1500zł</asp:ListItem>
                            <asp:ListItem Value="20">pow. 1500zł</asp:ListItem>
                            <asp:ListItem Value="1">Zakres</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        od:<br />
                        <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                        <br />
                        do:<br />
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>

                         <p>
            Preferowany rodzaj kontaktu:</p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                <asp:ListItem Value="e">email</asp:ListItem>
                <asp:ListItem Value="t">telefon</asp:ListItem>
                <asp:ListItem Value="o">osobisty</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Wyslij" />
        </p>
                    </asp:View>
                    <asp:View ID="wycieczkiView" runat="server">Rodzaj posiadanego roweru:<br />
                        <asp:ListBox ID="ListBox1" runat="server">
                            <asp:ListItem Value="g">Górski</asp:ListItem>
                            <asp:ListItem Value="m">Miejski</asp:ListItem>
                            <asp:ListItem Value="s">Szosowy</asp:ListItem>
                            <asp:ListItem Value="b">BMX</asp:ListItem>
                            <asp:ListItem Value="d">Dziecięcy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="n">Nie wiem</asp:ListItem>
                        </asp:ListBox>
                        <br />
                        Data ostatniej wycieczki:<br />
                        <asp:Calendar ID="ostatniaCalendar" runat="server"></asp:Calendar>
                        <br />
                        Data następnej wycieczki:<br />
                        <asp:Calendar ID="nastepnaCalendar" runat="server"></asp:Calendar>
                        <br />
                        Ilość kilometrów średnio na jednej wycieczce:<br />
                        <asp:TextBox ID="TextBox1" runat="server">ileKmSrednioTextBox</asp:TextBox>
                        <br />
                        Poziom umiejętności:<br />
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem Value="p">Początkujący</asp:ListItem>
                            <asp:ListItem Value="s">Średniozaawansowany</asp:ListItem>
                            <asp:ListItem Value="z">Zaawansowany</asp:ListItem>
                        </asp:DropDownList>
                         <p>
            Preferowany rodzaj kontaktu:</p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="e">email</asp:ListItem>
                <asp:ListItem Value="t">telefon</asp:ListItem>
                <asp:ListItem Value="o">osobisty</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Wyslij" />
        </p>
                    </asp:View>
                </asp:MultiView>

            </asp:View>
            <asp:View ID="podsumowanie" runat="server">Dziękujemy za wypełnienie ankiety <a href="Default.aspx"><span class="auto-style1">Default.aspx</span></a></asp:View>
        </asp:MultiView>
    </div>
</asp:Content>