<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actualizar.aspx.cs" Inherits="final.actualizar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="Style.css"/>
    <title>actualizar</title>
    <style type="text/css">
        .auto-style16 {
            width: 259px;
        }
        .auto-style17 {
            width: 121px;
        }
        .auto-style18 {
            width: 377px;
        }
    </style>
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
        </center>
    </div>     

       
                                    <table style="width:100%;" border="1">
                                    <tr>
                                        <td class="auto-style16">Codigo inventario&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="txtcod" runat="server" Width="85px" Height="23px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Nombre artticulo</td>
                                        <td>
                                            <asp:TextBox ID="txtnom" runat="server" Width="138px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Cantidad</td>
                                        <td>
                                            <asp:TextBox ID="txtcantidad" runat="server" Width="139px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                </table>
         </div>
         <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
          
                            <li>&nbsp;</li>
                            <asp:Button ID="Button2" runat="server" Enabled="False" OnClick="Button2_Click" Text="Actualizar" />
</form>
</body>
</html>
