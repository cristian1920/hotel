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
    public partial class habitaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            lblcodigo.Visible = true;
            codigohuesped.Visible = true;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            lblcodigo.Visible = false;
            codigohuesped.Visible = false;
            codigohuesped.Text = "0";
            
        }

        protected void btnhabitaciones_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Guardarh(codigohabitacion.Text, descripcionh.Text, tipohabitacion.Text, estadohabitacion.Text, int.Parse(codigohuesped.Text));
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            string sCnn2 = @"data source=sala1-pc15;initial catalog=final;Integrated Security=SSPI";
            //string sCnn2 = @"Data Source=DESKTOP-EJFQ3VI;initial catalog=final;Integrated Security=SSPI";
            string sSel2 = "SELECT CodigoHab as Codigo,Descripcion as Descripcion,Tipo as tipo,Estado as estado,idhuesped as huesped FROM habitaciones";
            SqlDataAdapter da;// SqlDataAdapter;
            DataTable dt = new DataTable();
            try
            {
                da = new SqlDataAdapter(sSel2, sCnn2);
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