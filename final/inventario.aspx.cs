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
    public partial class inventario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            lblcodhuesped.Visible = true;
            codigohuespedinv.Visible = true;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            lblcodhuesped.Visible = false;
            codigohuespedinv.Visible = false;
            codigohuespedinv.Text = "0";

        }

        protected void btninventario_Click(object sender, EventArgs e)
        {
           
        }

        protected void Btnenviar_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            conexion.Guardari(int.Parse(codigoinventario.Text), nombreartinventario.Text, descripcioninventario.Text, int.Parse(cantidadinventario.Text), codigohuespedinv.Text);
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            string sCnn6 = @"data source=sala1-pc15;initial catalog=final;Integrated Security=SSPI";
            //string sCnn = @"Data Source=DESKTOP-EJFQ3VI;initial catalog=final;Integrated Security=SSPI";
            string sSel6 = "SELECT codigoArti as Codigo,NomArticulo as Nombre,DescripcionArT as DESCRIPCION, cantidad as Cantidad,idhab as habitacion FROM inventarioHab";
            SqlDataAdapter da;// SqlDataAdapter;
            DataTable dt = new DataTable();
            try
            {
                da = new SqlDataAdapter(sSel6, sCnn6);
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