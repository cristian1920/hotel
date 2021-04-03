<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="habitaciones.aspx.cs" Inherits="final.habitaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link type="text/css" rel="stylesheet" href="Style.css"/>
    <title>Hotel</title>
    <style type="text/css">
        .auto-style10 {
            width: 141px;
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
                 <td class="auto-style7">Codigo Habitacion</td>
                 <td class="auto-style7" colspan="2">
                     <asp:TextBox ID="codigohabitacion" runat="server" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Descripcion</td>
                 <td colspan="2">
                     <asp:TextBox ID="descripcionh" runat="server" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Tipo</td>
                 <td class="auto-style7" colspan="2">
                     <asp:TextBox ID="tipohabitacion" runat="server" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Estado</td>
                 <td colspan="2">
                     <asp:TextBox ID="estadohabitacion" runat="server" BorderColor="Black"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">huesped</td>
                 <td class="auto-style7">
                     <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="grupo3" Text="Si" OnCheckedChanged="RadioButton1_CheckedChanged" />
                     <br />
                     <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="grupo3" Text="No" OnCheckedChanged="RadioButton2_CheckedChanged" />
                 </td>
                 <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblcodigo" runat="server" Text="Codigo Huesped" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="codigohuesped" runat="server" BorderColor="Black" Visible="False"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <asp:Button ID="btnhabitaciones" runat="server" OnClick="btnhabitaciones_Click" Text="Enviar" />
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Listar" />
         <asp:GridView ID="gdvDatos" runat="server">
         </asp:GridView>
    </form>
</body>
</html>
