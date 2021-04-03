using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class reserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreserva_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Guardarr(int.Parse(txtnumeroreserva.Text), txtfechareserva.Text, txtfechaingreso.Text, txtfechasalida.Text, txtestadores.Text, txtnombreper.Text, txtapellidoper.Text, Convert.ToDouble(txtcedula.Text), Convert.ToDouble(txttelefono.Text), txtnombrempl.Text, txtapellidoemp.Text);
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }
    }
}