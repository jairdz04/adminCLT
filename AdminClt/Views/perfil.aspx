<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="AdminClt.Views.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-12">

       
          <div class="box-body box-profile col-sm-3">
              <asp:FormView Class="col-md-12" 
        ID="AlumnosFormView" 
        DataSourceID="SqlDataSource1"
         DataKeyNames="id_docente"
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
                              <b>Curso</b> <a class="pull-right"><asp:Label ID="Label3" runat="server"><%#DataBinder.Eval(Container.DataItem, "sede") %></asp:Label></a>
                            </li>
                              <li class="list-group-item">
                              <b>Sede</b> <a class="pull-right"><asp:Label ID="Label4" runat="server"><%#DataBinder.Eval(Container.DataItem, "area") %></asp:Label></a>
                            </li>
                             <li class="list-group-item">
                              <b>Sexo</b> <a class="pull-right"><asp:Label ID="Label7" runat="server"><%#DataBinder.Eval(Container.DataItem, "email") %></asp:Label></a>
                            </li>
                            <li class="list-group-item">
                              <b>Director de Grupo</b> <a class="pull-right"><asp:Label ID="Label5" runat="server"><%#DataBinder.Eval(Container.DataItem, "telefono") %></asp:Label></a>
                            </li>
                            <li class="list-group-item">
                              <b>F. de Nacimiento</b> <a class="pull-right"><asp:Label ID="Label6" runat="server"><%#DataBinder.Eval(Container.DataItem, "fecha_nacimiento") %></asp:Label></a>
                           </li>


                  </ul>


               </ItemTemplate>

            </asp:FormView>
            </div>

          <!-- aquí comienza mi actividad / sql data source nuevo / select * from historias where id -->
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

                       <asp:Repeater runat="server"  DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <span class="username">
                          <a href="#"><%#DataBinder.Eval(Container.DataItem, "nombres") %></a>
                        </span>
                         <span class="description"><%#DataBinder.Eval(Container.DataItem, "area") %></span>

                        </ItemTemplate>
                    </asp:Repeater>

                  </div>
                  <!-- /.Aquí va el repeater -->
                    <asp:Repeater runat="server"  DataSourceID="SqlDataSource2">
                        <ItemTemplate>

                            <p><%#DataBinder.Eval(Container.DataItem, "comentario") %> <strong><%#DataBinder.Eval(Container.DataItem, "fecha_comentario") %></strong> </p>

                        </ItemTemplate>
                    </asp:Repeater>
                    
                </div>
                <!-- /.post -->

              </div>
             
            
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
             

          </div>
          <!-- /.nav-tabs-custom -->
        </div>


       
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:CLTConnectionString %>'
             SelectCommand="SELECT * FROM [docente] WHERE ([id_docente] = @id_docente)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="id_docente" Name="id_docente" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:CLTConnectionString %>'
        SelectCommand="SELECT * FROM [historia] WHERE ([id_docente] = @id_docente)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id_docente" Name="id_docente" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
