<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master" AutoEventWireup="false" CodeFile="contacto.aspx.vb" Inherits="contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>contacto</h1>
					</div>
				</div>
			</div>
		</div>
     <div class="section">
	    	<div class="container">
				<div class="row">
				<div class="col-sm-4">
				<img class="img-responsive" src="img/contacto_omil.png" alt="Omil Valparaíso"/>
				</div>
				<div class="col-sm-6">
						<h2>Contactenos</h2><br />
                    <p><i class="pe-7s-map-marker" style="font-size:17px; vertical-align:middle;"></i>Av. Argentina 864, Valparaíso<br />
                        <i class="pe-7s-phone" style="font-size:17px; vertical-align:middle;"></i>+56 32 939 9436 +56 32 939 9435
                    </p>
                    <p><i class="pe-7s-map-marker" style="font-size:17px; vertical-align:middle;"></i>Obispo Valdés 1421 local 6, Portal Mayor de Curauma<br />
                        <i class="pe-7s-phone" style="font-size:17px; vertical-align:middle;"></i>  +56 32 939 9517
                    </p><br /><br />
                    
                    <asp:TextBox ID="TextNombre" runat="server" PlaceHolder="Nombre completo" CssClass="form-control"  ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="rfv"  ForeColor="Red" ControltoValidate="TextNombre" ErrorMessage="*Debe completar todos los campos."  Font-Italic="true" >
                   </asp:RequiredFieldValidator><br />

				    <asp:TextBox ID="TextCorreo" runat="server" PlaceHolder="Email (ejemplo@ejemplo.com)" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextCorreo"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Correo Inválido."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextCorreo" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                    </asp:RegularExpressionValidator>
                   
                     <asp:TextBox ID="TextMensaje" runat="server" PlaceHolder="Mensaje" CssClass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox> 
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ErrorMessage="*Debe completar todos los campos."  ForeColor="Red"  ControltoValidate="TextMensaje" Font-Italic="true">
                   </asp:RequiredFieldValidator><br />
                    <asp:Button ID="Boton1" runat="server" Text="Enviar" class="btn btn-action right"   /> <br /> 
                    <script type ="text/javascript">
                           function envioexito() {
                              alert("MENSAJE ENVIADO CON EXITO!");
                        }
                           function enviofallo() {
                               alert("ERROR! EL MENSAJE NO SE HA ENVIADO");
                        }
                  </script>

					</div>
				</div>
			</div>
		</div>
</asp:Content>

