<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master" AutoEventWireup="false" CodeFile="capacitaciones.aspx.vb" Inherits="capacitaciones" %>

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
     	<div class="col-sm-12 featured-news">
	        	
             <asp:ListView ID="lvNoticias" runat="server" DataSourceID="SqlDataSource1">
                
                 <ItemTemplate>
                      <div class="row">
                      <div class="col-sm-2"><a href="#"><asp:Image runat="server" id="imagen"  src='<%# Eval("imagen_capacitacion") %>' width="484" height="150" /></a></div>
                      <div class="col-sm-9">
                      <div class="caption"><a href="#"><asp:Label runat="server" ID="titulo"  Text='<%# Eval("titulo_capacitacion")%>'></asp:Label><br /></a></div>
                      <div class="date"><asp:Label runat="server" ID="fecha"  Text='<%# Eval("fecha_capacitacion")%>' ></asp:Label><br /></div>
                      <div class="intro"><asp:Label runat="server" ID="descripcion" Text='<%# Eval("descripcion_capacitacion")%>' ></asp:Label><br /></div>
                      <div > <asp:LinkButton ID="lb" runat="server" >Ver más...</asp:LinkButton><br /><br /></div>
                </div> </div>
                 </ItemTemplate>
                 
                 <LayoutTemplate>
                     <div id="itemPlaceholderContainer" runat="server" >
                         <span runat="server" id="itemPlaceholder" />
                     </div>
                     <div class="col-sm-12 text-center">
                         <asp:DataPager ID="DataPager1" runat="server" PageSize="5"  >
                             <Fields> 
                                  <asp:NextPreviousPagerField ButtonType="Link" ShowPreviousPageButton="true" PreviousPageText="Anterior"  ShowNextPageButton="false"/>
                                  <asp:NumericPagerField ButtonType="Link"  />
                                  <asp:NextPreviousPagerField ButtonType="Link" NextPageText="Siguiente"  ShowNextPageButton="true" ShowPreviousPageButton="false"/>
                             </Fields>
                         </asp:DataPager>
                     </div>
                 </LayoutTemplate>
                 </asp:ListView>

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DesarrolloConnectionString %>" SelectCommand="SELECT * FROM [capacitacion] ORDER BY [fecha_capacitacion] DESC"></asp:SqlDataSource>
             
        </div>
      </div>
    </div>
</div>
</asp:Content>

