<%@ Page Title="INICIO" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Fron_End.Inicio" %>
<asp:Content ID="navbar" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="menu-nav">
        <li class="menu-item menu-item-submenu menu-item-rel menu-item-here" data-menu-toggle="click" aria-haspopup="true">
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
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            <div class="card card-custom p-6">
                <div class="card-body">
                    <!--begin::Heading-->
                    <h2 class="text-dark mb-8">BECAS UNIVERSIDAD ANDINA DEL CUSCO</h2>
                    <!--end::Heading-->
                    <!--begin::Content-->
                    <div class="text-dark-100 line-height-lg mb-8">
                        <p>En todas las modalidades de beca el estudiante deberá aprobar de forma invicta, todas las asignaturas del semestre inmediato anterior. La Universidad ofrece becas en las siguientes modalidades:</p>
                    </div>
                    <h4 class="font-weight-bold text-dark mb-4">Becas Ordinarias</h4>
                    <div class="text-dark-50 line-height-lg mb-8">
                        <p>Las becas Ordinarias son becas que tienen por objeto establecer el procedimiento administrativo para que la Universidad Andina del Cusco otorgue becas a sus estudiantes en los términos y condiciones que el mismo establece, en apoyo al desarrollo de las funciones sustantivas universitarias y en congruencia con los valores andinos de fomento a la superación, disciplina, solidaridad y compromiso con lo comunidad; así como estimular el rendimiento académico, identificación y el interés por la investigación, a fin de formar profesionales integrales que respondan a exigencias del mercado laboral y contribuir a aliviar la situación socio económica de los estudiantes para que continúen sus estudios superiores.</p>
                    </div>
                    <!--end::Content-->
                    <!--begin::Content-->
                    <h4 class="font-weight-bold text-dark mb-4">BECAS COVID</h4>
                    <div class="text-dark-50 line-height-lg">
                        <p>Las “Becas Excepcionales por Declaratoria de Emergencia Sanitaria COVID-19”, son becas temporales que se otorga a estudiantes que se encuentran en situación de vulnerabilidad económica, debido a la gravedad de la crisis generada por el coronavirus, en familias que tenían trabajos independientes y dependientes vinculados a las áreas que se han visto más afectadas por el aislamiento social, como comercio, empresa de servicios, venta ambulatoria; padres de familia con trabajos temporales, reducción de ingresos por recorte de sueldos o a quienes les han aplicado la suspensión perfecta de labores, con fines de garantizar la continuidad académica de los estudiantes.</p>
                    </div>
                    <!--end::Content-->
                </div>
            </div>
        </div>
        <!--end::Section-->
        <!--end::Entry-->
    </div>
</asp:Content>
