<%@ Page Title="License" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/License.Master" Inherits="ISWIFT.Sys.License" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <style type="text/css">
        .Form{padding:10px;font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;font-size:12px}.TextBox{padding:4px;height:300px;width:600px;margin-bottom:4px}.Width{width:200px}.Height{height:8px}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <form id="frmLicense" runat="server" class="Form">
        <table>
            <tbody>
                <tr><td class="Width">Số đơn vị</td><td><asp:Label ID="lblUnits" runat="server" Text="0"></asp:Label></td></tr>
                <tr><td class="Width">Số người sử dụng</td><td><asp:Label ID="lblUsers" runat="server" Text="0"></asp:Label></td></tr>
                <tr><td class="Width">Số người sử dụng chạy đồng thời</td><td><asp:Label ID="lblConUsers" runat="server" Text="0"></asp:Label></td></tr>
                <tr class="Height"><td></td></tr>
                <tr><td class="Width"><asp:Button ID="btnLicense" runat="server" Text="Tạo mã số" /></td><td></td></tr>
                <tr class="Height"><td></td></tr>
                <tr><td colspan="2"><asp:TextBox ID="txtLicense" runat="server" TextMode="MultiLine" CssClass="TextBox" ReadOnly="true"></asp:TextBox></td></tr>
            </tbody>
        </table>
    </form>
</asp:Content>
