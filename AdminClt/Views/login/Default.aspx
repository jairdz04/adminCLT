<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdminClt.Views.login.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>:: Inicia Sesión ::</title>
    <link href="../../Content/css/bootstrap.css" rel ="stylesheet" type="text/css"/>

    <style>
       /* .fixed-nav {
           position: fixed;
           }*/
        #img_logo {
        margin-left:40%;
        width: 20%;

        }
        .logo-lg {
        
        }
        
    </style>
</head>
<body>


     <form id="form" runat="server">
         <div class="col-md-12">

             <div class="modal-header">
          <img class="img-circle" id="img_logo" src="/img/img_log.png" />
        </div>

             <div class="modal-body">
                    <div id="div-login-msg">
                                    <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                        <span id="text-login-msg">Digita tu usuario y contraseña</span>
                                    </div>
                                            <asp:TextBox ID="login_username" runat="server" class="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                                            <br/>
                                            <asp:TextBox ID="login_password" runat="server" class="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>


                         
                  </div>

             <div class="modal-footer">
                            <div>
                                <asp:button ID="btnlogin" runat="server" class="btn btn-primary btn-lg btn-block" Text="iniciar sesión" OnClick="btnlogin_Click"/>
                            </div>
                  <div>
                                <asp:Button ID="login_lost_btn" runat="server"  class="btn btn-link" Text="¿Olvidaste tu contraseña?"/>
                                <asp:Button ID="login_register_btn" runat="server"  class="btn btn-link" Text="Registrate" OnClick="login_register_btn_Click"/>
                            </div>
                </div>

         </div>

         
          
                
    </form>

    <script src="../../Scripts/jquery-3.1.0.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    
</body>
</html>
