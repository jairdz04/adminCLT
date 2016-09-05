using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdminClt.Controllers;
using AdminClt.Models;
using System.Data;
using System.Data.SqlClient;

namespace AdminClt.Views.login
{
    public partial class Registro : System.Web.UI.Page
    {
    
        RegistroController r = new RegistroController();
        UserController us = new UserController();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            
            
            if ((txtIdentificacion.Text == "") || (txtNombres.Text == "") || (txtArea.Text == "") || (inputEmail.Text == "") || (txtTelefono.Text == "")||(txtPassword.Text=="")||(txtConfirmar.Text==""))
            {
                Response.Write("<script>alert('Campos vacios');</script>");
            
            }else{
                    
                  
                Docente d = new Docente();
                d.email = inputEmail.Text;
                d.tipo = identi.SelectedValue;
                d.identificacion = txtIdentificacion.Text;
                d.nombres = txtNombres.Text;
                d.sexo = sexo.SelectedValue;
                d.area = txtArea.Text;
                d.sede = sede.SelectedValue;
                d.telefono = txtTelefono.Text;
                d.fecha_nacimiento = f_nacimiento.Text;
                r.CrearDocente(d);
            
                    
                    if (txtPassword.Text == txtConfirmar.Text)
                    {
                        User u = new User();
                        u.email = inputEmail.Text;
                        u.password = txtPassword.Text;
                        us.CrearPass(u);
                        Response.Write("<script>alert('Usuario Creado Correctamente');</script>");
                        limpiar();
                        
                        
                    }else {

                        Response.Write("<script>alert('Las contraseñas no coinsiden');</script>");

                    }


            }
   
        }

        public void limpiar (){
            inputEmail.Text = "";
            identi.SelectedValue = null;
            txtIdentificacion.Text = "";
            txtNombres.Text = "";
            f_nacimiento.Text = "";
            txtArea.Text = "";
            sexo.SelectedValue = null;
            sede.SelectedValue = null;
            txtTelefono.Text = "";
            txtPassword.Text = "";
            txtConfirmar.Text = "";
        
        }



       
    }
}