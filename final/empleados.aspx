<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empleados.aspx.cs" Inherits="final.empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link type="text/css" rel="stylesheet" href="Style.css"/>
    <title>Hotel</title>
    <style type="text/css">
        .auto-style16 {
            height: 26px;
            background-color: #1ecbea;
            color: #fff;
            width: 39px;
        }
        .auto-style17 {
            height: 23px;
            width: 39px;
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
                 <td class="auto-style16">Codigo Empleado </td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtidempleado" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style17">Nombre empleado</td>
                 <td>
                     <asp:TextBox ID="txtnombrempleado" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style16">Apellido empleado</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtapellidoemp" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style17">Cargo</td>
                 <td>
                     <asp:TextBox ID="txtcargo" runat="server"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <asp:Button ID="btnempleados" runat="server" Text="Enviar" OnClick="btnempleados_Click" />
    </form>
</body>
</html>
