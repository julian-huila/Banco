using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Banco.Modelo
{
    public class Conexion
    {
        private static SqlConnection objConexion;
        private static string error;
        /// <summary>
        /// Método que obtiene la Conexión
        /// </summary>
        /// <returns>Retorna la Conexión de tipo SqlConnection</returns>
        public static SqlConnection getConexion()
        {
            if (objConexion != null)
                return objConexion;
            objConexion = new SqlConnection();
            objConexion.ConnectionString = "Data Source=DESKTOP-T85NLC8; " +
            "Initial Catalog=Banco;Integrated Security=True";
            try
            {
                objConexion.Open();
                return objConexion;
            }
            catch (Exception e)
            {
                error = e.Message;
                return null;
            }
        }
        /// <summary>
        /// Método que cierra una conexión.
        /// </summary>
        public static void cerrarConexion()
        {
            if (objConexion != null)
                objConexion.Close();
        }
    }
}