using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdminClt.Controllers;


namespace AdminClt.Views
{
    public partial class usuarios : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        

        }
/*
        RegistroController r = new RegistroController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) {
                GridUsuarios.DataSource = r.listado();
                GridUsuarios.DataBind();
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridUsuarios.PageIndex = e.NewPageIndex;
            GridUsuarios.DataSource = r.listado();
            GridUsuarios.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int f = GridUsuarios.SelectedIndex;
            HttpCookie dato = new HttpCookie("dato");

            dato.Values.Add("Codigo", GridUsuarios.Rows[f].Cells[1].Text);
            dato.Values.Add("Matricula", GridUsuarios.Rows[f].Cells[2].Text);
            dato.Values.Add("Marca", Server.HtmlDecode(GridUsuarios.Rows[f].Cells[3].Text));
            dato.Values.Add("Color", GridUsuarios.Rows[f].Cells[4].Text);
            dato.Values.Add("Modelo", GridUsuarios.Rows[f].Cells[5].Text);
            dato.Values.Add("Precio", GridUsuarios.Rows[f].Cells[6].Text);

            Response.Cookies.Add(dato);
            Response.Redirect("perfil.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            /* GridUsuarios.DataSource = r.filtro(TextBox1.Text);
             GridUsuarios.DataBind();
         
        }
    */

    }
}