using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class servicios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnservicio_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Guardarser(txtnombreservicio.Text, int.Parse(txtvalorservicio.Text));
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }
    }
}