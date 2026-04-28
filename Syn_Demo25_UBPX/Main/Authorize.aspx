<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Authorize.aspx.vb" Inherits="ISWIFT.Web.Authorize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Height="300" Width="600"></asp:TextBox>
        <asp:Button ID="btnOk" runat="server" Text="Button" />
        <asp:TextBox ID="txtOutput" runat="server" TextMode="MultiLine" Height="300" Width="600"></asp:TextBox>
    </div>
    </form>
</body>
</html>
