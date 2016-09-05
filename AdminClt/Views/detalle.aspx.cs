using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AdminClt.Controllers;
using AdminClt.Models;



namespace AdminClt.Views
{
    public partial class detalle : System.Web.UI.Page
    {
        HistoriaController h = new HistoriaController();
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        void EmployeeDetailsSqlDataSource_OnInserted(Object sender, SqlDataSourceStatusEventArgs e)
        {
            System.Data.Common.DbCommand command = e.Command;

            detalles.SelectParameters["id_alumno"].DefaultValue =
              command.Parameters["@id_alumno"].Value.ToString();


        }

        protected void btn_send_Click(object sender, EventArgs e)
        {

            if (txtComentario.Text == "")
            {
                Response.Write("<script> alert('Campos vacios');</script>");
            }
            else {
                DateTime localTime = DateTime.Now;
                Historia hi = new Historia();
                hi.comentario = txtComentario.Text;
                hi.fecha_comentario = Convert.ToString(localTime);/*"12-12-12 7:00";*/ 
                hi.id_alumno = 1;
                hi.id_docente = 1;
                h.CrearAlumno(hi);
                Response.Write("<script> alert('Comentario enviado');</script>");

            }
            

        }
        



    }
}