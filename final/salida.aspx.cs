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
    public partial class salida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsalida_Click(object sender, EventArgs e)
        {
            int total;
            total = int.Parse(txtvalorcobro.Text) + int.Parse(txtvaloracancelar.Text);
            txttotalacancelar.Text = ("" + total);
            conexion.conectar();
            conexion.Guardarsa( txtdescripcion.Text,int.Parse( txtvaloracancelar.Text), txtdetallecobro.Text, int.Parse(txtvalorcobro.Text),int.Parse(txttotalacancelar.Text));
            Response.Write("<script>alert('" + conexion.mensaje + "');</script>");
            conexion.desconectar();
            total = int.Parse(txtvalorcobro.Text) + int.Parse(txtvaloracancelar.Text);
            txttotalacancelar.Text = ("" + total);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conexion.conectar();
            string sCnn3 = @"data source=sala1-pc15;initial catalog=final;Integrated Security=SSPI";
            //string sCnn = @"Data Source=DESKTOP-EJFQ3VI;initial catalog=final;Integrated Security=SSPI";
            string sSel3 = "SELECT idfactura as Codigo,descripcionConsu as Descripcion,valorcancelar as valorcancelar, detellecobro as detallecobro,valorcobro as valorcobro,totalcancelar FROM salida";
            SqlDataAdapter da;// SqlDataAdapter;
            DataTable dt = new DataTable();
            try
            {
                da = new SqlDataAdapter(sSel3, sCnn3);
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