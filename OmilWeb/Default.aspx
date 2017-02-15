<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/Pe-icon-7-stroke.css" rel="stylesheet"/>
        <script src="js/wow.min.js"></script>
         <style type="text/css">
             .auto-style1 {
                 font-family: "Open Sans", sans-serif;
                 font-weight: 600;
                 font-size: 1.1em;
             }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="about page" id="ABOUT">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <!-- ABOUT US SECTION TITLE-->
                    <div class="section_title">
                        <h2  >Omil Valparaíso</h2>
                        <p>La Oficina Municipal de Intermediación Laboral es un servicio gratuito que busca promover el encuentro entre oferta y demanda de empleo de nuestra comuna. Esta oficina depende de la Dirección de Desarrollo Económico y Cooperación Internacional de la Ilustre Municipalidad de Valparaíso.</p>
                    </div>
                </div>

            </div>
        </div>  
    <div class="inner_about_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about_phone wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                        <!-- PHONE -->
                            <img src="img/logo-omil.png" alt="Omil Valparaíso" height="300"/>
                        </div>
                    </div>
                    <div class="col-md-6"  >
                        <!-- TITLE -->
                        <div class="inner_about_title">
                            <h2>Funciones</h2>
                            
                            <p>Conozca estas y todas nuestras funciones como Oficina de Intermediación Laboral</p>
                        </div>
                        <div class="inner_about_desc">

                            <!-- SINGLE DESC -->
                            <div class="single_about_area fadeInUp wow" data-wow-duration=".5s" data-wow-delay="1s">
                                <!-- ICON -->
                                <div><i class="pe-7s-timer"></i></div>
                                <!-- HEADING DESCRIPTION -->
                                <h3>Ofertas Laborales</h3>
                                <p>Informamos sobre la disponibilidad de de puestos de trabajo, facilitando la posibilidad de reincersión laboral.</p>
                            </div>
                            <!-- END SINGLE DESC -->


                            <!-- SINGLE DESC -->
                            <div class="single_about_area fadeInUp wow" data-wow-duration=".5s" data-wow-delay="1.5s">
                                <!-- ICON -->
                                <div><i class="pe-7s-target"></i></div>
                                <!-- HEADING DESCRIPTION -->
                                <h3>Capacitaciones</h3>
                                <p>A través de SENCE y FOSIS, informamos a los vecinos y vecinas interesados en capacitarse gratuitamente en diversas áreas y oficios, </p>
                            </div>
                            <!-- END SINGLE DESC -->


                            <!-- SINGLE DESC -->
                            <div class="single_about_area fadeInUp wow" data-wow-duration=".5s" data-wow-delay="2s">
                                <!-- ICON -->
                                <div><i class="pe-7s-stopwatch"></i></div>
                                <!-- HEADING DESCRIPTION -->
                                <h3>Seguro de Cesantía</h3>
                                <p>Certificamos y orientamos a los beneficiarios del Fondo de Cesantía Solidario.</p>
                            </div>
                            <!-- END SINGLE DESC -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
	

      <div class="section">
	        <div class="container">
	        	<div class="row">
	        		<!-- OFERTAS LABORALES -->
                    <div class="col-sm-6 featured-news" style="float:left">
                     <h3>Ofertas laborales</h3>
	        	 <asp:ListView ID="lvOfertas" runat="server" DataSourceID="SqlDataSource1">

                  <ItemTemplate>
                      <div class="row">
                      <div class="col-xs-4"><a href="#"><asp:Image runat="server" id="imagen"  src='<%# Eval("imagen_oferta") %>' width="484" height="150" /></a></div>
                      <div class="col-xs-8">
                      <a href="#"></b><asp:Label runat="server" ID="id"  Text='<%# Eval("id_oferta")%>' Visible="false"></asp:Label></a>
                      <div class="caption"><a href="#"><asp:Label runat="server" ID="titulo"  Text='<%# Eval("titulo_oferta")%>'></asp:Label><br /></a></div>
                      <div class="date"><asp:Label runat="server" ID="fecha"  Text='<%# Eval("fecha_oferta")%>' ></asp:Label><br /></div>
                      <div class="intro"><asp:Label runat="server" ID="descripcion" Text='<%# Eval("descripcion_oferta")%>' ></asp:Label><br /></div>
                      <div> <asp:LinkButton ID="lb" runat="server" >Ver más...</asp:LinkButton><br /><br /></div>
                      </div> </div>
                  </ItemTemplate>

                  </asp:ListView>  
                        </div> 
	        		<!-- FIN OFERTAS LABORALES -->
	        		<!-- CAPACITACIONES -->
	        		<div class="col-sm-6 latest-news" style="float:right">
	        			<h3>Capacitaciones</h3>
	        	
                        <asp:ListView ID="lvCapacitaciones" runat="server" DataSourceID="SqlDataSource2">
                
                       <ItemTemplate>
                           <div class="row">
                           <div class="col-xs-4"><a href="#"><asp:Image runat="server" id="imagen"  src='<%# Eval("imagen_capacitacion") %>' width="484" height="150" /></a></div>
                           <div class="col-xs-8">
                           <div class="caption"><a href="#"><asp:Label runat="server" ID="titulo"  Text='<%# Eval("titulo_capacitacion")%>'></asp:Label><br /></a></div>
                            <div class="date"><asp:Label runat="server" ID="fecha"  Text='<%# Eval("fecha_capacitacion")%>' ></asp:Label><br /></div>
                            <div class="intro"><asp:Label runat="server" ID="descripcion"  Text='<%# Eval("descripcion_capacitacion")%>' ></asp:Label><br></div>
                           <div> <asp:LinkButton ID="lb" runat="server" >Ver más...</asp:LinkButton><br /><br /></div>
                           </div> </div>
                       </ItemTemplate>
                 
                      </asp:ListView>
                     </div> 

                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DesarrolloConnectionString %>" SelectCommand="SELECT TOP 3 [id_oferta], [titulo_oferta], [fecha_oferta], [imagen_oferta], [descripcion_oferta] FROM [oferta_laboral] ORDER BY [fecha_oferta] DESC" ></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDatasource2" runat="server" ConnectionString="<%$ ConnectionStrings:DesarrolloConnectionString %>" SelectCommand="SELECT TOP 3 [id_capacitacion], [titulo_capacitacion], [fecha_capacitacion], [imagen_capacitacion], [descripcion_capacitacion] FROM [capacitacion] ORDER BY [fecha_capacitacion] DESC"></asp:SqlDataSource>
	        		<!-- End Featured News -->
                    </div> 
	        	</div>
          </div>
</asp:Content>

