<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="noticias.aspx.cs" Inherits="AdminClt.Views.noticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="col-md-12">
            <section class="content-header">
                    <h1>
                     Últimas Actualizaciones
                    </h1>
               <hr/>
             </section>

       
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
        <ItemTemplate>

        <div class="container table-responsive"  style="padding-top: 1em;">
              <table class="table table-hover">
                    <tr>
                        <td ><strong>El usuario </strong><asp:Label ID="Label1" runat="server"><%#DataBinder.Eval(Container.DataItem, "email") %></asp:Label> ha creado una historia</td>
                        <td> <asp:Label ID="lblIdenti" runat="server"><%#DataBinder.Eval(Container.DataItem, "fecha_comentario") %></asp:Label></td>

                    </tr>
                    <tr>
                        <td> <asp:Label ID="a" runat="server"><%#DataBinder.Eval(Container.DataItem, "comentario") %></asp:Label></td>

                        <td> 
                            <a href="detalle.aspx?id_alumno=<%#DataBinder.Eval(Container.DataItem, "id_alumno") %>" class="btn btn-info">ver</a>                             
                        </td>
                    </tr> 
                  </table>
                </div>
        </ItemTemplate>
    </asp:Repeater>
              
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CLTConnectionString %>" SelectCommand="SELECT * FROM [historia] ORDER BY [fecha_comentario]"></asp:SqlDataSource>
              
    </div>



        

</asp:Content>
