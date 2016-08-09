<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="AdminClt.Views.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

        .col-md-12 {
        margin-left:0%;
        
        }

    </style>

    

    <div class="col-md-12">

        <section class="content-header">
            <h1>
              Usuarios registrados
            </h1>
               <hr/>
        </section>

      


          <div class="container table-responsive"  style="padding-top: 1em;">
              <table class="table table-hover">
                    <tr>
                        <td><strong>Nombres</strong></td>
                        <td><strong>Identificación</strong></td>
                        <td><strong>Sede</strong></td>
                        <td><strong>Área</strong></td>
                        <td><strong>Email</strong></td>

                    </tr>
                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                     <ItemTemplate>
                    <tr>
                        <td> <asp:Label ID="a" runat="server"><%#DataBinder.Eval(Container.DataItem, "nombres") %></asp:Label></td>
                        <td> <asp:Label ID="lblIdenti" runat="server"><%#DataBinder.Eval(Container.DataItem, "identificacion") %></asp:Label></td>
                        <td> <asp:Label ID="v" runat="server"><%#DataBinder.Eval(Container.DataItem, "sede") %></asp:Label></td>
                        <td> <asp:Label ID="f" runat="server"><%#DataBinder.Eval(Container.DataItem, "area") %></asp:Label></td>
                        <td> <asp:Label ID="e" runat="server"><%#DataBinder.Eval(Container.DataItem, "email") %></asp:Label></td>

                        
                        <td> 
                     
                            <a href="perfil.aspx?id_docente=<%#DataBinder.Eval(Container.DataItem, "id_docente") %>" class="btn btn-info">Perfil</a>                            
                             
                        </td>
                    </tr> 

                     </ItemTemplate>
                    </asp:Repeater>
              </table>
             
    </div>
      </div>  
   
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CLTConnectionString %>"
          DeleteCommand="DELETE FROM [docente] WHERE [email] = @email"
          SelectCommand="SELECT * FROM [docente] ORDER BY [id_docente]">
                  <DeleteParameters>
                      <asp:Parameter Name="email" Type="String" />
                  </DeleteParameters>
            
               
              </asp:SqlDataSource>

</asp:Content>
