using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdminClt.Models;
using AdminClt.Controllers;
using System.Data;
using System.Data.SqlClient;

namespace AdminClt.Views
{
    public partial class estudiantes : System.Web.UI.Page
    {
        ConexionBL a = new ConexionBL();
        AlumnoController al = new AlumnoController();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGuardar_click (object sender, EventArgs e)
        {

            if ((txtIdentificacion.Text == "") || (txtNombres.Text == "") || (txtCurso.Text == "") || (txtCurso.Text == "") || (txtDirector.Text == "") || (sexo.SelectedValue == null) || (sede.SelectedValue == null) || (identi.SelectedValue == null)||(TxtFecha.Text== ""))
            {
                Response.Write("<script>alert('Campos vacios');</script>");

            }
            else
            {


                Alumno d = new Alumno();
                d.nombres = txtNombres.Text;
                d.tipo = identi.SelectedValue;
                d.identificacion = txtIdentificacion.Text;
                d.sexo = sexo.SelectedValue;
                d.sede = sede.SelectedValue;
                d.curso = txtCurso.Text;
                d.director_grupo = txtDirector.Text;
                d.descripcion_inicial = txtDescripcion.Text;
                d.fecha_nacimiento = TxtFecha.Text;
                al.CrearAlumno(d);
                Response.Write("<script>alert('Usuario Creado Correctamente');</script>");
                Response.Redirect("estudiantes.aspx");
               
                /*try {
                    ConexionBL a = new ConexionBL(); 

                    if ((txtConfirmar.Text == txtPassword.Text)&& (txtPassword.Text != "")&&(txtConfirmar.Text != ""))
                    {
                        a.getA.Open();
                        SqlCommand sen = new SqlCommand("insert into Usuarios (ds_login , ds_Password ) values ('" + inputEmail.Text + "','" + txtPassword.Text + "')");
                        a.sen.ExecuteNonQuery();
                        a.getA.Close();

                    }

                }catch(Exception ex){
                    throw;
                }*/


            }
            
        
        }


    }
}