<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="detalle.aspx.cs" Inherits="AdminClt.Views.detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="col-md-12">

       
          <div class="box-body box-profile col-sm-3">
              <asp:FormView Class="col-md-12" 
        ID="AlumnosFormView" 
        DataSourceID="detalles"
         DataKeyNames="id_alumno"
         runat="server">

            
               <ItemTemplate>
                    <img class="profile-user-img img-responsive img-circle" src="../../dist/img/user4-128x128.jpg" alt="User profile picture">
                       <h3 class="profile-username text-center"> <asp:Label ID="a" runat="server"><%#DataBinder.Eval(Container.DataItem, "nombres") %></asp:Label></h3>


                  <ul class="list-group list-group-unbordered">
                     

                            <li class="list-group-item">
                              <b>tipo ID</b> <a class="pull-right"><asp:Label ID="Label1" runat="server"><%#DataBinder.Eval(Container.DataItem, "tipo") %></asp:Label></a>
                            </li>
                            <li class="list-group-item">
                              <b>Identificación</b> <a class="pull-right"><asp:Label ID="Label2" runat="server"><%#DataBinder.Eval(Container.DataItem, "identificacion") %></asp:Label></a>
                            </li>
                            <li class="list-group-item">
                              <b>Curso</b> <a class="pull-right"><asp:Label ID="Label3" runat="server"><%#DataBinder.Eval(Container.DataItem, "curso") %></asp:Label></a>
                            </li>
                              <li class="list-group-item">
                              <b>Sede</b> <a class="pull-right"><asp:Label ID="Label4" runat="server"><%#DataBinder.Eval(Container.DataItem, "sede") %></asp:Label></a>
                            </li>
                             <li class="list-group-item">
                              <b>Sexo</b> <a class="pull-right"><asp:Label ID="Label7" runat="server"><%#DataBinder.Eval(Container.DataItem, "sexo") %></asp:Label></a>
                            </li>
                            <li class="list-group-item">
                              <b>Director de Grupo</b> <a class="pull-right"><asp:Label ID="Label5" runat="server"><%#DataBinder.Eval(Container.DataItem, "director_grupo") %></asp:Label></a>
                            </li>
                            <li class="list-group-item">
                              <b>F. de Nacimiento</b> <a class="pull-right"><asp:Label ID="Label6" runat="server"><%#DataBinder.Eval(Container.DataItem, "fecha_nacimiento") %></asp:Label></a>
                           </li>
                      <asp:Label runat="server" Visible="false" ID="descripcion"><%#DataBinder.Eval(Container.DataItem, "descripcion_inicial") %></asp:Label>


                  </ul>

                  <asp:Button ID="Edit" class="btn btn-info" CommandName="Edit" runat="server"  Text="Editar"  />

               </ItemTemplate>


                  <EditItemTemplate>
                       <h3 class="profile-username text-center"><asp:TextBox ID="txtNombres" type="text" runat="server" class="form-control"  Text='<%# Bind("nombres") %>' /></h3>


                  <ul class="list-group list-group-unbordered">
                     

                            <li class="list-group-item">
                              <b>tipo ID</b> <a class="pull-right"><asp:TextBox ID="TextBox1" type="text" runat="server" class="form-control"  Text='<%# Bind("tipo") %>' /></a>
                            </li>
                            <li class="list-group-item">
                              <b>Identificación</b> <a class="pull-right"><asp:TextBox ID="TextBox2" type="text" runat="server" class="form-control"  Text='<%# Bind("identificacion") %>' /></a>
                            </li>
                            <li class="list-group-item">
                              <b>Curso</b> <a class="pull-right"><asp:TextBox ID="TextBox3" type="text" runat="server" class="form-control"  Text='<%# Bind("curso") %>' /></a>
                            </li>
                              <li class="list-group-item">
                              <b>Sede</b> <a class="pull-right"><asp:TextBox ID="TextBox4" type="text" runat="server" class="form-control"  Text='<%# Bind("sede") %>' /></a>
                            </li>
                             <li class="list-group-item">
                              <b>Sexo</b> <a class="pull-right"><asp:TextBox ID="TextBox5" type="text" runat="server" class="form-control"  Text='<%# Bind("sexo") %>'/></a>
                            </li>
                            <li class="list-group-item">
                              <b>Director de Grupo</b> <a class="pull-right"><asp:TextBox ID="TextBox6" type="text" runat="server" class="form-control"  Text='<%# Bind("director_grupo") %>' /></a>
                            </li>
                            <li class="list-group-item">
                              <b>F. de Nacimiento</b> <a class="pull-right"><asp:TextBox ID="TextBox7" type="text" runat="server" class="form-control"  Text='<%# Bind("fecha_nacimiento") %>' /></a>
                            </li>
                        <asp:Label runat="server" Visible="false" ID="descripcion"  Text='<%# Bind("descripcion_inicial") %>'></asp:Label>
                           
                  </ul>

                  <asp:Button ID="EditButton" class="btn btn-info" runat="server"  CommandName="Update"  Text="Finalizar"  />
                    <a href="detalle.aspx?id_alumno=<%#DataBinder.Eval(Container.DataItem, "id_alumno") %>" class="btn btn-warning">Cancelar</a>


                  </EditItemTemplate>
    
            </asp:FormView>
            </div>


        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab" aria-expanded="true">Activity</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="activity">
                <!-- Post -->
                <div class="post">
                  <div class="user-block">
                    <img class="img-circle img-bordered-sm" src="../../dist/img/user1-128x128.jpg" alt="user image">

                       <asp:Repeater runat="server"  DataSourceID="detalles">
                        <ItemTemplate>
                            <span class="username">
                          <a href="#"><%#DataBinder.Eval(Container.DataItem, "nombres") %></a>
                        </span>
                         <span class="description"><%#DataBinder.Eval(Container.DataItem, "sede") %></span>

                        </ItemTemplate>
                    </asp:Repeater>

                  </div>
                  <!-- /.Aquí va el repeater -->
                    <asp:Repeater runat="server"  DataSourceID="detalles">
                        <ItemTemplate>

                            <p><%#DataBinder.Eval(Container.DataItem, "descripcion_inicial") %></p>

                        </ItemTemplate>
                    </asp:Repeater>
                    
                </div>
                <!-- /.post -->

              </div>
             
            
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
              <div class="col-md-9">
                       <input class="form-control input-sm" placeholder="Comentario">
                    </div>
                     <div class="col-md-3">
                       <button type="submit" class="btn btn-danger pull-right btn-block btn-sm">Send</button>
                     </div>

          </div>
          <!-- /.nav-tabs-custom -->
        </div>




         </div>
        <asp:SqlDataSource runat="server" ID="detalles" ConnectionString='<%$ ConnectionStrings:CLTConnectionString %>'
             SelectCommand="SELECT * FROM [alumno] WHERE ([id_alumno] = @id_alumno)"
             UpdateCommand="UPDATE [alumno] SET [tipo] = @tipo, [identificacion] = @identificacion, [nombres] = @nombres, [curso] = @curso, [sede] = @sede, [sexo] = @sexo, [director_grupo] = @director_grupo, [fecha_nacimiento] = @fecha_nacimiento, [descripcion_inicial] = @descripcion_inicial WHERE [id_alumno] = @id_alumno">

            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="id_alumno" Name="id_alumno" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
            <UpdateParameters>
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="identificacion" Type="String" />
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="curso" Type="String" />
            <asp:Parameter Name="sede" Type="String" />
            <asp:Parameter Name="sexo" Type="String" />
            <asp:Parameter Name="director_grupo" Type="String" />
            <asp:Parameter Name="fecha_nacimiento" Type="String" />
            <asp:Parameter Name="descripcion_inicial" Type="String" />
            <asp:Parameter Name="id_alumno" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
   
</asp:Content>
