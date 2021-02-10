<%@ Page Title="POSTULAR A BECA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Postulacion.aspx.cs" Inherits="Fron_End.Postulacion" %>
<asp:Content ID="navbar" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <a href="PostulacionBecas.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100">BECAS</a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <span class="label label-dot label-sm bg-white opacity-75 mx-3"></span>
                            <a href="#" class="text-white text-hover-white opacity-75 hover-opacity-100"><%: Page.Title %></a>
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
                    <div class="card-body">
                        <div class="card-title">
                            <asp:Label id="lblTituloBeca" Text="text" runat="server" class="card-label font-size-h3"/>
                        </div>
                        <div class="alert alert-custom alert-danger fade show" role="alert" id="alertaError" runat="server">
                            <div class="alert-icon"><i class="flaticon-warning"></i></div>
                            <div class="alert-text">
                                <asp:Label Text="" runat="server" id="lblError"/>
                            </div>
                            <div class="alert-close">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true"><i class="ki ki-close"></i></span>
                                </button>
                            </div>
                        </div>
                        <div class="alert alert-custom alert-warning fade show" role="alert" id="alertaAdvertencia" runat="server">
                            <div class="alert-icon"><i class="flaticon-warning"></i></div>
                            <div class="alert-text">
                                <asp:Label Text="" runat="server" id="lblAdvertencia"/>
                            </div>
                            <div class="alert-close">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true"><i class="ki ki-close"></i></span>
                                </button>
                            </div>
                        </div>
                        <!--begin: Datatable-->
                        <div class="table-responsive">
                            <asp:GridView ID="gvRequisito" runat="server" AutoGenerateColumns="false" 
                                HorizontalAlign="Center" CssClass="table table-bordered" Width="100%" 
                                CellSpacing="0" DataKeyNames="idDocumentoRequisito" OnRowCommand="gvRequisito_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="idDocumentoRequisito" HeaderText="ID"/>
                                    <asp:BoundField DataField="nombre" HeaderText="Requisito" />
                                    <asp:BoundField DataField="opcional" HeaderText="Opcional" />
                                    <asp:TemplateField HeaderText="Modificar" ItemStyle-HorizontalAlign="Right">
                                        <ItemTemplate>
                                            <div class="btn btn-outline-primary">
                                                <span>Subir Archivo</span>
                                                <asp:FileUpload ID="fuRequisito" runat="server" accept=".pdf"/>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Formato" ItemStyle-HorizontalAlign="Right">
                                        <ItemTemplate>
                                            <div id="btnFormato" runat="server">
                                                <a href='<%# Eval("enlaceFormato") %>' class="btn btn-success btn-circle" target="_blank">
                                                    <i class="fas fa-file-download"></i>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <style>
                                a[href=""]{
                                    display: none;
                                }
                            </style>
                        </div>
                        <!--end: Datatable-->
                        <asp:Button id="btnPostular" Text="POSTULAR" runat="server" class="btn btn-outline-primary btn-lg btn-block" OnClick="btnPostular_Click"/>
                        <asp:Button id="btnCancelar" Text="CANCELAR" runat="server" class="btn btn-outline-danger btn-lg btn-block" OnClick="btnCancelar_Click"/>
                    </div>
                </div>
                <!--end::Card-->
         
            </div>
            <!--end::Container-->
        </div>
        <!--end::Entry-->
    </div>
</asp:Content>

