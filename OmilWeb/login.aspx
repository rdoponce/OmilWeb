<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master1-login.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="adm_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Administración del sitio</h1>
					</div>
				</div>


			</div>
		</div>

      <div class="section">
	    	<div class="container">
				<div class="row">
				<div class="col-sm-4">
				<img class="img-responsive" src="../img/logo-omil.png" alt="Omil Valparaíso"/>
				</div>
				<div class="col-sm-5">
						<h2>Login administrador</h2><br />
                    <p>Ingrese su nombre de usuario y contraseña para acceder al administrador de contenidos del sitio.</p>
                        <br /><br />
                   Nombre Usuario:<br /> <asp:TextBox ID="TextUsuario"  runat="server"  CssClass="form-control"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ErrorMessage="*Ingrese su Usuario." ForeColor="Red" ControltoValidate="TextUsuario"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <br />
						Contraseña:<br />  <asp:TextBox ID="TextContraseña" runat="server"  CssClass="form-control"  TextMode="Password"  ></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ErrorMessage="*Ingrese su Contraseña." ForeColor="Red" ControltoValidate="TextContraseña"  Font-Italic="true" >
                   </asp:RequiredFieldValidator>
                        <br />
                   <asp:Button ID="BotonIngresar" runat="server" Text="Ingresar" class="btn btn-action right" />
                    <script type ="text/javascript">
                        function ingresofallo() {
                            alert("ERROR! USUARIO O CONTRASEÑA INCORRECTA!");
                        }
                  </script>
               
                       
					</div>
				</div>
			</div>
		</div>
</asp:Content>

