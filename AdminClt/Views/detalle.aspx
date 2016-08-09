<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="detalle.aspx.cs" Inherits="AdminClt.Views.detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-12">

       
          <div class="box-body box-profile col-sm-3">
                  <img class="profile-user-img img-responsive img-circle" src="../../dist/img/user4-128x128.jpg" alt="User profile picture">

                  <h3 class="profile-username text-center">Nina Mcintire</h3>

                  <p class="text-muted text-center">Software Engineer</p>

                  <ul class="list-group list-group-unbordered">
                    <li class="list-group-item">
                      <b>Followers</b> <a class="pull-right">1,322</a>
                    </li>
                    <li class="list-group-item">
                      <b>Following</b> <a class="pull-right">543</a>
                    </li>
                    <li class="list-group-item">
                      <b>Friends</b> <a class="pull-right">13,287</a>
                    </li>
                  </ul>

                  <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
            </div>


        <asp:Repeater ID="detallesRepeater" runat="server" DataSourceID="detalles">
            <ItemTemplate>


             

            </ItemTemplate>
        </asp:Repeater>
         </div>
        <asp:SqlDataSource runat="server" ID="detalles" ConnectionString='<%$ ConnectionStrings:CLTConnectionString %>' SelectCommand="SELECT * FROM [alumno] WHERE ([id_alumno] = @id_alumno)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="id_alumno" Name="id_alumno" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
   
</asp:Content>
