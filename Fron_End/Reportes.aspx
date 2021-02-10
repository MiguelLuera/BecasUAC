<%@ Page Title="REPORTES" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Fron_End.Reportes" %>
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {
            'callback': function () {
                var dataEscuela = google.visualization.arrayToDataTable(<%=obtenerDatosEP()%>);

                var dataModalidad = google.visualization.arrayToDataTable(<%=obtenerDatosModalidad()%>);

                var dataEstado = google.visualization.arrayToDataTable(<%=obtenerDatosEstado()%>);

                var options = {
                    title: 'NÚMERO DE SOLICITUDES'
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                chart.draw(dataEscuela, options);

                document.getElementById('btnEscuela').addEventListener('click', function () {
                    chart.draw(dataEscuela, options);
                }, false);

                document.getElementById('btnModalidad').addEventListener('click', function () {
                    chart.draw(dataModalidad, options);
                }, false);

                document.getElementById('btnEstado').addEventListener('click', function () {
                    chart.draw(dataEstado, options);
                }, false);
            },
            'packages': ['corechart']
        });
    </script>
    <script type="text/javascript">
        google.charts.load('current', {
            'callback': function () {
                var dataEscuela = google.visualization.arrayToDataTable(<%=obtenerDatosEPAprobados()%>);

                var dataModalidad = google.visualization.arrayToDataTable(<%=obtenerDatosModalidadAprobados()%>);


                var options = {
                    title: 'NÚMERO DE SOLICITUDES APROBADAS'
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d2'));
                chart.draw(dataEscuela, options);

                document.getElementById('btnEscuela2').addEventListener('click', function () {
                    chart.draw(dataEscuela, options);
                }, false);

                document.getElementById('btnModalidad2').addEventListener('click', function () {
                    chart.draw(dataModalidad, options);
                }, false);
            },
            'packages': ['corechart']
        });
    </script>
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
                        <a href="RevisionBecas.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100">REVISIÓN DE BECAS</a>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <span class="label label-dot label-sm bg-white opacity-75 mx-3"></span>
                        <a href="Reportes.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100">REPORTES</a>
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
                </div>
                <div class="card-body">
                    <div class="row mb-6">
                        <div class="col-lg-4 mb-lg-0 mb-6">
                            <label>Escuela Profesional:</label>
                            <input type="button" id="btnEscuela" class="btn btn-primary btn-lg btn-block" value="SOLICITUDES POR ESCUELA PROFESIONAL"/>
                        </div>
                        <div class="col-lg-4 mb-lg-0 mb-6">
                            <label>Modalidad:</label>
                            <input type="button" id="btnModalidad" class="btn btn-primary btn-lg btn-block" value="SOLICITUDES POR MODALIDAD"/>
                        </div>
                        <div class="col-lg-4 mb-lg-0 mb-6">
                            <label>Estado:</label>
                            <input type="button" id="btnEstado" class="btn btn-primary btn-lg btn-block" value="SOLICITUDES POR ESTADO"/>
                        </div>
                    </div>
                    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
                </div>
            </div>
            <!--end::Card-->
            <br />  
            <!--begin::Card-->
            <div class="card card-custom gutter-b">
                <div class="card-header flex-wrap border-0 pt-6 pb-0">
                    <div class="card-title">
                        <h3 class="card-label">Solicitudes Aprobadas</h3>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row mb-6">
                        <div class="col-lg-6 mb-lg-0 mb-6">
                            <label>Escuela Profesional:</label>
                            <input type="button" id="btnEscuela2" class="btn btn-primary btn-lg btn-block" value="SOLICITUDES APROBADAS POR ESCUELA PROFESIONAL"/>
                        </div>
                        <div class="col-lg-6 mb-lg-0 mb-6">
                            <label>Modalidad:</label>
                            <input type="button" id="btnModalidad2" class="btn btn-primary btn-lg btn-block" value="SOLICITUDES APROBADAS POR MODALIDAD"/>
                        </div>
                    </div>
                    <div id="piechart_3d2" style="width: 900px; height: 500px;"></div>
                </div>
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
</asp:Content>
