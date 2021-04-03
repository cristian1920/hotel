using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnempleados_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Guardaremp(int.Parse(txtidempleado.Text),txtnombrempleado.Text, txtapellidoemp.Text, txtcargo.Text);
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }
    }
}