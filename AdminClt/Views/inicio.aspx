﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/main.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="AdminClt.Views.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <style>

           .main-sidebar{
        position:fixed;
    }
          /* .fixed-nav {
               z-index:100;
           position: fixed;
           }*/
    </style>
    <div class= "col-md-12">

        <div class= "col-md-12">
            <div class="box box-solid">

                   <div box-header with-border>
                  
                    <h3 class="box-title"></h3>
                 
                   </div>

               <div class="box-body">
             
                  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                              <li data-target="#carousel-example-generic"  data-slide-to="0" class=""></li>
                              <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                              <li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
                            </ol>
                            <div class="carousel-inner">
                              <div class="item">
                                <img src="http://i0.wp.com/bitcast-a-sm.bitgravity.com/slashfilm/wp/wp-content/images/Transformers-Optimus-Prime.jpg" alt="First slide">

                                <div class="carousel-caption">
                                  Este es optimus prime
                                </div>
                              </div>
                              <div class="item">
                                <img src="http://i0.wp.com/bitcast-a-sm.bitgravity.com/slashfilm/wp/wp-content/images/Transformers-Optimus-Prime.jpg" alt="Second slide">

                                <div class="carousel-caption">
                                  Second Slide
                                </div>
                              </div>
                              <div class="item active">
                                <img src="http://i0.wp.com/bitcast-a-sm.bitgravity.com/slashfilm/wp/wp-content/images/Transformers-Optimus-Prime.jpg" alt="Third slide">

                                <div class="carousel-caption">
                                  Third Slide
                                </div>
                              </div>
                            </div>

                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                              <span class="fa fa-angle-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                              <span class="fa fa-angle-right"></span>
                            </a>
                          </div>
                        

               </div>
              
            </div>
        </div>

      <!-- misión -->

       <div class="col-sm-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Visión</h3>
              <span class="label label-primary pull-right"><i class=""></i></span>
            </div><!-- /.box-header -->
            <div class="box-body">
              <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum<br>
              </p>
             
            </div><!-- /.box-body -->
          </div><!-- /.box -->
        </div>

        <div class="col-sm-6">
          <div class="box box-primary">
            <div class="box-header with-border">
             
              <span class="label label-primary pull-right"><i class=""></i></span>
            </div><!-- /.box-header -->
            <div class="box-body">
              <iframe width="100%" height="290" src="https://www.youtube.com/embed/bdzX-UVexVU" frameborder="0" allowfullscreen></iframe>
             
            </div><!-- /.box-body -->
          </div><!-- /.box -->
        </div>

        <!-- misión -->

        

        <div class="col-sm-6">
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Misión</h3>
              <span class="label label-danger pull-right"><i class=""></i></span>
            </div><!-- /.box-header -->
            <div class="box-body">
              <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum<br>
              </p>
            
            </div><!-- /.box-body -->
          </div><!-- /.box -->
        </div>

        <div class="col-sm-6">
          <div class="box box-danger">
            <div class="box-header with-border">
             
              <span class="label label-danger pull-right"><i class=""></i></span>
            </div><!-- /.box-header -->
            <div class="box-body">
              <iframe width="100%" height="270" src="https://www.youtube.com/embed/bdzX-UVexVU" frameborder="0" allowfullscreen></iframe>
            
            </div><!-- /.box-body -->
          </div><!-- /.box -->
        </div>

</div>

</asp:Content>
