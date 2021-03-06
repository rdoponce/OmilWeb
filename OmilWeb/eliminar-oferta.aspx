﻿<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master2-login.master" AutoEventWireup="false" CodeFile="eliminar-oferta.aspx.vb" Inherits="adm_eliminar_oferta" %>

<%@ Register Src="~/adm/menu-lateral.ascx" TagPrefix="uc1" TagName="menulateral" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>ofertas laborales</h1>
					</div>
				</div>
</div>
          </div>


        <div class="container">
    <div class="row">
					<div class="col-md-3">
  
                        <uc1:menulateral runat="server" ID="menulateral" />

                        </div>

          <div class="col-md-9">
           <h2>Eliminar oferta laboral</h2><br />
     
      

               <div class="col-sm-12">
          <asp:GridView ID="GridView1" HeaderStyle-BackColor="White" HeaderStyle-ForeColor="White" 
                runat="server" AutoGenerateColumns="False" DataKeyNames="id_oferta" DataSourceID="SqlDataSource1" Width="1000px" CssClass="table table-bordered" >

              <Columns>
                  <asp:BoundField DataField="id_oferta" HeaderText="id_oferta" InsertVisible="False" ReadOnly="True" SortExpression="id_oferta" Visible="False" />
                  <asp:BoundField DataField="titulo_oferta" HeaderText="Título Noticia" SortExpression="titulo_oferta" />
                  <asp:BoundField DataField="fecha_oferta" HeaderText="Fecha" SortExpression="fecha_oferta" />
                  <asp:BoundField DataField="descripcion_oferta" HeaderText="descripcion_oferta" SortExpression="descripcion_oferta" Visible="False" />
                  <asp:TemplateField HeaderText="Eliminar" ShowHeader="False">
                      <ItemTemplate>
                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="eliminar" OnClientClick="return confirm('Desea eliminar este registro?');" ></asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
<HeaderStyle BackColor="White" ForeColor="Gray"></HeaderStyle>

            </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DesarrolloConnectionString %>" SelectCommand="SELECT [id_oferta], [titulo_oferta], [fecha_oferta], [imagen_oferta], [descripcion_oferta] FROM [oferta_laboral] ORDER BY [fecha_oferta] DESC"></asp:SqlDataSource>
                   <script type ="text/javascript">
                           function eliminarexito() {
                               alert("SE HA ELIMINADO CON EXITO");
                               location.href = 'eliminar-oferta.aspx';
                           }
                           function eliminarfallo() {
                               alert("ERROR! NO SE HA PODIDO ELIMINAR");
                           }
                  </script>
</div>

           </div>
          </div>
            </div>
</asp:Content>

