<%@ Page Title="NOTICIAS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="Fron_End.Noticias" %>

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
        <li class="menu-item menu-item-submenu menu-item-rel menu-item-here" data-menu-toggle="click" aria-haspopup="true">
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
            <!--begin::Row-->
            <div class="row">
                <div class="col-lg-6">
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">CONVOCATORIA BECAS ORDINARIAS 2020 - II<br />
                                    <small>13 de agosto del 2020</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Es la que, se otorga a los estudiantes que hayan obtenido las más altas notas, durante el semestre inmediato anterior; en estricto orden de 
                            méritos por escuela profesional, de acuerdo con el ranking o cuadro de mérito; formulado por la Dirección de Servicios Académicos y Registro Central, siempre que acrediten haber aprobado todas las asignaturas y no tener NSP en el semestre académico inmediato anterior.
                            <br />
                            <br />
                            <img class="img-fluid rounded mx-auto d-block" src="assets/media/becas/0-convocatoria-becas-2020-2-aac12079f7.jpg" />
                            <br />
                            <asp:Button ID="btnPostular" Text="POSTULAR" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnPostular_Click"/>
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                </div>
                <div class="col-lg-6">
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">CONVOCATORIA BECAS COVID-19<br />
                                    <small>12 de agosto del 2020</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Las “Becas Excepcionales por Declaratoria de Emergencia Sanitaria COVID19”, son becas temporales que se otorga a estudiantes que se encuentran en
                            situación de vulnerabilidad económica, debido a la gravedad de la crisis
                            generada por el coronavirus, en familias que tenían trabajos independientes y
                            dependientes vinculados a las áreas que se han visto más afectadas por el
                            aislamiento social, como comercio, empresa de servicios, venta ambulatoria;
                            padres de familia con trabajos temporales, reducción de ingresos por recorte de
                            sueldos o a quienes les han aplicado la suspensión perfecta de labores, con fines
                            de garantizar la continuidad académica de los estudiantes.
                            <br />
                            <br />
                            <img class="img-fluid rounded mx-auto d-block" src="assets/media/becas/post-becas-covid19.jpg" />
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
