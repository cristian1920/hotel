using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace final
{
    public class conexion
    {
        //public static string sConnectionStringC = @"Data Source=sala1-pc15;initial catalog=final;Integrated Security=SSPI";
        public static string sConnectionStringC = @"Data Source=DESKTOP-EJFQ3VI;initial catalog=final;Integrated Security=SSPI";
        static SqlConnection objConn;
        public static string nombre, apellido, sexo, equipaje, idhabitacio, descripcionh, tipoh, estadoh, nombreart, descripcionart, idhabart;
        public static string estadorese, nombrerese, equipajein, apellidorese, nombrefrese, apellidofrese, estador, descripcion, salid, detallecobsa, nombreservi, nombremeple, apellidoemple, cargo, mensaje;
        public static double codigoing, edadin, numeroni, numeroadu, idhuesped, codigoart,nombrear, cantidad, numreserva, cedulare, telefono, valorcancelar, valorcobro, totalcancelar;
        public static string fechaing, fesasal, horare, fechareser, fechaingr, fechasalres;
        public static void conectar()
        {
            objConn = new SqlConnection(sConnectionStringC);
            objConn.Open();
        }


        public static void desconectar()
        {
            objConn.Close();
        }
        public static void Guardar(int cod, string nom, string apellido, int edad, string sexo, string fechaing, string fesasal, string horare, string equipaje, double numeroni, double numeroadu)
        {

            string sSQL = "INSERT INTO ingreso (codigoIng, Nombreues, Apellido,Edad,Sexo,FechaIngreso,FechaSalida,HoraRegistro,Equipaje,NumNiños,NumAdultos) VALUES (" + cod + ",'" + nom + "','" + apellido + "'," + edad + ",'" + sexo + "','" + fechaing + "','" + fesasal + "','" + horare + "','" + equipaje + "'," + numeroni + "," + numeroadu + ")";

            SqlCommand comando = new SqlCommand(sSQL, objConn);
            //CREAR COMANDO PARA EJECUTAR LAS INSTRUCCIONES
            try
            {
                comando.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS

                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";
            }
        }
        public static void Guardarh(string idhabitacion, string descripciopnh, string tipoh, string estadoh, int idhuesped)
        {
            string sSQL2 = "INSERT INTO habitaciones(CodigoHab,Descripcion,Tipo,Estado,idhuesped) VALUES('" + idhabitacion + "','" + descripciopnh + "','" + tipoh + "','" + estadoh + "'," + idhuesped + ")";
            SqlCommand comando2 = new SqlCommand(sSQL2, objConn);
            //comando2.ExecuteNonQuery();
            try
            {
                comando2.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS
                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";
            }
        }
        public static void Guardari(int codigoi, string nomart, string descripcirar, int cantidadi, string idhab)
        {
            string sSQL3 = "INSERT INTO inventarioHab(codigoArti,NomArticulo,DescripcionArt,cantidad,idhab) VALUES(" + codigoi + ",'" + nomart + "','" + descripcirar + "'," + cantidadi + ",'" + idhab + "')";
            SqlCommand comando3 = new SqlCommand(sSQL3, objConn);
            
            try
            {
                comando3.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS
                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";
            }
        }
        public static void Guardarr(int numeror, string fechareser, string fechaingr, string fechasal, string estadorese, string nombreper, string apellidorese, double cedulare, double telefono, string nombrefun, string apellidofun)
        {
            string sSQL4 = "INSERT INTO reserva(NumReserva,FechaReserva,FechaIngreso,FechaSalida,Estado,NombrePER,ApellidoPer,Cedula,Telefono,Nombrefun,ApellidoFun) VALUES (" + numeror + ",'" + fechareser + "','" + fechaingr + "','" + fechasal + "','" + estadorese + "','" + nombreper + "','" + apellidorese + "'," + cedulare + "," + telefono + ",'" + nombrefun + "','" + apellidofun + "')";
            SqlCommand comando4 = new SqlCommand(sSQL4, objConn);
            
            try
            {
                comando4.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS

                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";
            }
        }
        public static void Guardarsa( string descripcionconsu, int valorcancelar, string detallecobro, int valorcobro,int totalcancelar)
        {
            string sSQL4 = "INSERT INTO salida(descripcionConsu,valorcancelar,detellecobro,valorcobro,totalcancelar) VALUES ('" + descripcionconsu + "'," + valorcancelar + ",'" + detallecobro + "'," + valorcobro +  " ,"+valorcancelar+")";
            SqlCommand comando5 = new SqlCommand(sSQL4, objConn);
           
            try
            {
                comando5.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS

                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";

            }

        }
        public static void Guardarser( string nomservicio, int valorservicio)
        {
            string sSQL6 = "INSERT INTO servicios(Nomservicio,valorServicio) VALUES ('" + nomservicio + "'," + valorservicio + " )";
            SqlCommand comando6 = new SqlCommand(sSQL6, objConn);
            
            try
            {
                comando6.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS

                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";

            }

        }
        public static void Guardaremp(int idempleado,string nomempleado, string apellidoemp,string cargo)
        {
            string sSQL7 = "INSERT INTO empleados(idempleado,Nomempleado,ApeEmpleado,Cargo) VALUES (" + idempleado+",'" + nomempleado + "','" + apellidoemp + "','"+cargo+"' )";
            SqlCommand comando7 = new SqlCommand(sSQL7, objConn);
           
            try
            {
                comando7.ExecuteNonQuery(); //PARA GUARDAR EN LA BASE DE DATOS

                mensaje = "Registro agregado";
            }
            catch
            {
                mensaje = "No se pueden ingresar los datos";

            }

        }
        public static void Buscar(int cod)
        {
            SqlCommand comando = new SqlCommand("SELECT * FROM inventarioHab WHERE codigoArti=" + cod, objConn);
            SqlDataReader lector = comando.ExecuteReader(); //CREAR UN LECTOR PARA LEER DATOS
            try
            {
                if (lector.Read()) //VERIFICAR QUE LA TABLA CONTENGA DATOS
                {
                    nombreart = lector["NomArticulo"].ToString(); //AQUI SE PONE EL CAMPO DE LA TABLA EN LA BASE DE DATOS
                    cantidad = int.Parse(lector["cantidad"].ToString());
                    mensaje = "El cliente está registrado";
                }
                else
                {
                    mensaje = "El cliente no está registrado";
                }
            }
            catch
            {
                mensaje = "No se puede hacer una busqueda";
            }
        }
        public static void Actualizar(int cod, string nom, int cantidad)
        {
            string sSQL = "UPDATE inventarioHab SET NomArticulo='" + nom + "',cantidad=" + cantidad + "WHERE codigoArti=" + cod;
            SqlCommand comando = new SqlCommand(sSQL, objConn);
            try
            {
                comando.ExecuteNonQuery();
                mensaje = "Registro Actualizado";
            }
            catch
            {
                mensaje = "No se puede actualizar el registro";
            }
        }



    }

}