<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master" AutoEventWireup="false" CodeFile="detalle-capacitacion.aspx.vb" Inherits="detalle_capacitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>capacitaciones</h1>
					</div>
				</div>
			</div>
		</div>

     <div class="section">
	    	<div class="container">
				<div class="row">
					<!-- Blog Post -->
					<div class="col-sm-10">
						<div class="blog-post blog-single-post">
							<div class="single-post-title">
								<h2><asp:Label runat="server" id="titulolbl"></asp:Label></h2>
							</div>
                            <div class="single-post-image left">
								<asp:Image runat="server" ID="imagen" Width="700"  CssClass="img-responsive"  />
							</div>
							<div class="single-post-info">
								<i class="glyphicon glyphicon-calendar"></i><asp:Label runat="server" ID="fechalbl"></asp:Label>
							</div>							
							<div class="single-post-content">
								<asp:Label runat="server" ID="descripcionlbl"></asp:Label><br /><br />
								<i class="glyphicon glyphicon-chevron-left"></i><a href="capacitaciones.aspx" target="_self"> volver</a>
							</div>
							</div>
						</div>
					</div>
					<!-- End Blog Post -->
					<!-- Sidebar -->
              </div>
         </div>
</asp:Content>

