<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master2-login.master" AutoEventWireup="false" CodeFile="modificando-oferta.aspx.vb" Inherits="adm_modificando_oferta" %>

<%@ Register Src="~/adm/menu-lateral.ascx" TagPrefix="uc1" TagName="menulateral" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section section-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>oferta laboral</h1>
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
                <h2>Modificar oferta</h2>
                <br />
                <div class="col-sm-10">
                    <strong>Título oferta</strong><br />
                    <asp:TextBox ID="TextTituloModOfe" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextTituloModOfe"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <br />
                </div>

                <div class="col-sm-5">
                    Fecha (DD-MM-YYYY)<br />
                    <asp:TextBox ID="TextFechaModOfe" runat="server" CssClass="form-control"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextFechaModOfe"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Fecha Inválida."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFechaModOfe" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="col-sm-5">
                    Subir imagen<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                </div>

                <div class="col-sm-10">
                    <strong>Descripción oferta</strong><br />
                    <asp:TextBox ID="TextDescripcionModOfe" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextDescripcionModOfe"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="BotonModificarOfe" runat="server" Text="Modificar" class="btn btn-action right" OnClientClick="return confirm('Está seguro que quiere modificar este registro?');" />
                    <script type ="text/javascript">
                           function modificarexito() {
                               alert("LA OFERTA LABORAL SE HA MODIFICADO CON EXITO!");
                               location.href = 'modificar_oferta.aspx';
                        }
                           function modificarfallo() {
                                alert("ERROR! OFERTA LABORAL NO SE HA MODIFICADO");
                           }
                           function subioimagen() {
                               alert("NO HA SUBIDO UNA IMAGEN")
                           }
                  </script>
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

