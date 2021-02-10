<%@ Page Title="REVISIÓN DE BECAS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RevisionBecas.aspx.cs" Inherits="Fron_End.RevisionBecas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="menu-nav">
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Inicio.aspx" class="menu-link">
                <span class="menu-text">INICIO</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Nosotros.aspx" class="menu-link">
                <span class="menu-text">NOSOTROS</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Becas.aspx" class="menu-link">
                <span class="menu-text">BECAS</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Noticias.aspx" class="menu-link">
                <span class="menu-text">NOTICIAS</span>
            </a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Subheader-->
        <div class="subheader min-h-lg-175px pt-5 pb-7 subheader-transparent" id="kt_subheader">
            <div class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                <!--begin::Details-->
                <div class="d-flex align-items-center flex-wrap mr-2">
                    <!--begin::Heading-->
                    <div class="d-flex flex-column">
                        <!--begin::Title-->
                        <h2 class="text-white font-weight-bold my-2 mr-5"><%: Page.Title %></h2>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <div class="d-flex align-items-center font-weight-bold my-2">
                            <!--begin::Item-->
                            <a href="Inicio.aspx" class="opacity-75 hover-opacity-100">
                                <i class="flaticon2-shelter text-white icon-1x"></i>
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <span class="label label-dot label-sm bg-white opacity-75 mx-3"></span>
                            <a href="RevisionBecas.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100"><%: Page.Title %></a>
                            <!--end::Item-->
                        </div>
                        <!--end::Breadcrumb-->
                    </div>
                    <!--end::Heading-->
                </div>
                <!--end::Details-->
            </div>
        </div>
        <!--end::Subheader-->
        <!--begin::Entry-->
        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container">
                <!--begin::Card-->
                <div class="card card-custom gutter-b">
                    <div class="card-header flex-wrap border-0 pt-6 pb-0">
                        <div class="card-title">
                            <h3 class="card-label">Solicitudes</h3>
                        </div>
                        <div class="card-toolbar">
                            <a href="Reportes.aspx" class="btn btn-lg btn-light-success font-weight-bold mr-2">
                                <i class="flaticon-graph"></i>Reportes</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-6">
                            <div class="col-lg-3 mb-lg-0 mb-6">
                                <label>Escuela Profesional:</label>
                                <asp:DropDownList runat="server" ID="ddlEscuelaProfesional" DataTextField="Nombre" DataValueField="IdEscuela" 
                                    CssClass="form-control datatable-input"
                                    AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlEscuelaProfesional_SelectedIndexChanged">
                                    <asp:ListItem Text="Todas" Value="SNVAL" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-3 mb-lg-0 mb-6">
                                <label>Modalidad:</label>
                                <asp:DropDownList runat="server" ID="ddlModalidad" DataTextField="Nombre" DataValueField="IdModalidad" 
                                    CssClass="form-control datatable-input"
                                    AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlModalidad_SelectedIndexChanged">
                                    <asp:ListItem Text="Todas" Value="SNVAL" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-3 mb-lg-0 mb-6">
                                <label>Estado:</label>
                                <asp:DropDownList runat="server" ID="ddlEstados" CssClass="form-control datatable-input" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="Todas" Value="SNVAL" />
                                    <asp:ListItem Text="Analizando" Value="Analizando" />
                                    <asp:ListItem Text="Aprobado" Value="Aprobado" />
                                    <asp:ListItem Text="Denegado" Value="Denegado" />
                                    <asp:ListItem Text="Observado" Value="Observado" />
                                    <asp:ListItem Text="Revisado" Value="Revisado" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-3 mb-lg-0 mb-6">
                                <label>Limpiar filtros:</label>
                                <asp:Button ID="btnLimpiar" Text="Limpiar filtros" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnLimpiar_Click" />
                            </div>
                        </div>
                        <br />
                        <!--begin: Datatable-->
                        <div class="table-responsive">
                            <asp:GridView ID="gvBecas" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center"
                                CssClass="table table-bordered" Width="100%" CellSpacing="0" DataKeyNames="IdSolicitud" OnRowEditing="gvBecas_RowEditing" 
                                OnRowDataBound="gvBecas_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="IdSolicitud" HeaderText="ID"/>

                                    <asp:TemplateField HeaderText="Nombres">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Nombres") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Apellidos">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Apellidos") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Escuela Profesional">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("EscuelaProfesional") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Modalidad">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Modalidad") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fecha de Registro">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("FechaRegistro") %>' runat="server" ID="lblTipoUsuario"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Estado">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Estado") %>' runat="server" ID="lblEstado"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Acciones" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:LinkButton NavigateUrl="#" ID="btnEdit" runat="server" targer="_blank" CssClass="btn btn-icon btn-warning btn-circle btn-sm mr-2" CommandName="Edit" ToolTip="Edit"
                                                OnClientClick="window.document.forms[0].target='_blank';">
                                            <i class="flaticon-eye"></i>
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <!--end: Datatable-->
                    </div>
                </div>
                <!--end::Card-->
            </div>
            <!--end::Container-->
        </div>
        <!--end::Entry-->
    </div>
</asp:Content>
