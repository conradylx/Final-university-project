<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default5.aspx.cs" Inherits="lab7_zad1.Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="t1Label" runat="server"></asp:Label>
                <br />
                
                <asp:Timer ID="t1Timer" runat="server" Interval="5000" OnTick="t1Timer_Tick">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="t2Label" runat="server"></asp:Label>
    </form>
</body>
</html>
