using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class actualizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Buscar(int.Parse(txtcod.Text));
            txtcantidad.Text = Convert.ToString(conexion.cantidad);
            txtnom.Text = conexion.nombre;
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Actualizar(int.Parse(txtcod.Text), txtnom.Text, int.Parse(txtcantidad.Text));
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }
    }
}