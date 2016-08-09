<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="estudiantes.aspx.cs" Inherits="AdminClt.Views.estudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="col-md-12">

        <section class="content-header">
            <h1>
              Listado de Estudiantes
            </h1>
               <hr/>
        </section>
            
        <div class="col-sm-6"></div>

          <div class="input-group col-sm-6  ">
            <input type="text" name="q" class="form-control" placeholder="Buscar..."/>
                <span class="input-group-btn">
                  <button  name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                  </button>
                </span>
            <button class="btn btn-success pull-right" type="button" data-toggle="modal" data-target=".bs-example-modal-lg">Añadir Alumno</button>
          </div>


     <div class="container table-responsive"  style="padding-top: 1em;">
              <table class="table table-hover">
                    <tr>
                        <td><strong>Nombres</strong></td>
                        <td><strong>Apellidos</strong></td>
                        <td><strong>Identificación</strong></td>
                        <td><strong>Curso</strong></td>
                        <td><strong>email</strong></td>
                        <td><strong>Sexo</strong></td>

                    </tr>
                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                     <ItemTemplate>
                    <tr>
                        <td> <asp:Label ID="a" runat="server"><%#DataBinder.Eval(Container.DataItem, "nombres") %></asp:Label></td>
                        <td> <asp:Label ID="lblIdenti" runat="server"><%#DataBinder.Eval(Container.DataItem, "identificacion") %></asp:Label></td>
                        <td> <asp:Label ID="v" runat="server"><%#DataBinder.Eval(Container.DataItem, "sede") %></asp:Label></td>
                        <td> <asp:Label ID="f" runat="server"><%#DataBinder.Eval(Container.DataItem, "curso") %></asp:Label></td>
                        <td> <asp:Label ID="e" runat="server"><%#DataBinder.Eval(Container.DataItem, "curso") %></asp:Label></td>
                        <td> <asp:Label ID="r" runat="server"><%#DataBinder.Eval(Container.DataItem, "sexo") %></asp:Label></td>

                        
                        <td> 
                     
                            <a href="gestionar.aspx?id_alumno=<%#DataBinder.Eval(Container.DataItem, "id_alumno") %>" class="btn btn-warning">Gestionar</a>                            
                             
                        </td>
                    </tr> 

                     </ItemTemplate>
                    </asp:Repeater>
              </table>
    </div>

     
    </div>

    <!-- Modal -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
     
            <div class="modal-header">
               <section class="content-header">
                    <h1>
                      Añadir Estudiante
                    </h1>
             </section>
                </div>
                
        <div class="modal-body">
              <asp:Label runat="server">Nombres</asp:Label> <asp:TextBox ID="txtNombres" type="text" runat="server" class="form-control"></asp:TextBox>
            <br />  
            <div class="col-md-6"><asp:Label runat="server">Tipo de identificación</asp:Label> </div>
                    <div class="col-md-6">  <asp:RadioButtonList ID="identi" runat="server">
                          <asp:ListItem Value="Cédula">Cédula</asp:ListItem>
                          <asp:ListItem Value="tarjeta">T.I</asp:ListItem>
                          <asp:ListItem Value="Registro">R.C</asp:ListItem>
                      </asp:RadioButtonList>
           </div>
              <asp:Label runat="server">Identificación</asp:Label>  <asp:TextBox ID="txtIdentificacion" type="text" runat="server" class="form-control"></asp:TextBox>
              <br />  
            <div class="col-md-6"><asp:Label runat="server">Sexo</asp:Label> </div>
                    <div class="col-md-6">  <asp:RadioButtonList ID="sexo" runat="server">
                         <asp:ListItem Value="Masculino">Masculino</asp:ListItem>
                          <asp:ListItem Value="Femenino">Femenino</asp:ListItem>
                      </asp:RadioButtonList>
           </div>

              <asp:Label runat="server"> Curso</asp:Label>  <asp:TextBox ID="txtCurso" type="text" runat="server" class="form-control"></asp:TextBox>
              <br />  
            <div class="col-md-6"><asp:Label runat="server">sede</asp:Label> </div>
                    <div class="col-md-6">  <asp:RadioButtonList ID="sede" runat="server">
                           <asp:ListItem Value="Principal">Principal</asp:ListItem>
                                  <asp:ListItem Value="Bonanza">Bonanza</asp:ListItem>
                                  <asp:ListItem Value="Otro">Otro</asp:ListItem>
                      </asp:RadioButtonList>
           </div>
           
              <asp:Label runat="server"> Director de grupo</asp:Label> <asp:TextBox ID="txtDirector" type="text" runat="server" class="form-control"></asp:TextBox>
              <asp:Label runat="server"> Fecha</asp:Label> <asp:TextBox ID="TxtFecha" type="text" runat="server" class="form-control"></asp:TextBox>
              <asp:Label runat="server">Descripción inicial</asp:Label>  <asp:TextBox ID="txtDescripcion" type="text" runat="server" class="form-control"></asp:TextBox>
        </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                <asp:Button type="button" ID="btnGuardar" runat="server" class="btn btn-primary" onClick="btnGuardar_click" Text="Guardar"/>
          </div>

     </div>
</div>

</div>





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CLTConnectionString %>"
         SelectCommand="SELECT * FROM [alumno]">
    </asp:SqlDataSource>
  


</asp:Content>
