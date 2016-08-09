using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AdminClt.Controllers
{
    public class ConexionBL
    {
        public SqlConnection a;
        public SqlCommand sen;
        public SqlDataReader sl;


        public ConexionBL() {

            a = new SqlConnection("Server=JAIRDIAZ\\SQLEXPRESS; Database= CLT; Integrated Security=true");

        }

        public SqlConnection getA {

            get { return a ; }

        }
    }
}