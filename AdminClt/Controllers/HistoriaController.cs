using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using AdminClt.Models;

namespace AdminClt.Controllers
{
    public class HistoriaController
    {
        ConexionBL c = new ConexionBL();

        private void ejecutar(String sql)
        {
            try
            {
                c.a.Open();
                c.sen = new SqlCommand(sql, c.a);
                c.sen.ExecuteNonQuery();
                c.a.Close();

            }
            catch (Exception ex)
            {

                throw;
            }

        }

        public void CrearAlumno(Historia m)
        {
            String insert = "insert into historia (comentario, fecha_comentario, id_alumno , id_docente) values ('" + m.comentario + "','" + m.fecha_comentario + "','" + m.id_alumno + "','" + m.id_docente + "')";
            ejecutar(insert);

        }

    }
}