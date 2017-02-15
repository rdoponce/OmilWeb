<%@ Control Language="VB" AutoEventWireup="false" CodeFile="menu-lateral.ascx.vb" Inherits="adm_menu_lateral" %>
 <div  id="MainMenu">
     
  <div class="list-group panel">
       <a href="#demo3" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Ofertas laborales</a>
    <div class="collapse" id="demo3">
      <a href="ingresar-oferta.aspx" class="list-group-item">Ingresar oferta</a>
      <a href="modificar_oferta.aspx" class="list-group-item">Modificar oferta</a>
      <a href="eliminar-oferta.aspx" class="list-group-item">Eliminar oferta</a>
    </div>
    <a href="#demo4" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Capacitaciones</a>
    <div class="collapse" id="demo4">
      <a href="ingresar-capacitacion.aspx" class="list-group-item">Ingresar capacitación</a>
      <a href="modificar-capacitacion.aspx" class="list-group-item">Modificar capacitación</a>
      <a href="eliminar-capacitacion.aspx" class="list-group-item">Eliminar capacitación</a>
    </div>
  </div></div>