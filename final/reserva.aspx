<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserva.aspx.cs" Inherits="final.reserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="Style.css"/>
    <title>Hotel</title>
</head>
<body>
  <form id="form1" runat="server">
        <div style="text-align:center">
        <img src="Imagenes/logo.jpg" style="height: 142px; width: 532px;"  />
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
                <td class="auto-style13">Numero Reserva</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtnumeroreserva" runat="server" BorderColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Fecha reserva</td>
                <td>
                    <asp:TextBox ID="txtfechareserva" runat="server" BorderColor="Black" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Fecha Ingreso</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtfechaingreso" runat="server" BorderColor="Black" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Fecha Salida</td>
                <td>
                    <asp:TextBox ID="txtfechasalida" runat="server" BorderColor="Black" Width="166px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Estado</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtestadores" runat="server" BorderColor="Black" Width="119px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Nombre Persona</td>
                <td>
                    <asp:TextBox ID="txtnombreper" runat="server" BorderColor="Black" Width="191px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Apellido Persona</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtapellidoper" runat="server" BorderColor="Black" Width="189px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Cedula</td>
                <td>
                    <asp:TextBox ID="txtcedula" runat="server" BorderColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Telefono</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txttelefono" runat="server" BorderColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Nombre Empleado</td>
                <td>
                    <asp:TextBox ID="txtnombrempl" runat="server" BorderColor="Black" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr class="auto-style7">
                <td class="auto-style12">Apellido Empleado</td>
                <td>
                    <asp:TextBox ID="txtapellidoemp" runat="server" BorderColor="Black" Width="184px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnreserva" runat="server" Text="Enviar" OnClick="btnreserva_Click" />
    </form>
</body>
</html>
