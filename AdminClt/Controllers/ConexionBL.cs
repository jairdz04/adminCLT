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

            a = new SqlConnection("workstation id=adminclt.mssql.somee.com;packet size=4096;user id=jairdz04_SQLLogin_1;pwd=zlmtwnn1sa;data source=adminclt.mssql.somee.com;persist security info=False;initial catalog=adminclt");

        }

        public SqlConnection getA {

            get { return a ; }

        }
    }
}