<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyCaEZK4KAu0IwDxEHCxZKnRlv-FUdqkXBc&libraries=places&language=vi"></script>
    <script type="text/javascript" src="../Js/DMSMap.js"></script>
    <link href="../Css/maps.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div id="mapInfo" class="mapInfo">
    </div>
</asp:Content>
