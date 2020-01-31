<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab7_zad1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="t1Label" runat="server"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="t2Label" runat="server"></asp:Label>
    </form>
</body>
</html>
