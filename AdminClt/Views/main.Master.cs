using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminClt.Views
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["UserID"] != null)
            { 
                    LblDropdown.Text= Session["UserID"].ToString();
                    LblMenu.Text = Session["UserID"].ToString();
                    LblPerfil.Text = Session["UserID"].ToString();

                    
            }else{
                Response.Redirect("http://localhost:2461/Views/login/Default.aspx");

    }
         

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            Session.RemoveAll();
            Response.Redirect("login/Default.aspx");

           // Response.Write("<br/> " + HttpContext.Current.Request.Url.AbsolutePath);
        }

        
    }
}