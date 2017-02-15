<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master2-login.master" AutoEventWireup="false" CodeFile="modificando-capacitacion.aspx.vb" Inherits="adm_modificando_capacitacion" %>

<%@ Register Src="~/adm/menu-lateral.ascx" TagPrefix="uc1" TagName="menulateral" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="section section-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Capacitaciones</h1>
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
                <h2>Modificar capacitación</h2>
                <br />
                <div class="col-sm-10">
                    <strong>Título capacitación</strong><br />
                    <asp:TextBox ID="TextTituloModCap" runat="server" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextTituloModCap"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <br />
                </div>

                <div class="col-sm-5">
                    Fecha (DD-MM-YYYY)<br />
                    <asp:TextBox ID="TextFechaModCap" runat="server" CssClass="form-control"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextFechaModCap"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Fecha Inválida."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFechaModCap" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="col-sm-5">
                    Subir imagen<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                </div>

                <div class="col-sm-10">
                    <strong>Descripción capacitación</strong><br />
                    <asp:TextBox ID="TextDescripcionModCap" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextDescripcionModCap"  Font-Italic="true" >
                   </asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="BotonModificarCap" runat="server" Text="Modificar" class="btn btn-action right" OnClientClick="return confirm('Está seguro que quiere modificar este registro?');" />
                     <script type ="text/javascript">
                           function modificarexito() {
                               alert("LA CAPACITACIÓN SE HA MODIFICADO CON EXITO!");
                               location.href = 'modificar-capacitacion.aspx';
                        }
                           function modificarfallo() {
                               alert("ERROR! CAPACITACIÓN NO SE HA MODIFICADO");
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

