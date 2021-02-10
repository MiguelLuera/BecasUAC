<%@ Page Title="MI SOLICITUD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RevisionSolicitud.aspx.cs" Inherits="Fron_End.RevisionSolicitud" %>
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
                        <a href="RevisionSolicitud.aspx" class="text-white text-hover-white opacity-75 hover-opacity-100"><%: Page.Title %></a>
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
            <div class="d-flex flex-row">
                <!--begin::Card-->
                <div class="flex-row-fluid ml-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-custom gutter-b">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <!--begin: Pic-->
                                        <div class="flex-shrink-0 mr-7 mt-lg-0 mt-3">
                                            <div class="symbol symbol-50 symbol-lg-120">
                                                <asp:Image ImageUrl="assets/media/users/blank.png" runat="server" ID="imgEstudiante1" />
                                            </div>
                                        </div>
                                        <!--end: Pic-->
                                        <!--begin: Info-->
                                        <div class="flex-grow-1">
                                            <!--begin: Title-->
                                            <div class="d-flex align-items-center justify-content-between flex-wrap">
                                                <div class="mr-3">
                                                    <!--begin::Name-->
                                                    <asp:Label ID="lblNombresEstudiante" Text="" runat="server" class="d-flex align-items-center text-dark text-hover-primary font-size-h5 font-weight-bold mr-3" />
                                                    <!--end::Name-->
                                                    <!--begin::Contacts-->
                                                    <div class="d-flex flex-wrap my-2">
                                                        <a href="#" class="text-muted text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                                            <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1">
                                                                <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-notification.svg-->
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                        <rect x="0" y="0" width="24" height="24" />
                                                                        <path d="M21,12.0829584 C20.6747915,12.0283988 20.3407122,12 20,12 C16.6862915,12 14,14.6862915 14,18 C14,18.3407122 14.0283988,18.6747915 14.0829584,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,8 C3,6.8954305 3.8954305,6 5,6 L19,6 C20.1045695,6 21,6.8954305 21,8 L21,12.0829584 Z M18.1444251,7.83964668 L12,11.1481833 L5.85557487,7.83964668 C5.4908718,7.6432681 5.03602525,7.77972206 4.83964668,8.14442513 C4.6432681,8.5091282 4.77972206,8.96397475 5.14442513,9.16035332 L11.6444251,12.6603533 C11.8664074,12.7798822 12.1335926,12.7798822 12.3555749,12.6603533 L18.8555749,9.16035332 C19.2202779,8.96397475 19.3567319,8.5091282 19.1603533,8.14442513 C18.9639747,7.77972206 18.5091282,7.6432681 18.1444251,7.83964668 Z" fill="#000000" />
                                                                        <circle fill="#000000" opacity="0.3" cx="19.5" cy="17.5" r="2.5" />
                                                                    </g>
                                                                </svg>
                                                                <!--end::Svg Icon-->
                                                            </span>
                                                            <asp:Label ID="lblEmail" Text="" runat="server" />
                                                        </a>
                                                        <a href="#" class="text-muted text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                                            <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1">
                                                                <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-notification.svg-->
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                        <rect x="0" y="0" width="24" height="24" />
                                                                        <path d="M11.914857,14.1427403 L14.1188827,11.9387145 C14.7276032,11.329994 14.8785122,10.4000511 14.4935235,9.63007378 L14.3686433,9.38031323 C13.9836546,8.61033591 14.1345636,7.680393 14.7432841,7.07167248 L17.4760882,4.33886839 C17.6713503,4.14360624 17.9879328,4.14360624 18.183195,4.33886839 C18.2211956,4.37686904 18.2528214,4.42074752 18.2768552,4.46881498 L19.3808309,6.67676638 C20.2253855,8.3658756 19.8943345,10.4059034 18.5589765,11.7412615 L12.560151,17.740087 C11.1066115,19.1936265 8.95659008,19.7011777 7.00646221,19.0511351 L4.5919826,18.2463085 C4.33001094,18.1589846 4.18843095,17.8758246 4.27575484,17.613853 C4.30030124,17.5402138 4.34165566,17.4733009 4.39654309,17.4184135 L7.04781491,14.7671417 C7.65653544,14.1584211 8.58647835,14.0075122 9.35645567,14.3925008 L9.60621621,14.5173811 C10.3761935,14.9023698 11.3061364,14.7514608 11.914857,14.1427403 Z" fill="#000000" />
                                                                    </g>
                                                                </svg>
                                                                <!--end::Svg Icon-->
                                                            </span>
                                                            <asp:Label ID="lblCelular" Text="" runat="server" />
                                                        </a>
                                                    </div>
                                                    <div class="d-flex flex-wrap my-2">
                                                        <a href="#" class="text-muted text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                                            <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1">
                                                                <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-notification.svg-->
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                                        <path d="M9.82829464,16.6565893 C7.02541569,15.7427556 5,13.1079084 5,10 C5,6.13400675 8.13400675,3 12,3 C15.8659932,3 19,6.13400675 19,10 C19,13.1079084 16.9745843,15.7427556 14.1717054,16.6565893 L12,21 L9.82829464,16.6565893 Z M12,12 C13.1045695,12 14,11.1045695 14,10 C14,8.8954305 13.1045695,8 12,8 C10.8954305,8 10,8.8954305 10,10 C10,11.1045695 10.8954305,12 12,12 Z" fill="#000000"></path>
                                                                    </g>
                                                                </svg>
                                                                <!--end::Svg Icon-->
                                                            </span>
                                                            <asp:Label ID="lblDireccion" Text="" runat="server" />
                                                        </a>
                                                        <a href="#" class="text-muted text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                                            <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1">
                                                                <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-notification.svg-->
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                        <polygon points="0 0 24 0 24 24 0 24" />
                                                                        <path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" fill="#000000" fill-rule="nonzero" />
                                                                        <path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" fill="#000000" opacity="0.3" />
                                                                    </g>
                                                                </svg>
                                                                <!--end::Svg Icon-->
                                                            </span>
                                                            <asp:Label ID="lblDNI" Text="" runat="server" />
                                                        </a>
                                                    </div>
                                                    <!--end::Contacts-->
                                                </div>
                                            </div>
                                            <!--end: Title-->
                                        </div>
                                        <!--end: Info-->
                                    </div>
                                    <!--begin: Items-->
                                    <div class="d-flex align-items-center flex-wrap">
                                        <!--begin: Item-->
                                        <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">
                                            <span class="mr-4">
                                                <i class="flaticon-file-2 icon-2x text-muted font-weight-bold"></i>
                                            </span>
                                            <div class="d-flex flex-column text-dark-75">
                                                <span class="font-weight-bolder font-size-sm">MODALIDAD</span>
                                                <span class="font-weight-bolder font-size-h5">
                                                    <asp:Label ID="lblModalidad" Text="" runat="server" />
                                                </span>
                                            </div>
                                        </div>
                                        <!--end: Item-->
                                        <!--begin: Item-->
                                        <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">
                                            <span class="mr-4">
                                                <i class="flaticon-presentation icon-2x text-muted font-weight-bold"></i>
                                            </span>
                                            <div class="d-flex flex-column text-dark-75">
                                                <span class="font-weight-bolder font-size-sm">Escuela Profesional</span>
                                                <span class="font-weight-bolder font-size-h5">
                                                    <asp:Label ID="lblEscuelaProfesional" Text="" runat="server" />
                                                </span>
                                            </div>
                                        </div>
                                        <!--end: Item-->
                                        <!--begin: Item-->
                                        <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">
                                            <span class="mr-4">
                                                <i class="flaticon-add-label-button icon-2x text-muted font-weight-bold"></i>
                                            </span>
                                            <div class="d-flex flex-column text-dark-75">
                                                <span class="font-weight-bolder font-size-sm">Estado</span>
                                                <span class="font-weight-bolder font-size-h5">
                                                    <asp:Label ID="lblEstado" Text="" runat="server" />
                                                </span>
                                            </div>
                                        </div>
                                        <!--end: Item-->
                                    </div>
                                    <!--begin: Items-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Card-->
            </div>
            <!--begin::Profile Personal Information-->
            <div class="d-flex flex-row">
                <!--begin::Content-->
                <div class="flex-row-fluid ml-lg-12">
                    <!--begin::Row-->
                        <div class="row">
                            <div class="col-lg-4">
                                <!--begin::Profile Card-->
                                <div class="card card-custom card-stretch">
                                    <!--begin::Body-->
                                    <div class="card-body pt-4">
                                        <!--begin::Nav-->
                                        <br />
                                        <div class="navi navi-bold navi-hover navi-active navi-link-rounded">
                                            <asp:PlaceHolder ID="navbarSolicitud" runat="server"></asp:PlaceHolder>
                                        </div>
                                        <!--end::Nav-->
                                    </div>
                                    <!--end::Body-->
                                </div>
                                <!--end::Profile Card-->
                            </div>
                            <div class="col-lg-8">
                                <!--begin::Card-->
                                <div class="card card-custom gutter-bs" id="divContenido" runat="server">
                                    <div class="card-header py-3">
                                        <div class="card-title align-items-start flex-column">
                                            <asp:Label ID="lblTituloDoc" Text="" runat="server" />
                                            <!--begin: Item-->
                                            <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">
                                                <span class="mr-4">
                                                    <i class="flaticon-add-label-button icon-2x text-muted font-weight-bold"></i>
                                                </span>
                                                <div class="d-flex flex-column text-dark-75">
                                                    <span class="font-weight-bolder font-size-sm">Estado</span>
                                                    <span class="font-weight-bolder font-size-h5">
                                                        <asp:Label ID="lblEstadoDocumento" Text="" runat="server" />
                                                    </span>
                                                </div>
                                            </div>
                                            <!--end: Item-->
                                        </div>
                                    </div>
                                    <!--begin::Body-->
                                    <div class="card-body">
                                        <div class="tab-content pt-5">
                                            <!--begin::Tab Content-->
                                            <div class="tab-pane active">
                                                <div class="row">
                                                    <iframe id="pdfDoc" runat="server" src="docs/solicitudes/S0002_R0001.pdf#view=Fith" type="application/pdf"
                                                        style="width: 100%; height: 600px"></iframe>
                                                </div>
                                                <br />
                                                <div class="form-group mb-1" id="divObservacion" runat="server">
                                                    <asp:Label ID="lblMotivo" Text="Observación: " runat="server" />
                                                    <asp:TextBox ID="txtObservacion" runat="server" class="form-control" TextMode="MultiLine" Rows="3" ReadOnly />
                                                </div>
                                                <div class="form-group row" id="btnAprobar" runat="server">
                                                    <a href="#" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#exampleModal">
                                                        <i class="flaticon2-check-mark"></i>Subsanar Documento
                                                    </a>
                                                </div>
                                                <!-- begin::Modal-->
                                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">SUBSANAR DOCUMENTO</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <i aria-hidden="true" class="ki ki-close"></i>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="form-group mb-1">
                                                                    <asp:Label ID="lblDocumentoNombre" Text="Documento: " runat="server" />
                                                                </div>
                                                                <div class="form-group mb-1">
                                                                    <asp:Label ID="Label1" Text="Observación: " runat="server" />
                                                                    <asp:TextBox ID="txtObservacion2" runat="server" class="form-control" TextMode="MultiLine" Rows="3" ReadOnly />
                                                                </div>
                                                                <div class="form-group mb-1">
                                                                    <asp:Label ID="Label2" Text="Subir Archivo" runat="server" />
                                                                    <div class="btn btn-outline-primary">
                                                                        <span>Subir Archivo</span>
                                                                        <asp:FileUpload ID="fuRequisito" runat="server" accept=".pdf" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                                <asp:Button ID="btnConfirmar" Text="Confirmar" runat="server" class="btn btn-primary" OnClick="btnConfirmar_Click" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end::Modal-->
                                            </div>
                                            <!--end::Tab Content-->
                                        </div>
                                    </div>
                                    <!--end::Body-->
                                </div>
                                <!--end::Card-->
                            </div>
                        </div>
                    <!--end::Row-->
                </div>
                <!--end::Content-->
            </div>
            <!--end::Profile Personal Information-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
    <br />
</asp:Content>
