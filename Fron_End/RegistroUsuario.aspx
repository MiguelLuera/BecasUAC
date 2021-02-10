<%@ Page Title="USUARIOS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Fron_End.Usuario" %>
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
                            <a href="Usuarios.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100">Usuarios</a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <span class="label label-dot label-sm bg-white opacity-75 mx-3"></span>
                            <a href="RegistroUsuario.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100">Registrar Usuario</a>
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
                <div class="card card-custom card-transparent">
                    <div class="card-body p-0">
                        <!--begin::Wizard-->
                        <div class="wizard wizard-4" id="kt_wizard" data-wizard-state="step-first" data-wizard-clickable="true">
                            <!--begin::Wizard Nav-->
                            <div class="wizard-nav">
                                
                            </div>
                            <!--end::Wizard Nav-->
                            <!--begin::Card-->
                            <div class="card card-custom card-shadowless rounded-top-0">
                                <!--begin::Body-->
                                <div class="card-body p-0">
                                    <div class="row justify-content-center py-8 px-8 py-lg-15 px-lg-10">
                                        <div class="col-xl-12 col-xxl-10">
                                            <!--begin::Wizard Form-->
                                            <div class="row justify-content-center">
                                                <div class="col-xl-9">
                                                    <!--begin::Wizard Step 1-->
                                                    <div class="my-5 step">
                                                        <h5 class="text-dark font-weight-bold mb-10">Datos personales:</h5>
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Nombres</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <asp:TextBox id="txtNombres" runat="server" class="form-control form-control-solid form-control-lg" name="nombres" type="text"/>
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Apellidos</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <asp:TextBox id="txtApellidos" runat="server" class="form-control form-control-solid form-control-lg" name="apellidos" type="text"/>
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">DNI</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <asp:TextBox id="txtDNI" runat="server" class="form-control form-control-solid form-control-lg" name="dni" type="number"/>
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Dirección</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <asp:TextBox id="txtDireccion" runat="server" class="form-control form-control-solid form-control-lg" name="direccion" type="text"/>
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <div class="separator separator-dashed my-10"></div>
                                                        <h5 class="text-dark font-weight-bold mb-10 mt-5">Contacto:</h5>
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Teléfono</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <div class="input-group input-group-solid input-group-lg">
                                                                    <div class="input-group-prepend">
                                                                        <span class="input-group-text">
                                                                            <i class="la la-phone"></i>
                                                                        </span>
                                                                    </div>
                                                                    <asp:TextBox ID="txtTelefono" runat="server" class="form-control form-control-solid form-control-lg" name="telefono" placeholder="Teléfono"/>
                                                                </div>
                                                                <span class="form-text text-muted">Ingrese un número de teléfono válido(ejm: 912345678).</span>
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Correo electrónico</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <div class="input-group input-group-solid input-group-lg">
                                                                    <div class="input-group-prepend">
                                                                        <span class="input-group-text">
                                                                            <i class="la la-at"></i>
                                                                        </span>
                                                                    </div>
                                                                    <asp:TextBox id="txtEmail" runat="server" class="form-control form-control-solid form-control-lg" name="email"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <div class="separator separator-dashed my-10"></div>
                                                        <h5 class="text-dark font-weight-bold mb-10">Ingresar contraseña:</h5>
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Contraseña</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <asp:TextBox ID="txtContrasena" runat="server" class="form-control form-control-solid form-control-lg" name="contrasena" type="password" />
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                        <!--begin::Group-->
                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Confirmar Contraseña</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <asp:TextBox ID="txtContrasena2" runat="server" class="form-control form-control-solid form-control-lg" name="ccontrasena" type="password" />
                                                            </div>
                                                        </div>
                                                        <!--end::Group-->
                                                    </div>
                                                    <!--end::Wizard Step 1-->
                                                    <!--begin::error-->
                                                    <div class="alert alert-custom alert-light-warning fade show mb-5" role="alert" id="alertaDatosIncompletos" runat="server">
                                                        <div class="alert-icon">
                                                            <i class="flaticon-warning"></i>
                                                        </div>
                                                        <div class="alert-text">Debe rellenar todos los campos</div>
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
                                                    <div class="alert alert-custom alert-light-warning fade show mb-5" role="alert" id="alertaContrasenas" runat="server">
                                                        <div class="alert-icon">
                                                            <i class="flaticon-warning"></i>
                                                        </div>
                                                        <div class="alert-text">Las contraseñas no coinciden</div>
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
                                                        <div class="alert-text">No se puedo ingresar el usuario, vuelva a intentar más tarde!</div>
                                                        <div class="alert-close">
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span aria-hidden="true">
                                                                    <i class="ki ki-close"></i>
                                                                </span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <!--end::error-->
                                                    <!--begin::Wizard Actions-->
                                                    <div class="d-flex justify-content-between border-top pt-10 mt-15">
                                                        <div>
                                                            <asp:Button ID="btnEnviar" Text="Enviar" runat="server" class="btn btn-primary font-weight-bolder px-9 py-4" OnClick="btnEnviar_Click"/>
                                                        </div>
                                                    </div>
                                                    <!--end::Wizard Actions-->
                                                </div>
                                            </div>
                                            <!--end::Wizard Form-->
                                        </div>
                                    </div>
                                </div>
                                <!--end::Body-->
                            </div>
                            <!--end::Card-->
                        </div>
                        <!--end::Wizard-->
                    </div>
                </div>
                <!--end::Card-->
            </div>
            <!--end::Container-->
        </div>
        <!--end::Entry-->
    </div>
</asp:Content>
