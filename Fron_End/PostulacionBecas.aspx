<%@ Page Title="BECAS VIGENTES" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostulacionBecas.aspx.cs" Inherits="Fron_End.PostulacionBecas" %>
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
    <div class="content pt-0 d-flex flex-column flex-column-fluid" id="kt_content">
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
                            <a href="PostulacionBecas.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100"><%: Page.Title %></a>
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
        <!--begin::Section-->
        <div class="container py-8">
        </div>
        <!--end::Section-->
        <!--begin::Section-->
        <div class="container mb-8">
            <div class="row">
                <div class=" col-lg-12">
                    <!--begin::error-->
                    <div class="alert alert-custom alert-light-danger fade show mb-5" role="alert" id="alertaSolicitudVigente" runat="server">
                        <div class="alert-icon">
                            <i class="flaticon-warning"></i>
                        </div>
                        <div class="alert-text">Ústed ya tiene una solicitud en proceso.</div>
                        <div class="alert-close">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">
                                    <i class="ki ki-close"></i>
                                </span>
                            </button>
                        </div>
                    </div>
                    <!--end::error-->
                    <!--begin::error-->
                    <div class="alert alert-custom alert-light-danger fade show mb-5" role="alert" id="alertaError" runat="server">
                        <div class="alert-icon">
                            <i class="flaticon-warning"></i>
                        </div>
                        <div class="alert-text">Se produjo un error al generar su solicitud, intente de nuevo más tarde.</div>
                        <div class="alert-close">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">
                                    <i class="ki ki-close"></i>
                                </span>
                            </button>
                        </div>
                    </div>
                    <!--end::error-->
                    <!--begin::error-->
                    <div class="alert alert-custom alert-light-success fade show mb-5" role="alert" id="alertaCorrecto" runat="server">
                        <div class="alert-icon">
                            <i class="flaticon2-check-mark"></i>
                        </div>
                        <div class="alert-text">Su solicitud se registró con exito</div>
                        <div class="alert-close">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">
                                    <i class="ki ki-close"></i>
                                </span>
                            </button>
                        </div>
                    </div>
                    <!--end::error-->
                </div>
            </div>
            <!--begin::Row-->
            <div class="row">
                <div class=" col-lg-12">
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">BECAS ORDINARIAS</h3>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                </div>
                <div class="col-lg-6">
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">EXCELENCIA ACADÉMICA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=P0001" class="btn btn-sm btn-light-primary mr-1">
                                    <i class="flaticon2-plus"></i>
                                     POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true" >
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">ESTÍMULO E INCENTIVO POR <br />ACTIVIDAD ACADÉMICA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=P0002" class="btn   btn-sm btn-light-primary mr-1"  >
                                    <i class="flaticon2-plus"></i>
                                    POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true"  >
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">INSOLVENCIA ECONÓMICA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=P0003" class="btn   btn-sm btn-light-primary mr-1"  >
                                    <i class="flaticon2-plus"></i>
                                    POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true"  >
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">DEPORTISTA DESTACADO, <br />RECREACIÓN Y ALTA COMPETENCIA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=P0004" class="btn   btn-sm btn-light-primary mr-1"  >
                                    <i class="flaticon2-plus"></i>
                                    POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true"  >
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">PROMOTOR DE ARTE Y CULTURA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=P0005" class="btn   btn-sm btn-light-primary mr-1"  >
                                    <i class="flaticon2-plus"></i>
                                    POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                </div>
                <div class="col-lg-6">
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true"  >
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">DEPORTISTA DE ALTA COMPETENCIA<br />
                                    <small>BECAS TOTALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=T0001" class="btn   btn-sm btn-light-primary mr-1"  >
                                    <i class="flaticon2-plus"></i>
                                    POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true"  >
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">ORFANDAD<br />
                                    <small>BECAS TOTALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="Postulacion.aspx?modalidad=T0002" class="btn   btn-sm btn-light-primary mr-1"  >
                                    <i class="flaticon2-plus"></i>
                                    POSTULAR
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                </div>
                <div class="col-lg-12">
                    <!--begin::Card-->
                    <br />
                    <div class="card card-custom">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">INFORMES</h3>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="alert alert-custom alert-primary" role="alert">
                                <div class="alert-icon">
                                    <i class="flaticon-questions-circular-button"></i>
                                </div>
                                <div class="alert-text">
                                    Canal de atención virtual: dbu@uandina.edu.pe – jsantos@uandina.edu.pe
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end::Card-->
                </div>
            </div>
            <!--end::Row-->
            
        </div>
        <br />
        <br />
    <!--end::Section-->
    <!--end::Entry-->
    </div>
</asp:Content>
