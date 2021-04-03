using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace final
{
    public partial class ingreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      

        protected void btningreso_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Guardar(int.Parse(codigoingreso.Text), nombreingreso.Text, apellidoingreso.Text, int.Parse(edadingreso.Text),txtsexo.Text,txtfechaingreso.Text,txtfechasalida.Text,txthoraregistro.Text,txtequipaje.Text, Convert.ToDouble(txtnumeroninos.Text), Convert.ToDouble(txtnumeroadultos.Text));
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            string sCnn = @"data source=sala1-pc15;initial catalog=final;Integrated Security=SSPI";
            //string sCnn = @"Data Source=DESKTOP-EJFQ3VI;initial catalog=final;Integrated Security=SSPI";
            string sSel = "SELECT codigoIng as Codigo,Nombreues as Nombre,Edad as Edad, FechaIngreso as Fechaingreso,FechaSalida as Fechasalida FROM ingreso";
            SqlDataAdapter da;// SqlDataAdapter;
            DataTable dt = new DataTable();
            try
            {
                da = new SqlDataAdapter(sSel, sCnn);
                da.Fill(dt);
                this.gdvDatos.DataSource = dt;
                this.gdvDatos.DataBind();
            }
            catch
            {

            }
        }
    }
}