<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="AdminClt.Views.login.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link href="../../Content/css/bootstrap.css" rel ="stylesheet" type="text/css"/>

     <style>



         .col-md-12{
            background-color: #fff;

         }
                
        .col-md-9{
            background-color: #fff;
            margin-top: 2%;
            margin-left: 10%;
        }

         

 </style>
</head>


<body>
     <div class="col-md-12">
    <form  class="form-horizontal" runat="server" >


         <div class="col-md-9">

         <h2> <strong>Registro de usuarios</strong></h2><p><a href="default.aspx">Iniciar sesión</a></p>
         <hr/>
         <br/>
          
            
            <div class="form-group">
                <label class="control-label col-xs-3">Nombres:</label>
                <div class="col-xs-9">
                    <asp:TextBox  ID="txtNombres" type="text" runat="server" class="form-control" placeholder="Nombres"></asp:TextBox>
                </div>
            </div><br /><br />

            <div class="form-group">
                <label class="control-label col-xs-3">Email:</label>
                <div class="col-xs-9">
                    <asp:TextBox type="email" runat="server" class="form-control" id="inputEmail" placeholder="Email"></asp:TextBox>
                </div>
            </div><br /><br />
             

             <div class="form-group">
                <label class="control-label col-xs-3">Tipo de Identi:</label>
                  <div class="col-xs-9">

                      <asp:RadioButtonList ID="identi" runat="server">
                          <asp:ListItem Value="Cédula">Cédula</asp:ListItem>
                          <asp:ListItem Value="Pasaporte">Pasaporte</asp:ListItem>
                      </asp:RadioButtonList>
                   </div>
            </div><br />


            <div class="form-group">
                <label class="control-label col-xs-3">Identificación:</label>
                <div class="col-xs-9">
                    <asp:TextBox ID="txtIdentificacion" type="text" runat="server" class="form-control" placeholder="Identificación"></asp:TextBox>
                </div>
            </div><br /><br /><br />

              <div class="form-group">
                <label class="control-label col-xs-3">Sexo:</label>
                  <div class="col-xs-9">
                      <asp:RadioButtonList ID="sexo" runat="server">
                          <asp:ListItem Value="Masculino">Masculino</asp:ListItem>
                          <asp:ListItem Value="Femenino">Femenino</asp:ListItem>
                      </asp:RadioButtonList>
                   </div>
            </div><br />

            <div class="form-group">
                <label class="control-label col-xs-3" >Telefono:</label>
                <div class="col-xs-9">
                    <asp:TextBox ID="txtTelefono" type="tel" runat="server" class="form-control" placeholder="Telefono"></asp:TextBox>
                </div>
            </div><br /><br /><br />

            <div class="form-group">
                <label class="control-label col-xs-3">F. Nacimiento:</label>
                 <div class="col-xs-9">
                    <asp:TextBox ID="f_nacimiento" type="date" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div><br /><br />

                 <div class="form-group">
                <label class="control-label col-xs-3">Sede:</label>
                  <div class="col-xs-9">
                       <asp:RadioButtonList ID="sede" runat="server">
                          <asp:ListItem Value="Principal">Principal</asp:ListItem>
                          <asp:ListItem Value="Bonanza">Bonanza</asp:ListItem>
                          <asp:ListItem Value="Otro">Otro</asp:ListItem>
                      </asp:RadioButtonList>
                   </div>
            </div><br /><br />

             <div class="form-group">
                <label class="control-label col-xs-3">Área:</label>
                <div class="col-xs-9">
                    <asp:TextBox ID="txtArea" type="text" runat="server" class="form-control" placeholder="Área"></asp:TextBox>
                </div>
            </div><br /><br /><br />
            
             
            <div class="form-group">
                <label class="control-label col-xs-3">Password:</label>
                <div class="col-xs-9">
                    <asp:TextBox ID="txtPassword" type="password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                </div>
            </div><br /><br />

            <div class="form-group">
                <label class="control-label col-xs-3">Confirmar:</label>
                <div class="col-xs-9">
                    <asp:TextBox ID="txtConfirmar" type="password" runat="server" class="form-control" placeholder="Confirmar Password"></asp:TextBox>
                </div>
            </div><br /><br />

            <div class="form-group">
                <div class="col-xs-offset-3 col-xs-9"><br />
                    <asp:Button ID="btnEnviar" type="submit" runat="server" class="btn btn-primary" value="Enviar" OnClick="btnEnviar_Click" Text="Enviar"/>
                    <input type="reset" class="btn btn-default" value="Limpiar" />
                    
                </div>
            </div><br /><br /><br /><br />
        

         </div>


</form>
</div>

   
 

        <script src="../../Scripts/jquery-3.1.0.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
   
</body>
</html>
