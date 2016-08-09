using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AdminClt.Models;
using System.Data;
using System.Data.SqlClient;

namespace AdminClt.Controllers
{
    public class AlumnoController
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

        public void CrearAlumno(Alumno m)
        {
            String insert = "insert into alumno (tipo, identificacion, nombres , curso , sede, sexo, director_grupo, fecha_nacimiento, descripcion_inicial) values ('" + m.tipo + "','" + m.identificacion + "','" + m.nombres + "','" + m.curso + "','" + m.sede + "','" + m.sexo + "','" + m.director_grupo + "','" + m.fecha_nacimiento + "','" + m.descripcion_inicial + "')";
            ejecutar(insert);

        }

        public void EliminarAlumno(string id)
        {
            String Borrar = "delete from alumno where identificacion = '" + id + "'";
            ejecutar(Borrar);

        }

    }
}