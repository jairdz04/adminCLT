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
    public partial class Default : System.Web.UI.Page
    {
        ConexionBL a = new ConexionBL();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            a.getA.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select count(*) From Usuarios Where email = '" + login_username.Text + "'and ds_Password='" + login_password.Text + "'", a.getA);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {

                Session["UserID"] = login_username.Text;
                Response.Redirect("../inicio.aspx");
            }
            else {
                Response.Write("<script> alert ('Datos Erroneos');</script>");
                login_username.Text = "";
                login_password.Text = "";
                login_username.Focus();
            
            }

            a.getA.Close();


           /* HttpCookie perfil = new HttpCookie("perfil");

            perfil.Values.Add("nombres");
            perfil.Values.Add("tipo");
            perfil.Values.Add("identificacion");
            perfil.Values.Add("sexo");
            perfil.Values.Add("email");
            perfil.Values.Add("area");
            perfil.Values.Add("sexo");
            perfil.Values.Add("fecha_nacimiento");
            perfil.Values.Add("telefono");

            */

        }

        protected void login_register_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}