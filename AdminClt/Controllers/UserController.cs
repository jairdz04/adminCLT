using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AdminClt.Models;
using System.Data;
using System.Data.SqlClient;

namespace AdminClt.Controllers
{
    public class UserController
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

        public void CrearPass(User u)
        {
            String insert = "insert into Usuarios (email, ds_Password) values ('" + u.email + "','" + u.password + "')";
            ejecutar(insert);

        }

        public void EliminarPass(string email)
        {
            String Borrar = "delete from Usuarios where email = '" + email + "'";
            ejecutar(Borrar);

        }






    }
}