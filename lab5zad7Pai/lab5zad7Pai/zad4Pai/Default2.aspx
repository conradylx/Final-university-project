<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="zad4Pai.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
    </div>
    </form>
</body>
</html>
