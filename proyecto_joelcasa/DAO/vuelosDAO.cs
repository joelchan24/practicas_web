using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using System.Data.SqlClient;
using System.Data;


namespace DAO
{
  public  class vuelosDAO
    {
        conexionDAO cone = new conexionDAO();

        public int guardar(object guardar)
        {
            
            categoriaBO dato =  (categoriaBO) guardar;
            SqlCommand coma = new SqlCommand("INSERT INTO [dbo].[vuelos] (nombre,fecha_de_salida,destino,origen)values(@nom,@fecha,@des,@ori)");
            coma.Parameters.Add("@nom", SqlDbType.VarChar).Value = dato.Nombre;
            coma.Parameters.Add("@fecha", SqlDbType.Date).Value = dato.Fecha.ToString("yyyy/mm/dd");

            coma.Parameters.Add("@des", SqlDbType.VarChar).Value = dato.Destino;

            coma.Parameters.Add("@ori", SqlDbType.VarChar).Value = dato.Origen;
            coma.CommandType = CommandType.Text;


            return cone.EjecutarComando(coma);




        }













    }
}
