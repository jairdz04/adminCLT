<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="detalle.aspx.cs" Inherits="AdminClt.Views.detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

           .main-sidebar{
        position:fixed;
    }


        #comen {
            
        
        }
          /* .fixed-nav {
           position: fixed;
           }*/

    </style>

    <div class="col-md-12">

       
          <div class="box-body box-profile col-sm-3">
              <asp:FormView Class="col-md-12" 
        ID="AlumnosFormView" 
        DataSourceID="detalles"
         DataKeyNames="id_alumno"
         runat="server">

            
               <ItemTemplate>
                    <img class="profile-user-img img-responsive img-circle" src="/img/perfil.jpg" alt="User profile picture">
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


               </ItemTemplate> 
    
            </asp:FormView>
            </div>


        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab" aria-expanded="true">Activity</a></li>
            </ul>
            <div class="">
              <div class="tab-pane active" id="activity">
                <!-- Post -->
                <div class="post">
                  <div class="user-block">
                    <img class="img-circle img-bordered-sm" src="/img/perfil.jpg" alt="user image">

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
                            <h3> Descripción inicial:</h3>
                            <p><%#DataBinder.Eval(Container.DataItem, "descripcion_inicial") %></p>

                        </ItemTemplate>
                    </asp:Repeater>
                    <hr />

                    <asp:Repeater runat="server"  DataSourceID="comentario">
                        <ItemTemplate>
                            <div id="comen">
                            <div class="col-md-9"></div> <div id="f_comentario" class="col-md-3">  <p><%#DataBinder.Eval(Container.DataItem, "fecha_comentario") %></p></div>
                            <div class="col-md-12"> <p><%#DataBinder.Eval(Container.DataItem, "comentario") %></p></div>

                           </div>
                        </ItemTemplate>
                    </asp:Repeater>
                 
                    
                </div>
                <!-- /.post -->

              </div>
             
            
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
              <div class="col-md-9">
                       <asp:TextBox runat="server" ID="txtComentario" class="form-control input-sm" placeholder="Comentario"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                       <asp:button type="submit" runat="server" ID="btn_send" OnClick="btn_send_Click"
                            class="btn btn-danger pull-right btn-block btn-sm" Text="Send"/>
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

    <asp:SqlDataSource runat="server" ID="comentario" ConnectionString='<%$ ConnectionStrings:CLTConnectionString %>' SelectCommand="SELECT * FROM [historia] WHERE ([id_alumno] = @id_alumno)">

        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id_alumno" Name="id_alumno" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>
