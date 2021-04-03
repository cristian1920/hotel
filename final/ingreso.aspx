<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingreso.aspx.cs" Inherits="final.ingreso" %>

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
        
         <table class="auto-style10">
             <tr>
                 <td class="auto-style7" aria-disabled="False">
                     <asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label>
                 </td>
                 <td class="auto-style7">
                     <asp:TextBox ID="codigoingreso" runat="server" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">
                     <asp:Label ID="Label2" runat="server" Text="Nombre Cliente"></asp:Label>
                 </td>
                 <td class="auto-style6">
                     <asp:TextBox ID="nombreingreso" runat="server" Width="244px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">
                     <asp:Label ID="Label3" runat="server" Text="Apellido Cliente"></asp:Label>
                 </td>
                 <td class="auto-style7">
                     <asp:TextBox ID="apellidoingreso" runat="server" Width="241px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label4" runat="server" Text="Edad"></asp:Label>
                 </td>
                 <td class="auto-style6">
                     <asp:TextBox ID="edadingreso" runat="server" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">
                     Sexo</td>
                 <td class="auto-style6">
                     <asp:TextBox ID="txtsexo" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     Fecha Ingreso</td>
                 <td class="auto-style6">
                     <asp:TextBox ID="txtfechaingreso" runat="server" Width="237px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">
                     Fecha Salida</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtfechasalida" runat="server" Width="237px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     Hora Registro</td>
                 <td class="auto-style6">
                     <asp:TextBox ID="txthoraregistro" runat="server" Width="234px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">
                     Equipaje</td>
                 <td class="auto-style11" aria-disabled="True">
                     <asp:TextBox ID="txtequipaje" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     Numero Niños</td>
                 <td class="auto-style6">
                     <asp:TextBox ID="txtnumeroninos" runat="server" Width="100px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">
                     Numero Adultos</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtnumeroadultos" runat="server" Width="97px" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <asp:Button ID="btningreso" runat="server" OnClick="btningreso_Click" Text="Enviar" />
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Listar" />
         <asp:GridView ID="gdvDatos" runat="server">
         </asp:GridView>
    </form>
</body>
</html>
