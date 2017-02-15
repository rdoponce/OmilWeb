<%@ Page Title="" Language="VB" MasterPageFile="~/adm/Master2-login.master" AutoEventWireup="false" CodeFile="modificar-capacitacion.aspx.vb" Inherits="adm_modificar_capacitación" %>

<%@ Register Src="~/adm/menu-lateral.ascx" TagPrefix="uc1" TagName="menulateral" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="section section-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>capacitaciones</h1>
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



                <div class="col-sm-12">
                        <asp:GridView ID="GridView2" HeaderStyle-BackColor="White" HeaderStyle-ForeColor="White"  
                         runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1000px" DataKeyNames="id_capacitacion" CssClass="table table-bordered"> 

                            <Columns>
                                <asp:BoundField DataField="id_capacitacion" HeaderText="id_capacitacion" SortExpression="id_capacitacion" InsertVisible="False" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="titulo_capacitacion" HeaderText="Título Capacitación" SortExpression="titulo_capacitacion" />
                                <asp:BoundField DataField="fecha_capacitacion" HeaderText="Fecha" SortExpression="fecha_capacitacion" />
                                <asp:TemplateField HeaderText="descripcion_capacitacion" SortExpression="descripcion_capacitacion" Visible="False">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion_capacitacion") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("descripcion_capacitacion") %>' Visible="False"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Modificar" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="modificar"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                 <HeaderStyle BackColor="White" ForeColor="Gray"></HeaderStyle>
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DesarrolloConnectionString %>" SelectCommand="SELECT [id_capacitacion], [titulo_capacitacion], [fecha_capacitacion], [imagen_capacitacion], [descripcion_capacitacion] FROM [capacitacion] ORDER BY [fecha_capacitacion] DESC"></asp:SqlDataSource>

                </div>

            </div>
        </div>
    </div>
</asp:Content>

