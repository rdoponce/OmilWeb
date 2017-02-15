<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master" AutoEventWireup="false" CodeFile="empleadores.aspx.vb" Inherits="empleadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Empleadores</h1>
					</div>
				</div>
			</div>
		</div>

        <div class="section">
	    	<div class="container">
				<div class="row">
				<div class="col-sm-4">
				<img class="img-responsive" src="img/modulos-omil.png" alt="Omil Valparaíso"/>
				</div>
				<div class="col-sm-8">
						<h2>Empleadores</h2><br />
						<p>Omil Valparaíso esta integrada por un equipo integral de profesionales orientados a facilitar el proceso los procesos de selección de personal a empleadores, derivando los postulantes más idóneaos en relación a los requerimientos solicitados para cada cargo.<br /><br />
   
    Para cursar la solicitud de datos de trabajadores, el empleador debe llenar una ficha tipo, en donde se consignan los datos de la empresa y de la oferta laboral. <br /><br />

   A modo de facilitar el encuentro entre oferta y demanda de empleo, en caso de que la empresa lo requiera, OMIL Valparaíso ofrece un espacio en nuestras dependencias para la realización de entrevistas previa coordinación. <br /><br />

   Una vez concluido el proceso de selección la empresa se compromete a enviar a OMIL Valparaíso un certificado de registro de personas contratadas con fecha de inicio y término de contrato de cada uno. El formato del certificado es enviado por OMIL Valparaíso y cumple la función de respaldar la gestión realizada.<br />
                            <br />
						</p>
                        <h3>Ficha solicitud datos de trabajades</h3>   <br />  
                    <h4>I.- DATOS EMPRESA</h4>
               <div class="col-sm-6"> Fecha solicitud (DD-MM-YYYY)<br />
                   <asp:TextBox ID="TextFechaSol" runat="server"  CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextFechaSol">
                   </asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Fecha Inválida."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFechaSol" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$">
                    </asp:RegularExpressionValidator>
                  </div>
               <div class="col-sm-6"> Nombre empresa<br />
                   <asp:TextBox ID="TextNombreEmpresa" runat="server"  CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextNombreEmpresa">
                   </asp:RequiredFieldValidator>
                <br /> </div>
               <div class="col-sm-6"> Razón social<br />
                   <asp:TextBox ID="TextRazon" runat="server"  CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextRazon">
                   </asp:RequiredFieldValidator></div>
                    
                <div class="col-sm-6">   Rut<br />
                    <asp:TextBox ID="TextRut" runat="server"  CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextRut">
                   </asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"
                       ControlToValidate="TextRut" ErrorMessage="*Ingrese Rut Valido" ForeColor="Red" Font-Italic="true" ValidationExpression="\d{3,8}-[\d|kK]{1}"> 
                       </asp:RegularExpressionValidator>
               <br /> </div>
               <div class="col-sm-6">   Actividad empresa<br />
                   <asp:TextBox ID="TextActividad" runat="server"  CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextActividad">
                   </asp:RequiredFieldValidator>
               </div>
                       <div class="col-sm-6">   Dirección comercial<br />
                           <asp:TextBox ID="TextDireccion" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextDireccion">
                         </asp:RequiredFieldValidator>
               <br /></div>
                       <div class="col-sm-6">   Fono<br />
                           <asp:TextBox ID="TextFono" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator7" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextFono">
                         </asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator runat="server"  ErrorMessage="*Ingrese Valores Numericos"  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFono" ValidationExpression="^[0-9]*"> 
                         </asp:RegularExpressionValidator>
               </div>
                       <div class="col-sm-6">   Email (ejemplo@ejemplo.com)<br />
                           <asp:TextBox ID="TextEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator8" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextEmail">
                          </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator   runat="server" ErrorMessage="Correo Inválido."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                         </asp:RegularExpressionValidator>
              <br /><br/> </div>
                       <div class="col-sm-6">   Nombre solicitante<br />
                           <asp:TextBox ID="TextNombreSol" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator9" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextNombreSol">
                           </asp:RequiredFieldValidator>
               </div>
                       <div class="col-sm-6">   Cargo solicitante<br />
                           <asp:TextBox ID="TextCargoSol" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator10" ErrorMessage="*Debe completar todos los campos."  ForeColor="Red" Font-Italic="true" ControltoValidate="TextCargoSol">
                           </asp:RequiredFieldValidator>
              <br /> </div>
                             <div class="col-sm-6">   Fono solicitante<br />
                                 <asp:TextBox ID="TextFonoSol" runat="server"  CssClass="form-control"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator11" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextFonoSol">
                               </asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="TextFonoSol" ErrorMessage="*Ingrese Valores Numericos"  ForeColor="Red" Font-Italic="true" ValidationExpression="^[0-9]*"> 
                               </asp:RegularExpressionValidator>
               </div>
                             <div class="col-sm-6">   Email solicitante (ejemplo@ejemplo.com)<br />
                                 <asp:TextBox ID="TextEmailSol" runat="server"  CssClass="form-control"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator12" ErrorMessage="*Debe completar todos los campos."  ForeColor="Red" Font-Italic="true" ControltoValidate="TextEmailSol">
                               </asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Correo Inválido."  ForeColor="Red" ControlToValidate="TextEmailSol" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                                 </asp:RegularExpressionValidator>
               <br /><br/></div>

                      <h4>II.- DATOS DE LA OFERTA DE EMPLEO</h4><br />
                           <div class="col-sm-6">   Cargo<br />
                               <asp:TextBox ID="TextCargo" runat="server"  CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator13" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextCargo">
                              </asp:RequiredFieldValidator>
               </div>
                       <div class="col-sm-6">   Área<br />
                           <asp:TextBox ID="TextArea" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator14" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextArea">
                           </asp:RequiredFieldValidator>
             <br />  </div>
                       <div class="col-sm-12">   Descripción del cargo<br />
                           <asp:TextBox ID="TextDescripcionCargo" runat="server"  CssClass="form-control" Height="200px" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator15" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextDescripcionCargo">
                            </asp:RequiredFieldValidator>
           <br />    </div>
                     <div class="col-sm-12">   Perfil del postulante<br />
                         <asp:TextBox ID="TextPerfilPostulante" runat="server"  CssClass="form-control" Height="200px" TextMode="MultiLine"></asp:TextBox>
                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator16" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextPerfilPostulante">
                          </asp:RequiredFieldValidator>
           <br />    </div>
                      <div class="col-sm-6">   Sexo <br />
                          <asp:DropDownList ID="DropDownListSexo" runat="server" CssClass="form-control">
                              <asp:ListItem Value="1">Indiferente</asp:ListItem>
                              <asp:ListItem Value="2">Femenino</asp:ListItem>
                              <asp:ListItem Value="3">Maculino</asp:ListItem>
                          </asp:DropDownList>
               </div>
                       <div class="col-sm-6">   Experiencia <br />
                          <asp:DropDownList ID="DropDownListExperiencia" runat="server" CssClass="form-control">
                              <asp:ListItem Value="1">Indiferente</asp:ListItem>
                              <asp:ListItem Value="2">Sin experiencia</asp:ListItem>
                              <asp:ListItem Value="3">Menos a 1 año</asp:ListItem>
                              <asp:ListItem Value="4">Igual a  a 1 año</asp:ListItem>
                              <asp:ListItem Value="5">Mayor a 1 año</asp:ListItem>
                               <asp:ListItem Value="6">Mayor a 4 años</asp:ListItem>
                          </asp:DropDownList>
              <br /> </div>
                    <div class="col-sm-4">Rango de edad<br /> 
                        <asp:TextBox ID="TextRangoEdad" runat="server" CssClass="form-control"></asp:TextBox> 
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator18" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextRangoEdad">
                         </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4">Nivel de estudios<br /> 
                        <asp:DropDownList ID="DropDownListNivelEst" runat="server" CssClass="form-control">
                              <asp:ListItem Value="1">Indiferente</asp:ListItem>
                              <asp:ListItem Value="2">Básico</asp:ListItem>
                              <asp:ListItem Value="3">Básico completo</asp:ListItem>
                              <asp:ListItem Value="4">Medio</asp:ListItem>
                              <asp:ListItem Value="5">Medio completo</asp:ListItem>
                               <asp:ListItem Value="6">Técnico superior</asp:ListItem>
                          <asp:ListItem Value="6">Técnico superior titulado</asp:ListItem>
                          <asp:ListItem Value="6">Universitario</asp:ListItem>
                          </asp:DropDownList></div>
                    <div class="col-sm-4"> Conocimiento técnico<br /> 
                        <asp:TextBox ID="TextConocimiento" runat="server"  CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator17" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextConocimiento">
                         </asp:RequiredFieldValidator>
                        <br /> </div><br />
                     <div class="col-sm-4"> Sueldo bruto<br />
                         <asp:TextBox ID="TextSueldoBru" runat="server"  CssClass="form-control"></asp:TextBox> 
                         <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator19" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextSueldoBru">
                         </asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                            ControlToValidate="TextSueldoBru" ErrorMessage="*Ingrese Valores Numericos"  ForeColor="Red" Font-Italic="true" ValidationExpression="^[0-9]*"> 
                         </asp:RegularExpressionValidator>
                     </div>
                     <div class="col-sm-4"> Sueldo líquido<br /> 
                         <asp:TextBox ID="TextSueldoLiq" runat="server"  CssClass="form-control"></asp:TextBox> 
                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator20" ErrorMessage="*Debe completar todos los campos." ForeColor="Red"  Font-Italic="true" ControltoValidate="TextSueldoLiq">
                          </asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                            ControlToValidate="TextSueldoLiq" ErrorMessage="*Ingrese Valores Numericos"  ForeColor="Red" Font-Italic="true" ValidationExpression="^[0-9]*"> 
                         </asp:RegularExpressionValidator>
                     </div>
                     <div class="col-sm-4"> Tipo de contrato<br /> 
                         <asp:DropDownList ID="DropDownListTipoContrato" runat="server" CssClass="form-control">
                              <asp:ListItem Value="1">Honorario</asp:ListItem>
                              <asp:ListItem Value="2">Plazo fijo</asp:ListItem>
                              <asp:ListItem Value="3">Indefinido</asp:ListItem>
                              <asp:ListItem Value="4">Por obra o faena </asp:ListItem>
                             
                          </asp:DropDownList><br /><br/><br /> </div>

                    <div class="col-sm-4"> Lugar de trabajo<br /> 
                        <asp:TextBox ID="TextLugarTrab" runat="server"  CssClass="form-control"></asp:TextBox> 
                       <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator21" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextLugarTrab">
                         </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4"> Horario de trabajo<br /> 
                         <asp:TextBox ID="TextHorarioTrab" runat="server"  CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator22" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextHorarioTrab">
                         </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4"> Fecha de contratación (DD-MM-YYYY)<br /> 
                        <asp:TextBox ID="TextFechaContratacion" runat="server"  CssClass="form-control"></asp:TextBox> 
                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator23" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextFechaContratacion">
                         </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Fecha Inválida."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFechaContratacion" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$">
                    </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-4"> Lugar entrevista<br />
                        <asp:TextBox ID="TextLugarEnt" runat="server"  CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator24" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextLugarEnt">
                         </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4"> Hora entrevista<br /> 
                        <asp:TextBox ID="TextHoraEnt" runat="server"  CssClass="form-control"></asp:TextBox> 
                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator25" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true"  ControltoValidate="TextHoraEnt">
                         </asp:RequiredFieldValidator>
                    </div>
                     <div class="col-sm-4"> Fecha entrevista (DD-MM-YYYY)<br /> 
                         <asp:TextBox ID="TextFechaEnt" runat="server"  CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator26" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextFechaContratacion">
                         </asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Fecha Inválida."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFechaEnt" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$">
                         </asp:RegularExpressionValidator>
                          <br /></div>
                      <div class="col-sm-6"> N° vacantes<br />
                          <asp:TextBox ID="TextNumeroVac" runat="server"  CssClass="form-control"></asp:TextBox> 
                           <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator27" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextNumeroVac">
                          </asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator5"  ForeColor="Red" Font-Italic="true" runat="server" ControlToValidate="TextNumeroVac" ErrorMessage="*Ingrese Valores Numericos"   ValidationExpression="^[0-9]*"> 
                            </asp:RegularExpressionValidator>
                       </div>
                       <div class="col-sm-6"> N° postulantes<br /> 
                              <asp:TextBox ID="TextNumeroPost" runat="server"  CssClass="form-control"></asp:TextBox> 
                              <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator28" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" Font-Italic="true" ControltoValidate="TextNumeroPost">
                              </asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator6"  ForeColor="Red" Font-Italic="true" runat="server" ControlToValidate="TextNumeroPost" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*"> 
                               </asp:RegularExpressionValidator>
                        <br /><br /></div>
                                        
                      <h4>III.- DOCUMENTOS SOLICITADOS PARA LA ENTREVISTA</h4><br />

                                         <div class="col-sm-3"> Curriculum vitae</div>
                                         <div class="col-sm-1">  <asp:CheckBox ID="CheckCurriculum" runat="server" CssClass="checkbox" /></div>  
                                        
                                          <div class="col-sm-3"> Copia Cédula Identidad</div>
                                          <div class="col-sm-1">     <asp:CheckBox ID="CheckCedula" runat="server" CssClass="checkbox" /></div>
                   
                                          <div class="col-sm-3">  Certificado de estudios</div>
                                          <div class="col-sm-1">   <asp:CheckBox ID="CheckCertiEstudios" runat="server" CssClass="checkbox" /><br /><br /></div>
                     

                                    <div class="col-sm-3"> Certificado de título</div>
                                    <div class="col-sm-1"> <asp:CheckBox ID="CheckCertiTitulo" runat="server" CssClass="checkbox" /></div>

                                    <div class="col-sm-3"> Cert. de antecedentes</div>
                                    <div class="col-sm-1"><asp:CheckBox ID="CheckCertiAntecedentes" runat="server" CssClass="checkbox" /></div>
                                    <div class="col-sm-3"> Licencia de Conducir</div>
                                   <div class="col-sm-1"> <asp:CheckBox ID="CheckLicenciaCond" runat="server" CssClass="checkbox" /><br /><br /></div>

                                    <div class="col-sm-3"> Certificado de residencia</div>
                                    <div class="col-sm-1"><asp:CheckBox ID="CheckCertiResidencia" runat="server" CssClass="checkbox" /></div>
                                    <div class="col-sm-3"> Ultimo finiquito</div>
                                   <div class="col-sm-1"><asp:CheckBox ID="CheckUltimoFiniquito" runat="server" CssClass="checkbox" /></div>
                                    <div class="col-sm-3"> Carta de referencia </div>
                                    <div class="col-sm-1"> <asp:CheckBox ID="CheckCartaRef" runat="server" CssClass="checkbox" /><br /><br /></div>
               
                
                 <div class="col-sm-12">   Observaciones<br /><asp:TextBox ID="TextObs" runat="server"  CssClass="form-control" Height="200px" TextMode="MultiLine"></asp:TextBox>
					<br />	<asp:Button ID="ButtonEmp" runat="server" Text="Enviar" class="btn btn-green"/>
                    <script type ="text/javascript">
                        function envioexito() {
                            alert("MENSAJE ENVIADO CON EXITO!");
                        }
                        function enviofallo() {
                            alert("MENSAJE NO SE HA PODIDO ENVIAR!");
                        }
                    </script>
						<br /><br />			
					</div>
                    <div class="col-sm-12">* RECUERDE INFORMAR LA SITUACION DE LOS POSTULANTES ENVIADOS POR OMIL A:<br />
                        &nbsp;
                        Gabriela Aedo Dussuel<br />      
                        &nbsp;      
                        Email: <a href="mailto:gaedo@munivalpo.cl">gaedo@munivalpo.cl</a>  <br />            
                        &nbsp;            
                        Fono: +56 32 293 9363 <br />
                    </div>	 
                </div>
                  
		<br /><br />				
					

				</div>
			
		</div>
            </div>
</asp:Content>


