<%@ Page Title="BECAS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Becas.aspx.cs" Inherits="Fron_End.Becas" %>
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
        <li class="menu-item menu-item-submenu menu-item-rel menu-item-here" data-menu-toggle="click" aria-haspopup="true">
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
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">EXCELENCIA ACADÉMICA<br />
                                    <small>BECAS PARCIALES</small></h3>
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
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">ESTÍMULO E INCENTIVO POR <br />ACTIVIDAD ACADÉMICA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Es lo que se otorgo a los
                            estudiantes que hayan obtenido loqros académicos por par1idpar en concursos de
                            conocimientos convocados por Universidades privadas, nocionales e internacionales y
                            que hayan obtenido premios a nombre de la Universidad Andina del Cusca,
                            (reconocimientos por trabajos orndémicos y de investigación) en el semestre
                            inmediato anterior; en estricto orden de méritos por escuela profesional, siempre que
                            acrediten haber aprobado todas lm asignaturas y no tener NSP en el semestre
                            inmediato anterior.
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">INSOLVENCIA ECONÓMICA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Es Jo que se otorga a los estudicmtes de escasos recursos
                            econórrocos y que acrediten que el apoyo económico solicitado es indispensable para
                            continuar sus estudios en la Univer;idod; siempre que 110 tengan asignaturas
                            desaprobados, ni NSP en el semestre académico inmediato anterior. El otorgamiento de esto modalidad de beco, deberá ser en formo continuo o alterno hasta un
                            máximo de cinco (05) semestres académicos, en toda su formación profesional. 
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">DEPORTISTA DESTACADO, <br />RECREACIÓN Y ALTA COMPETENCIA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Es lo que se otorgo a los
                                estudiantes que representen o lo Universidad/,• dina del Cusca, en cuulqch-ro de sus
                                disciplinas deportiva, y sean considerados co:no Deportistas Destocadcs por lo
                                Dirección de Promoción del Deporte, de acuerdo al informe sustenta1orio de los
                                técnicos deportivos de coda disciplino, y la Constancia de ser deportisla con el
                                visto bueno del Director de Promoción del Depone. Esto beco será otorgodo,
                                siempre que acrediten haber aprobado todas las asignaturas y no tener NSP, en el
                                semestre académico inmediato anterior o lo p.:tkión, considerando los resultados
                                deportivos logrados en el semestre inmedi010 anterior y serón otorgados por
                                disciplino deportiva según se contemplo en el presente Reglamento de becas. 
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">PROMOTOR DE ARTE Y CULTURA<br />
                                    <small>BECAS PARCIALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Es la que se otorgo o los estudiantes que hon
                            destacado en lo práctico de promover el arte y cutnno en representación de lo
                            Universidad Andino del Cusca, de conformidad al Informe formulado por los
                            profesores de las diferentes expresiones ortisticas y le- constancia de ser promofor
                            dt: arte y culturo con el visto bueno del Director de Responsabilidad Social y
                            Extensión Universitario, que ocredite esto participación, siempre que acrediten haber
                            aprobado todos los asignaturas y no tener NSP en el semestre académica inmediato
                            anterior, poro que todos los estudiantes sean merecedores de este apoyo 
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
                                <h3 class="card-label">DEPORTISTA DE ALTA COMPETENCIA<br />
                                    <small>BECAS TOTALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                             Están considerados los estudiantes deportistas
                            de Toekwondc-, Korote y Atletismo que -erón beneficiados con la P.ECA TOTAL en
                            codo disciplino deportiva, se les ctorccn ó 02 becas para las domas y 02 becas
                            para los varones por escuelo profesional en forma semestral
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed card-collapsed card-collapsed" data-card="true" id="kt_card_1">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">ORFANDAD<br />
                                    <small>BECAS TOTALES</small></h3>
                            </div>
                            <div class="card-toolbar">
                                <a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
                                    <i class="ki ki-arrow-down icon-nm"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            Es la que se otorga a los estudiantes que hayan sufrido la pérdida
                            de sus pndres o tutores o persona encargada de solventar su educación, siempre que
                            el beneficiario acredite estar matriculado o cursando estudios en la fecha en que
                            ocurre el fallecimiento del padre o tutor o persona encargado de solventar la
                            educación, así como demuestre carecer de recursos económicos, para continuar sus
                            estudios en la Universidad, previa evaluación y estudio socio económico por el
                            Trabajador Social, mediante la visita domiciliaria inopinada, siendo este estudio
                            socio económico determinante, para el otorgamiento de esta beca, bajo la
                            supervisión del Director de Bienestar Universitario. 
                        </div>
                    </div>
                    <br />
                    <!--end::Card-->
                </div>
                <div class=" col-lg-12">
                    <!--begin::Card-->
                    <div class="card card-custom card-collapsed">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">BECAS EXCEPCIONAL</h3>
                            </div>
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
                                <h3 class="card-label">BECA COVID-19<br />
                                    <small>BECAS TOTALES</small></h3>
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
