<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salida.aspx.cs" Inherits="final.salida" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link type="text/css" rel="stylesheet" href="Style.css"/>
    <title>Hotel</title>
    <style type="text/css">
        .auto-style16 {
            width: 80px;
            height: 26px;
            background-color: #1ecbea;
            color: #fff;
        }
        .auto-style17 {
            width: 80px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div style="text-align:center">
        <img src="Imagenes/logo.jpg" style="height: 142px; width: 532px;" />
    </div>
           <div style="text-align:center">
          <center>
            <table>
                <tr>
                    <td>
                        <ul id="button">
                            <li><a href="index.html">Inicio</a></li>
                            <li><a href="ingreso.aspx">Check-in</a></li>
                            <li><a href="habitaciones.aspx">Habitaciones</a></li>
                            <li><a href="inventario.aspx">Inventario Habitacion</a></li>
                            <li><a href="reserva.aspx">Reservas Cancelaciones</a></li>
                            <li><a href="salida.aspx">Check-out</a></li>
                            <li><a href="servicios.aspx">Servicios</a></li>
                            <li><a href="empleados.aspx">Empleados</a></li>
                             <li><a href="actualizar.aspx">Actualizar</a></li> 
                        </ul>
                    </td>
                </tr>
            </table>
        </center>
    </div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style16">Numero Factura</td>
                    <td class="auto-style7">&nbsp;
                        <asp:TextBox ID="txtnumerofac" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Descripcion consumos</td>
                    <td><asp:TextBox ID="txtdescripcion" runat="server" BorderColor="Black" Height="45px" Width="147px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Valor a cancelar</td>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtvaloracancelar" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Detalle cobro</td>
                    <td>
                        <asp:TextBox ID="txtdetallecobro" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Valor cobro</td>
                    <td class="auto-style7">&nbsp;
                        <asp:TextBox ID="txtvalorcobro" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Total a cancelar</td>
                    <td>
                        <asp:TextBox ID="txttotalacancelar" runat="server" BorderColor="Black" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnsalida" runat="server" Text="Enviar" OnClick="btnsalida_Click" />
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Listar" />
            <asp:GridView ID="gdvDatos" runat="server">
            </asp:GridView>
    </form>
</body>
</html>
