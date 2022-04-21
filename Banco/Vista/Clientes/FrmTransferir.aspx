<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="FrmTransferir.aspx.cs" Inherits="BancoSena.Vista.Clientes.FrmTransferir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <link href="../../Css/footer.css" rel="stylesheet" />
    <link href="../../Css/form.css" rel="stylesheet" />
    <link href="../../Css/header.css" rel="stylesheet" />
    <link href="../../Css/index.css" rel="stylesheet" />
    <link href="../../Css/nav.css" rel="stylesheet" />
    <link href="../../Css/template.css" rel="stylesheet" />
    <script src="../../Recursos/Librerias/Jquery/external/jquery/jquery.js"></script>
    <script src="../../Recursos/Librerias/Jquery/jquery-ui.js"></script>
    <script src="../../Recursos/Librerias/Jquery/jquery-ui.min.js"></script>
    <link href="../../Recursos/Librerias/Jquery/jquery-ui.css" rel="stylesheet" />
    <link href="../../Recursos/Librerias/Jquery/jquery-ui.min.css" rel="stylesheet" />
    <script src="../../Js/index.js"></script>
    <script src="../../Js/Ajax.js"></script>
          <style type="text/css">
              .auto-style1 {
                  width: 60%;
              }
              .auto-style2 {
                  width: 147px;
              }
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center">TRANSFERENCIAS</td>
        </tr>
        <tr>
            <td class="auto-style2" width="40%">Cuenta Origen:</td>
            <td width="60%">
                <asp:DropDownList ID="cbCuentasOrigen" runat="server">
                </asp:DropDownList>
                <div id="mensajeOrigen"></div>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Cuenta Destino:</td>
            <td>
                <asp:TextBox ID="txtNumeroCuentaDestino" runat="server" TextMode="Number"  required></asp:TextBox>
                <div id="mensajeDestino"></div>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Valor:</td>
            <td>
                <asp:TextBox ID="txtValorTransferir" runat="server" TextMode="Number" min="0" required></asp:TextBox>
                <div id="mensajeValor"></div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnTransferir" runat="server" Text="Transferir" OnClick="btnTransferir_Click" />
            </td>
        </tr>
    </table>
     <br />
    <div id"msj" style="text-align:center"><asp:Label ID="lblMensaje" runat="server" style="text-align: center"></asp:Label></div>
</asp:Content>
