<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fron_End.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
		<title>LOGIN | BECAS UAC</title>
		<meta name="description" content="Login page example" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Custom Styles(used by this page)-->
		<link href="assets/css/pages/login/login-2.css" rel="stylesheet" type="text/css" />
		<!--end::Page Custom Styles-->
		<!--begin::Global Theme Styles(used by all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Styles-->
		<!--begin::Layout Themes(used by all pages)-->
		<!--end::Layout Themes-->
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
</head>
<body id="kt_body" style="background-image: url(assets/media/bg/bg-10.jpg)" class="quick-panel-right demo-panel-right offcanvas-right header-fixed subheader-enabled page-loading">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Login-->
			<div class="login login-2 login-signin-on d-flex flex-column flex-lg-row flex-row-fluid bg-white" id="kt_login">
				<!--begin::Aside-->
				<div class="login-aside position-relative overflow-hidden order-2 order-lg-1 d-flex flex-column-fluid flex-lg-row-auto py-9 px-7 py-lg-13 px-lg-35">
					<!--begin: Aside Container-->
					<div class="d-flex flex-row-fluid flex-column justify-content-between">
						<!--begin::Logo-->
						<a href="Inicio.aspx" class="text-center pt-2">
							<img src="assets/media/logos/logo-letter-1.png" class="max-h-150px" alt="" />
						</a>
						<!--end::Logo-->
						<!--begin::Aside body-->
						<div class="d-flex flex-column-fluid flex-column flex-center">
                            <form runat="server">
							<!--begin::Signin-->
							<div class="login-form login-signin py-11">
								<!--begin::Form-->
								<div class="form" novalidate="novalidate" id="kt_login_signin_form" runat="server">
									<!--begin::Title-->
									<div class="text-center pb-8">
										<h2 class="font-weight-bolder text-dark display5">Inicia Sesión</h2>
										<span class="text-muted font-weight-bold font-size-h4">O
										<a href="" class="text-primary font-weight-bolder" id="kt_login_signup">Crea una cuenta</a></span>
									</div>
									<!--end::Title-->
									<!--begin::error-->
                                    <div class="alert alert-custom alert-light-danger fade show mb-5" role="alert" id="alertaLogin" runat="server">
                                        <div class="alert-icon">
                                            <i class="flaticon-warning"></i>
                                        </div>
                                        <div class="alert-text">Usuario y/o contraseña incorrectas!</div>
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
									<!--begin::Form group-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark">Email</label>
										<asp:TextBox runat="server" ID="txtEmail" type="email" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg"></asp:TextBox>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<div class="d-flex justify-content-between mt-n5">
											<label class="font-size-h6 font-weight-bolder text-dark pt-5">Contraseña</label>
											<a href="javascript:;" class="text-primary font-size-h6 font-weight-bolder text-hover-primary pt-5" id="kt_login_forgot">¿Olvidaste tu contraseña?</a>
										</div>
										<asp:TextBox runat="server" ID="txtContrasena" type="password" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg"></asp:TextBox>
									</div>
									<!--end::Form group-->
									<!--begin::Action-->
									<div class="text-center mt-2">
                                        <asp:Button runat="server" id="btnLogin" class="btn btn-dark font-weight-bolder font-size-h6 px-8 py-4 my-3" Text="Inicia sesión" OnClick="btnLogin_Click"></asp:Button>
									</div>
									<!--end::Action-->
								</div>
								<!--end::Form-->
							</div>
							<!--end::Signin-->
							<!--begin::Signup-->
							<div class="login-form login-signup pt-11">
								<!--begin::Form-->
								<div class="form" novalidate="novalidate" id="kt_login_signup_form" runat="server">
									<!--begin::Title-->
									<div class="text-center pb-8">
										<h3 class="font-weight-bolder text-dark display5">Regístrate</h3>
										<p class="text-muted font-weight-bold font-size-h4">Ingrese sus datos para crear su cuenta</p>
									</div>
									<!--end::Title-->
									<!--begin::error-->
                                    <div class="alert alert-custom alert-light-danger fade show mb-5" role="alert" id="alertaErrorRegistro" runat="server">
                                        <div class="alert-icon">
                                            <i class="flaticon-warning"></i>
                                        </div>
                                        <div class="alert-text">Se produjo un error al intentar esta acción, vuelva a intentar más tarde.</div>
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
                                    <div class="alert alert-custom alert-light-warning fade show mb-5" role="alert" id="alertaDatosIncompletosRegistro" runat="server">
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
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox id="txtNombre" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="text" placeholder="Nombres" name="nombres" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox id="txtApellidos" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="text" placeholder="Apellidos" name="apellidos" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <div class="input-group input-group-solid">
                                            <asp:TextBox id="txtEmailRegistro" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="text" placeholder="Email" name="email" autocomplete="off"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">@uandina.edu.pe</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox id="txtCelular" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="text" placeholder="Celular" name="celular" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox id="txtDireccion" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="text" placeholder="Dirección" name="direccion" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox id="txtDNI" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="text" placeholder="DNI" name="dni" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<asp:DropDownList runat="server" ID="ddlEscuelaProfesional" DataTextField="Nombre" DataValueField="IdEscuela" CssClass="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6"
                                            AppendDataBoundItems="true" class="form-control">
											<asp:ListItem Text="--Seleccione su Escuela Profesional--" Value="SNVAL" />
                                        </asp:DropDownList>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox ID="txtContrasenaRegistro" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="password" placeholder="Contraseña" name="contrasena" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
                                        <asp:TextBox id="txtContrasenaConfirmar" runat="server" class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="password" placeholder="Confirmar Contraseña" name="ccontrasena" autocomplete="off"/>
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group d-flex flex-wrap flex-center pb-lg-0 pb-3">
                                        <asp:Button Text="Aceptar" runat="server" id="btnAceptarRegistro" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mx-4" OnClick="kt_login_signup_submit_Click"/>
										<button type="button" id="kt_login_signup_cancel" class="btn btn-light-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mx-4">Cancelar</button>
									</div>
									<!--end::Form group-->
								</div>
								<!--end::Form-->
							</div>
							<!--end::Signup-->
							<!--begin::Forgot-->
							<div class="login-form login-forgot pt-11">
								<!--begin::Form-->
								<div class="form" novalidate="novalidate" id="kt_login_forgot_form">
									<!--begin::Title-->
									<div class="text-center pb-8">
										<h3 class="font-weight-bolder text-dark display5">¿Olvidó su contraseña?</h3>
										<p class="text-muted font-weight-bold font-size-h4">Ingrese su correo para reiniciar la contraseña</p>
									</div>
									<!--end::Title-->
									<!--begin::Form group-->
									<div class="form-group">
										<input class="form-control form-control-solid h-auto py-7 px-6 rounded-lg font-size-h6" type="email" placeholder="Email" name="email" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group d-flex flex-wrap flex-center pb-lg-0 pb-3">
										<button type="button" id="kt_login_forgot_submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mx-4">Aceptar</button>
										<button type="button" id="kt_login_forgot_cancel" class="btn btn-light-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mx-4">Cancelar</button>
									</div>
									<!--end::Form group-->
								</div>
								<!--end::Form-->
							</div>
							<!--end::Forgot-->
                            </form>
						</div>
						<!--end::Aside body-->
						<!--begin: Aside footer for desktop-->
						<!--<div class="text-center">
							<button type="button" class="btn btn-light-primary font-weight-bolder px-8 py-4 my-3 font-size-h6">
							<span class="svg-icon svg-icon-md">
								<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M19.9895 10.1871C19.9895 9.36767 19.9214 8.76973 19.7742 8.14966H10.1992V11.848H15.8195C15.7062 12.7671 15.0943 14.1512 13.7346 15.0813L13.7155 15.2051L16.7429 17.4969L16.9527 17.5174C18.879 15.7789 19.9895 13.221 19.9895 10.1871Z" fill="#4285F4" />
									<path d="M10.1993 19.9313C12.9527 19.9313 15.2643 19.0454 16.9527 17.5174L13.7346 15.0813C12.8734 15.6682 11.7176 16.0779 10.1993 16.0779C7.50243 16.0779 5.21352 14.3395 4.39759 11.9366L4.27799 11.9466L1.13003 14.3273L1.08887 14.4391C2.76588 17.6945 6.21061 19.9313 10.1993 19.9313Z" fill="#34A853" />
									<path d="M4.39748 11.9366C4.18219 11.3166 4.05759 10.6521 4.05759 9.96565C4.05759 9.27909 4.18219 8.61473 4.38615 7.99466L4.38045 7.8626L1.19304 5.44366L1.08875 5.49214C0.397576 6.84305 0.000976562 8.36008 0.000976562 9.96565C0.000976562 11.5712 0.397576 13.0882 1.08875 14.4391L4.39748 11.9366Z" fill="#FBBC05" />
									<path d="M10.1993 3.85336C12.1142 3.85336 13.406 4.66168 14.1425 5.33717L17.0207 2.59107C15.253 0.985496 12.9527 0 10.1993 0C6.2106 0 2.76588 2.23672 1.08887 5.49214L4.38626 7.99466C5.21352 5.59183 7.50242 3.85336 10.1993 3.85336Z" fill="#EB4335" />
								</svg>
							</span>Sign in with Google</button>
						</div>-->
						<!--end: Aside footer for desktop-->
					</div>
					<!--end: Aside Container-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="content order-1 order-lg-2 flex-column-row-auto flex-grow-1 pt-md-0 pb-40 bgi-no-repeat bgi-position-y-bottom bgi-position-x-center" style="background-color: #B1DCED; background-image: url(assets/media/svg/illustrations/login-visual-2.svg);">
					
				</div>
				<!--end::Content-->
			</div>
			<!--end::Login-->
		</div>
		<!--end::Main-->
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#6993FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="assets/js/pages/custom/login/login.js"></script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>