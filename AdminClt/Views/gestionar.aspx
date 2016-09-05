<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="gestionar.aspx.cs" Inherits="AdminClt.Views.editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <script runat="server">



  void EmployeeFormView_ItemUpdated(Object sender, FormViewUpdatedEventArgs e)
  {
       
      Response.Redirect("estudiantes.aspx");
     // AlumnosGridView.DataBind();
  }

  void EmployeeFormView_ItemDeleted(Object sender, FormViewDeletedEventArgs e)
  {
      Response.Redirect("estudiantes.aspx");
      
      //AlumnosGridView.DataBind();
  }


  

</script>

    <style>

        .Edit {
        margin-top: 3%;
        }

    </style>
     
    <div class="col-md-12">

        <h2> Gestionar Estudiante</h2>
        <hr />
        <br />

    <asp:FormView Class="col-md-12" 
        ID="AlumnosFormView" 
        DataSourceID="AlumnosResource"
         DataKeyNames="id_alumno"
         OnItemUpdated="EmployeeFormView_ItemUpdated"
         OnItemDeleted="EmployeeFormView_ItemDeleted"
         runat="server">

        <ItemTemplate>



                  <div class="col-md-4"> <asp:Label runat="server" ID="lblID"> ID</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label1" class="form-control" ><%# Eval("id_alumno")%></asp:Label></div>
                     <br /><br />

            <div class="col-md-4"> <asp:Label runat="server" ID="Label2">Nombres</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label3" class="form-control" ><%# Eval("nombres")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label4"> Tipo de ID</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label5" class="form-control" ><%# Eval("tipo")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label6"># de identificación</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label7" class="form-control" ><%# Eval("identificacion")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label8">Sexo</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label9" class="form-control" ><%# Eval("sexo")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label10">Curso</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label11" class="form-control" ><%# Eval("curso")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label12">Sede</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label13" class="form-control" ><%# Eval("sede")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label14">Director de Grupo</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label15" class="form-control" ><%# Eval("director_grupo")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label16">F. de Nacimiento</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label17" class="form-control" ><%# Eval("fecha_nacimiento")%></asp:Label></div>
                     <br /><br />
            <div class="col-md-4"> <asp:Label runat="server" ID="Label18">Descripción Inicial</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label19" class="form-control" ><%# Eval("descripcion_inicial")%></asp:Label></div>
                     <br /><br /><br /><br />

         <div class="col-md-6 pull-right" ><asp:Button ID="EditButton" class="btn btn-warning" CommandName="Edit" runat="server"  Text="Editar"  /></div>
          <div class="col-md-6"><asp:Button ID="DeleteButton" class="btn btn-danger" OnClientClick="return confirm('Are you sure you want delete');"  CommandName="Delete" runat="server"  Text="Eliminar"  /></div> 
            

         
              
                     

        </ItemTemplate>

        <EditItemTemplate>
            
            <div class="col-md-4"> <asp:Label runat="server" ID="lblID"> ID</asp:Label> </div>
                     <div class="col-md-6"><asp:Label runat="server" ID="Label1" class="form-control" ><%# Eval("id_alumno")%></asp:Label></div>
                     <br /><br />

                      <div class="col-md-4"><asp:Label runat="server">Nombres</asp:Label></div>
                        <div class="col-md-6"> <asp:TextBox ID="txtNombres" type="text" runat="server" class="form-control"  Text='<%# Bind("nombres") %>' /></div>
                        <br /><br />
                         <div class="col-md-4"><asp:Label runat="server">Tipo de ID</asp:Label></div>
                        <div class="col-md-6"> <asp:TextBox ID="TextBox3" type="text" runat="server" class="form-control"  Text='<%# Bind("tipo") %>' /></div>
                        <br /><br />
                        <div class="col-md-4"><asp:Label runat="server"># de Identificación</asp:Label></div>
                        <div class="col-md-6"> <asp:TextBox ID="txtIdenti" type="text" runat="server" class="form-control" Text='<%# Bind("identificacion") %>'/></div>
                        <br /><br />
                         <div class="col-md-4"><asp:Label runat="server">Sexo</asp:Label></div>
                        <div class="col-md-6"> <asp:TextBox ID="TextBox2" type="text" runat="server" class="form-control" Text='<%# Bind("sexo") %>'/></div>
                        <br /><br />
                        <div class="col-md-4"><asp:Label runat="server">Curso</asp:Label></div>
                        <div class="col-md-6"> <asp:TextBox ID="txtCurso" type="text" runat="server" class="form-control" Text='<%# Bind("curso") %>'/></div>
                        <br /><br />
                         <div class="col-md-4"><asp:Label runat="server">Sede</asp:Label></div>
                        <div class="col-md-6"> <asp:TextBox ID="TextBox1" type="text" runat="server" class="form-control" Text='<%# Bind("sede") %>'/></div>
                        <br /><br />
                         <div class="col-md-4"><asp:Label runat="server"> Director de Grupo</asp:Label></div>            
                         <div class="col-md-6"><asp:TextBox ID="txtDirector" type="text" runat="server" class="form-control" Text='<%# Bind("director_grupo") %>'/></div>
                      

                         <div class="col-md-4"><asp:Label runat="server">Fecha de Nacimiento</asp:Label></div>            
                         <div class="col-md-6"><asp:TextBox ID="txtFecha" type="date" runat="server" class="form-control" Text='<%# Bind("fecha_nacimiento") %>' /></div>
                        
                         <div class="col-md-4"><asp:Label runat="server"> Descripción Inicial</asp:Label></div>            
                         <div class="col-md-6"><asp:TextBox ID="txtDescripcion" type="text" runat="server" class="form-control" Text='<%# Bind("descripcion_inicial") %>'/></div>
            <br /><br /><br />
          

           <div class="col-md-6 pull-right"><asp:Button ID="UpdateButton" class="btn btn-success " CommandName="Update" runat="server"  Text="Hecho"  /></div> 
          <div class="col-md-6 pull-right"><a href="gestionar.aspx?id_alumno=<%#DataBinder.Eval(Container.DataItem, "id_alumno") %>" class="btn btn-warning">Cancelar</a></div> 



        </EditItemTemplate>


    </asp:FormView>

        </div>


    <asp:SqlDataSource ID="AlumnosResource" runat="server" ConnectionString="<%$ ConnectionStrings:CLTConnectionString %>" 
        DeleteCommand="DELETE FROM [alumno] WHERE [id_alumno] = @id_alumno" 
        InsertCommand="INSERT INTO [alumno] ([tipo], [identificacion], [nombres], [curso], [sede], [sexo], [director_grupo], [fecha_nacimiento], [descripcion_inicial]) VALUES (@tipo, @identificacion, @nombres, @curso, @sede, @sexo, @director_grupo, @fecha_nacimiento, @descripcion_inicial)" 
        SelectCommand="SELECT * FROM [alumno] WHERE ([id_alumno] = @id_alumno)"
        UpdateCommand="UPDATE [alumno] SET [tipo] = @tipo, [identificacion] = @identificacion, [nombres] = @nombres, [curso] = @curso, [sede] = @sede, [sexo] = @sexo, [director_grupo] = @director_grupo, [fecha_nacimiento] = @fecha_nacimiento, [descripcion_inicial] = @descripcion_inicial WHERE [id_alumno] = @id_alumno">
        <DeleteParameters>
            <asp:Parameter Name="id_alumno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="identificacion" Type="String" />
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="curso" Type="String" />
            <asp:Parameter Name="sede" Type="String" />
            <asp:Parameter Name="sexo" Type="String" />
            <asp:Parameter Name="director_grupo" Type="String" />
            <asp:Parameter Name="fecha_nacimiento" Type="String" />
            <asp:Parameter Name="descripcion_inicial" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id_alumno" QueryStringField="id_alumno" Type="Int32" />
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
