<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master" AutoEventWireup="false" CodeFile="ofertas.aspx.vb" Inherits="ofertas_laborales" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Ofertas laborales</h1>
					</div>
				</div>
			</div>
		</div>
    <div class="section">
	        <div class="container">
	        	<div class="row">
     	<div class="col-sm-12 featured-news">
              <asp:ListView ID="lvNoticias" runat="server" DataSourceID="SqlDataSource1">

                  <ItemTemplate>
                      <div class="row">
                      <div class="col-sm-2"><a href="#"><asp:Image runat="server" id="imagen"  src='<%# Eval("imagen_oferta") %>' width="484" height="150" /></a></div>
                      <div class="col-sm-9">
                      <a href="#"></b><asp:Label runat="server" ID="id"  Text='<%# Eval("id_oferta")%>' Visible="false"></asp:Label></a>
                      <div class="caption"><a href="#"><asp:Label runat="server" ID="titulo"  Text='<%# Eval("titulo_oferta")%>'></asp:Label><br /></a></div>
                      <div class="date"><asp:Label runat="server" ID="fecha"  Text='<%# Eval("fecha_oferta")%>' ></asp:Label><br /></div>
                      <div class="intro"><asp:Label runat="server" ID="descripcion" Text='<%# Eval("descripcion_oferta")%>' ></asp:Label><br /></div>
                      <div> <asp:LinkButton ID="lb" runat="server" >Ver más...</asp:LinkButton><br /><br /></div>
                      </div> </div>
                  </ItemTemplate>

                  <LayoutTemplate>
                      <div style="" id="itemPlaceholderContainer" runat="server">
                          <span runat="server" id="itemPlaceholder" />
                      </div>
                      <div class="col-sm-12 text-center">
                          <asp:DataPager ID="DataPager1" runat="server" PageSize="5" >
                              <Fields>
                                  <asp:NextPreviousPagerField ButtonType="Link" ShowPreviousPageButton="true" PreviousPageText="Anterior"  ShowNextPageButton="false"/>
                                  <asp:NumericPagerField ButtonType="Link" NextPreviousButtonCssClass="pagination" />
                                  <asp:NextPreviousPagerField ButtonType="Link" NextPageText="Siguiente"  ShowNextPageButton="true" ShowPreviousPageButton="false"/>
                              </Fields>
                          </asp:DataPager>
                          </div>
                  </LayoutTemplate>
                 
             
                  </asp:ListView>    

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DesarrolloConnectionString %>" SelectCommand="SELECT * FROM [oferta_laboral] ORDER BY [fecha_oferta] DESC"></asp:SqlDataSource>

             </div>
      </div>
      </div>
      </div>
</asp:Content>

