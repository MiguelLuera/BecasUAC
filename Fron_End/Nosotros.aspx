<%@ Page Title="NOSOTROS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nosotros.aspx.cs" Inherits="Fron_End.Nosotros" %>
<asp:Content ID="navbar" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="menu-nav">
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
            <a href="Inicio.aspx" class="menu-link">
                <span class="menu-text">INICIO</span>
            </a>
        </li>
        <li class="menu-item menu-item-submenu menu-item-rel menu-item-here" data-menu-toggle="click" aria-haspopup="true">
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
    <div class="content pt-0 d-flex flex-column flex-column-fluid">
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
                    <h2 class="text-dark mb-8">DIRECCIÓN DE BIENESTAR UNIVERSITARIO</h2>
                    <!--end::Heading-->
                    <!--begin::Content-->
                    <div class="text-dark-100 line-height-lg mb-8">
                        <p>La Dirección de Bienestar Universitario es la encargada de planificar, organizar, dirigir y controlar las acciones orientadas a lograr el bienestar de la Comunidad Universitaria.</p>
                    </div>
                    <div class="text-dark-100 line-height-lg mb-8">
                        <p>La Dirección de Bienestar Universitario cuenta con las unidades de:</p>
                    </div>
                    <h4 class="font-weight-bold text-dark mb-4">I. UNIDAD DE SERVICIOS DE ATENCIÓN INTEGRAL A LA PERSONA</h4>
                    <div class="text-dark-100 line-height-lg mb-8">
                        <p>Centro de Salud</p>
                        <p>Nutrición, Seguridad Alimentaria y Comedor Universitario</p>
                    </div>
                    <h4 class="font-weight-bold text-dark mb-4">II. UNIDAD DE SERVICIO SOCIAL</h4>
                    <br />
                    <div class="text-dark-50 line-height-lg mb-8">
                        <p>Su organización y funcionamiento se encuentran normados en el Reglamento de Organización y Funciones, Reglamento General de la Universidad, Manual de Organización y Funciones y Reglamento especifico.</p>
                    </div>
                    <div class="text-dark-50 line-height-lg mb-8">
                        <p>La Universidad concede becas integrales por orfandad y parciales de acuerdo a sus políticas de gestión a sus estudiantes, conforme al reglamento aprobado por el Consejo Universitario</p>
                    </div>
                    <div class="text-dark-50 line-height-lg mb-8">
                        <p>La Universidad Andina del Cusco, presta ayuda económica a docentes, personal administrativo contratado y estudiantes para afrontar situaciones apremiantes.</p>
                    </div>
                    <h4 class="font-weight-bold text-dark mb-4">INFORMES</h4>
                    <div class="text-dark-50 line-height-lg">
                        <p>Dirección de Bienestar Universitario</p>
                        <p>Dirección: Urb. Ingeniería Larapa Grande A-7, San Jerónimo, Cusco</p>
                        <p>Primer piso de la Facultad de Ciencias Económicas, Administrativas y Contables</p>
                    </div>
                    <div class="text-dark-50 line-height-lg">
                        <p>Teléfono: (084) 605000 – Anexo: 1516</p>
                    </div>
                    <!--end::Content-->
                </div>
            </div>
        </div>
    <!--end::Section-->
    <!--end::Entry-->
    </div>
    <br />
</asp:Content>
