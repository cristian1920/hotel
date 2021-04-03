<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventario.aspx.cs" Inherits="final.inventario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link type="text/css" rel="stylesheet" href="Style.css"/>
    <title>Hotel</title>
    <style type="text/css">
        .auto-style12 {
            width: 82px;
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
   
         </div>
         <table style="width:100%;">
             <tr>
                 <td class="auto-style7">Codigo Articulo</td>
                 <td class="auto-style7" colspan="2">
                     <asp:TextBox ID="codigoinventario" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Nombre Articulo</td>
                 <td colspan="2">
                     <asp:TextBox ID="nombreartinventario" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Descripcion </td>
                 <td class="auto-style7" colspan="2">
                     <asp:TextBox ID="descripcioninventario" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Cantidad</td>
                 <td colspan="2">
                     <asp:TextBox ID="cantidadinventario" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Huespued</td>
                 <td class="auto-style7">
                     <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="grupo4" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Si" />
                     <br />
                     <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="grupo4" OnCheckedChanged="RadioButton2_CheckedChanged" Text="No" />
                 </td>
                 <td class="auto-style9">
                     <asp:Label ID="lblcodhuesped" runat="server" Text="Codigo Huesped" Visible="False"></asp:Label>
&nbsp;
                     <asp:TextBox ID="codigohuespedinv" runat="server" Visible="False"></asp:TextBox>
                 </td>
             </tr>
         </table>
        
                        </ul>
                        <asp:Button ID="Btnenviar" runat="server" OnClick="Btnenviar_Click" 
                            Text="Enviar" />
         </div>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Listar" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Actualizar" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 </div>
&nbsp;&nbsp;
<asp:GridView ID="gdvDatos" runat="server">
         </asp:GridView>
 </form>

         
</body>
</html>
