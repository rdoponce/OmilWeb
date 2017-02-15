<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master2-login.master" AutoEventWireup="false" CodeFile="modificar-oferta.aspx.vb" Inherits="adm_modificar_oferta" %>

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
           <h2>Modificar oferta laboral</h2><br />
     
      

               <div class="col-sm-12">
           <table class="table table-striped">
               <tr>
                   <th class="cien">FECHA</th>
                   <th >TÍTULO NOTICIA</th>
                   <th class="cien"> MODIFICAR</th>
               </tr>
               <tr>
                   <td>10/10/2016</td>
                   <td>Aca va el titulo de una noticia</td>
                   <td>  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adm/modificando-oferta.aspx" Target="_self">modificar</asp:HyperLink></td>
               </tr>
               <tr>
                   <td>05/10/2016</td>
                   <td>Título de otra noticia</td>
                   <td> <asp:HyperLink ID="HyperLink2" runat="server">modificar</asp:HyperLink></td>
               </tr>
               <tr>
                   <td>03/08/2016</td>
                   <td>Título de una tercera noticia para modificar</td>
                   <td> <asp:HyperLink ID="HyperLink3" runat="server">modificar</asp:HyperLink></td>
               </tr>
           </table>
</div>

           </div>
          </div>
            </div>
   
</asp:Content>

