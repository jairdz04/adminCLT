using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AdminClt.Models;
using System.Data;
using System.Data.SqlClient;

namespace AdminClt.Controllers
{
    public class RegistroController
    {
        ConexionBL c = new ConexionBL();
        private DataView dv;
        private void ejecutar(String sql) {

            try {
                c.a.Open();
                c.sen =new  SqlCommand(sql, c.a);
                c.sen.ExecuteNonQuery();
                c.a.Close();

            }catch(Exception ex){
                throw;
            }
        
        }

        public void CrearDocente(Docente d)
        {
            String insert = "insert into docente (tipo, identificacion, nombres, sede, sexo , area , email , telefono, fecha_nacimiento) values ('" + d.tipo + "','" + d.identificacion + "','" + d.nombres + "','" + d.sede + "','" + d.sexo + "','" + d.area + "','" + d.email + "','" + d.telefono + "','" + d.fecha_nacimiento + "')";
            ejecutar(insert);

        }

         public DataTable listado()
        {
            DataTable tb = new DataTable();

            try
            {
                c.getA.Close();

                c.getA.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from docente", c.getA);
                da.Fill(tb);
                c.getA.Close();

            }
            catch (Exception ex)
            {
                throw new Exception("Error", ex);


            }
            return tb;

        }

         public RegistroController()
         {
                 dv= listado().DefaultView;
        }

         public DataView filtro(string id)
         {

             dv.RowFilter = "identificacion like '%" + id + "%'";
             return dv;

         }
        
        

    }
}