<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master2-login.master" AutoEventWireup="false" CodeFile="ingresar-capacitacion.aspx.vb" Inherits="adm_ingresar_capacitacion" %>

<%@ Register Src="~/adm/menu-lateral.ascx" TagPrefix="uc1" TagName="menulateral" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="section section-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Ingresar capacitación</h1>
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
                <h2>Ingresar capacitación</h2>
                <br />
                <div class="col-sm-10">
                    <strong>Título capacitación</strong><br />
                    <asp:TextBox ID="TextTituloCap" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextTituloCap"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <br />
                </div>

                <div class="col-sm-5">
                    Fecha (DD-MM-YYYY)<br />
                    <asp:TextBox ID="TextFechaCap" runat="server" CssClass="form-control"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextFechaCap"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator   runat="server" ErrorMessage="*Fecha Inválida."  ForeColor="Red" Font-Italic="true" ControlToValidate="TextFechaCap" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="col-sm-5">
                    Subir imagen<br />
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <br />
                </div>

                <div class="col-sm-10">
                    <strong>Descripción </strong>c<span class="auto-style1">apacitación</span><br />
                    <asp:TextBox ID="TextdescripcionCap" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ErrorMessage="*Debe completar todos los campos." ForeColor="Red" ControltoValidate="TextDescripcionCap"  Font-Italic="true">
                   </asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="BotonSubirCap" runat="server" Text="Subir" class="btn btn-action right" />
                    <script type ="text/javascript">
                           function ingresoexito() {
                               alert("LA CAPACITACIÓN SE HA INGRESADO CON EXITO!");
                               location.href = 'ingresar-capacitacion.aspx';
                        }
                           function ingresofallo() {
                               alert("ERROR! CAPACITACIÓN NO INGRESADA");
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

