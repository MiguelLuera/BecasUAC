using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Web.Configuration;
using System.Net.Configuration;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

namespace Fron_End
{
    public partial class Solicitud : System.Web.UI.Page
    {
        private BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarDocumento();
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    if (Request.QueryString["id"] != null)
                    {
                        string IdSolicitud = Request.QueryString["id"];
                        cargarCardSuperior();
                        cargarNavBar();
                    }
                    else
                    {
                        Response.Redirect("RevisionBecas.aspx");
                    }                    
                }
                else
                {
                    if (Request.QueryString["id"] != null)
                    {
                        Response.Redirect("Login.aspx?url=Solicitud.aspx?id="+ Request.QueryString["id"]);
                    }
                    else
                    {
                        Response.Redirect("Login.aspx?url=RevisionBecas.aspx");
                    }
                }
            }
        }
        protected void cargarNavBar()
        {
            string arriba = "<div class=\"navi-item mb-2\">";
            string icono = "<span class=\"nav-icon mr-2\">" +
                "<span class=\"svg-icon mr-3\" >" +
                "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"24px\" height=\"24px\" viewBox=\"0 0 24 24\" version=\"1.1\">" +
                "<g stroke=\"none\" stroke-width=\"1\" fill =\"none\" fill -rule=\"evenodd\" >" +
                "<rect x=\"0\" y=\"0\" width=\"24\" height=\"24\" />" +
                "<path d=\"M4.875,20.75 C4.63541667,20.75 4.39583333,20.6541667 4.20416667,20.4625 L2.2875,18.5458333 C1.90416667,18.1625 1.90416667,17.5875 2.2875,17.2041667 C2.67083333,16.8208333 3.29375,16.8208333 3.62916667,17.2041667 L4.875,18.45 L8.0375,15.2875 C8.42083333,14.9041667 8.99583333,14.9041667 9.37916667,15.2875 C9.7625,15.6708333 9.7625,16.2458333 9.37916667,16.6291667 L5.54583333,20.4625 C5.35416667,20.6541667 5.11458333,20.75 4.875,20.75 Z\" fill=\"#000000\" fill-rule=\"nonzero\" opacity=\"0.3\" />" +
                "<path d=\"M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z\" fill=\"#000000\" />" +
                "</g>" +
                "</svg>" +
                "</span>" +
                "</span>";
            
            string abajo1 = "</a>" +
                "</div>";
            string IdSolicitud = Request.QueryString["id"];
            var consulta1 = from A in BDBecasUAC.spListarDocumentosPorSolicitud(IdSolicitud) select A;
            string mod = string.Empty;
            foreach (var columna in consulta1)
            {
                string IdDocumentoRequisito = columna.idDocumentoRequisito;
                string link = "Solicitud?id=" + IdSolicitud + "&&documento=" + IdDocumentoRequisito;
                string arriba2 = "<a href=\""+link+"\" class=\"navi-link py-4\">";
                string nombreModalidad = columna.nombre;
                string abajo = "<span class=\"navi-text font-size-lg\">"+nombreModalidad+"</span>";
                navbarSolicitud.Controls.Add(new Literal()
                {
                    Text = arriba + arriba2 + icono + abajo + abajo1
                });
            }
        }
        protected void cargarCardSuperior()
        {
            alertaLogin.Visible = false;
            string IdSolicitud = Request.QueryString["id"];
            var consulta = (from SB in BDBecasUAC.TSolicitudBeca
                            join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                            join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                            join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                            join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                            where SB.IdSolicitud == IdSolicitud
                            select new
                            {
                                U.IdUsuario,
                                U.Correo,
                                U.Nombres,
                                U.Apellidos,
                                U.Celular,
                                U.Direccion,
                                U.NumDocIdentidad,
                                U.urlImagen,
                                M.Nombre_Modalidad,
                                EscuelaProfesional = Es.Nombre,
                                SB.Estado
                            }).FirstOrDefault();
            string IdUsuario = consulta.IdUsuario;
            string urlImagen = consulta.urlImagen;
            if (urlImagen != null)
            {
                imgEstudiante1.ImageUrl = urlImagen;
            }
            lblNombresEstudiante.Text = consulta.Nombres + " " + consulta.Apellidos;
            lblEmail.Text = consulta.Correo;
            Session["CorreoEstudiante"] = consulta.Correo;
            lblDireccion.Text = consulta.Direccion;
            lblCelular.Text = consulta.Celular;
            lblDNI.Text = consulta.NumDocIdentidad;
            lblModalidad.Text = consulta.Nombre_Modalidad;
            lblEscuelaProfesional.Text = consulta.EscuelaProfesional;
            lblEstado.Text = consulta.Estado;
            if (lblEstado.Text == "Analizando")
            {
                lblEstado.CssClass = "label label-inline label-light-primary font-weight-bold";
            }
            else if (lblEstado.Text == "Aprobado")
            {
                lblEstado.CssClass = "label label-inline label-light-success font-weight-bold";
                btnDenegarSolicitud.Visible = false;
            }
            else if (lblEstado.Text == "Denegado")
            {
                lblEstado.CssClass = "label label-inline label-light-danger font-weight-bold";
            }
            else if (lblEstado.Text == "Observado")
            {
                lblEstado.CssClass = "label label-inline label-light-warning font-weight-bold";
            }
            else if (lblEstado.Text == "Revisado")
            {
                lblEstado.CssClass = "label label-inline label-light-info font-weight-bold";
            }

        }
        protected void cargarDocumento()
        {
            if (Request.QueryString["documento"] != null)
            {
                divContenido.Visible = true;
                string IdSolicitud = Request.QueryString["id"];
                string IdDocumentoRequisito = Request.QueryString["documento"];
                var consulta = from M in BDBecasUAC.TDocumentoRequisito
                               where M.idDocumentoRequisito == IdDocumentoRequisito
                               select M;
                lblTituloDoc.Text = consulta.FirstOrDefault().nombre;
                //imagenPerfil1.Attributes.Add("style", "background-image: url(" + urlImagen + ")");
                var consulta1 = (from DE in BDBecasUAC.TDocumentoEntregado
                                where DE.idRequisitos == IdDocumentoRequisito && DE.IdSolicitud == IdSolicitud
                                select DE).FirstOrDefault();
                string url = consulta1.enlace;
                string estado = consulta1.Estado;
                lblEstadoDocumento.Text = estado;
                pdfDoc.Attributes.Add("src", url);
                if(estado == "Pendiente")
                {
                    btnAprobar.Visible = true;
                    lblEstadoDocumento.CssClass = "label label-inline label-light-primary font-weight-bold";
                }
                else if(estado == "Revisado")
                {
                    btnAprobar.Visible = false;
                    lblEstadoDocumento.CssClass = "label label-inline label-light-info font-weight-bold";
                }
                else if(estado == "Observado")
                {
                    lblEstadoDocumento.CssClass = "label label-inline label-light-warning font-weight-bold";
                }else if(estado == "Denegado")
                {
                    lblEstadoDocumento.CssClass = "label label-inline label-light-danger font-weight-bold";
                }
            }
            else
            {
                divContenido.Visible = false;
            }
                
        }

        protected void btnAgregarObservacion_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["documento"] != null)
            {
                string IdDocumentoRequisito = Request.QueryString["documento"];
                string IdSolicitud = Request.QueryString["id"];
                var consulta1 = (from DE in BDBecasUAC.TDocumentoEntregado join
                                 DR in BDBecasUAC.TDocumentoRequisito on DE.idRequisitos equals DR.idDocumentoRequisito
                                where DE.idRequisitos == IdDocumentoRequisito && DE.IdSolicitud == IdSolicitud
                                select new { 
                                    DE.idDocumentoEntregado,
                                    DR.nombre
                                }).FirstOrDefault();
                string Observacion = txtObservacion.Text;
                var consulta = from U in BDBecasUAC.spAgregarObservacion(consulta1.idDocumentoEntregado, Observacion)
                               select U;
                cargarCardSuperior();
                cargarNavBar();
                cargarDocumento();
                //Comprobación de generacion de observación
                //MANDAR CORREO DE SUBSANACIÓN DE DOCUMENTO
                string correoDestino = Session["CorreoEstudiante"].ToString();
                string mensaje = "El documento "+consulta1.nombre+ " ha sido observado, ingrese a --LINK DE REVISION DE SOLICITUD-- para subsanar el documento.";
                mandarCorreo("OBSERVACIÓN SOBRE DOCUMENTO | BECAS UAC", correoDestino, mensaje);
                Response.Redirect("Solicitud?id=" + IdSolicitud + "&&documento=" + IdDocumentoRequisito);
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["documento"] != null)
            {
                string IdDocumentoRequisito = Request.QueryString["documento"];
                string IdSolicitud = Request.QueryString["id"];
                var consulta1 = (from DE in BDBecasUAC.TDocumentoEntregado
                                 where DE.idRequisitos == IdDocumentoRequisito && DE.IdSolicitud == IdSolicitud
                                 select DE).FirstOrDefault();
                consulta1.Estado = "Revisado";
                BDBecasUAC.SubmitChanges();
                cargarCardSuperior();
                cargarNavBar();
                cargarDocumento();
                //Comprobación de generacion de observación
                //MANDAR CORREO DE APROBACIÓN DE DOCUMENTO
                var consulta2 = (from DE in BDBecasUAC.TDocumentoEntregado
                                 join DR in BDBecasUAC.TDocumentoRequisito on DE.idRequisitos equals DR.idDocumentoRequisito
                                 where DE.idRequisitos == IdDocumentoRequisito && DE.IdSolicitud == IdSolicitud
                                 select new
                                 {
                                     DE.idDocumentoEntregado,
                                     DR.nombre
                                 }).FirstOrDefault();
                string correoDestino = Session["CorreoEstudiante"].ToString();
                string mensaje = "El documento " + consulta2.nombre + " ha sido aprobado, ingrese a --LINK DE REVISION DE SOLICITUD-- para comprobar el cambio.";

                mandarCorreo("APROBACIÓN DE DOCUMENTO | BECAS UAC", correoDestino, mensaje);
                
                Response.Redirect("Solicitud?id=" + IdSolicitud + "&&documento=" + IdDocumentoRequisito);
            }
        }
        private void mandarCorreo(string asunto, string correoDestino, string mensaje)
        {
            try
            {
                MailMessage correo = new MailMessage();
                Configuration c = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
                MailSettingsSectionGroup settings = (MailSettingsSectionGroup)c.GetSectionGroup("system.net/mailSettings");
                correo.From = new System.Net.Mail.MailAddress(settings.Smtp.From, settings.Smtp.Network.UserName, System.Text.Encoding.UTF8); //Correo de salida
                correo.To.Add(correoDestino); //Correo destino
                correo.Subject = asunto; //Asunto  EL TEXTO ESTA POR DEFECTO
                correo.Body = mensaje; //Mensaje del correo
                correo.IsBodyHtml = true;
                correo.Priority = MailPriority.Normal;
                SmtpClient smtp = new SmtpClient();
                smtp.UseDefaultCredentials = settings.Smtp.Network.DefaultCredentials;
                smtp.Host = settings.Smtp.Network.Host; //Host del servidor de correo
                smtp.Port = settings.Smtp.Network.Port; //Puerto de salida
                smtp.Credentials = new System.Net.NetworkCredential(settings.Smtp.From, settings.Smtp.Network.Password); //Cuenta de correo
                ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
                smtp.EnableSsl = settings.Smtp.Network.EnableSsl;//True si el servidor de correo permite ssl
                smtp.Send(correo);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnDenegar_Click(object sender, EventArgs e)
        {
            string IdSolicitud = Request.QueryString["id"];
            var consulta = BDBecasUAC.TDocumentoEntregado.Where(DE=>DE.IdSolicitud.Contains(IdSolicitud)).ToList();
            consulta.ForEach(E => E.Estado = "Denegado");
            BDBecasUAC.SubmitChanges();
            var consulta1 = BDBecasUAC.TSolicitudBeca.Where(S => S.IdSolicitud.Contains(IdSolicitud)).FirstOrDefault();
            consulta1.Estado = "Denegado";
            BDBecasUAC.SubmitChanges();
            cargarCardSuperior();
            cargarNavBar();
            cargarDocumento();
            btnAprobarSolicitud.Visible = false;
            btnDenegarSolicitud.Visible = false;
            Response.Redirect("Solicitud?id=" + IdSolicitud);
            //MandarCorreo solicitud rechazada
            string correoDestino = Session["CorreoEstudiante"].ToString();
            string mensaje = "Su solicitud de beca ha sido rechazada, comuníquese con jsantos@uandina.edu.pe en el caso de que tenga alguna inconformidad";
            mandarCorreo("SU SOLICITUD FUE RECHAZADA | BECAS UAC", correoDestino, mensaje);
        }

        protected void btnAprobarSol_Click(object sender, EventArgs e)
        {
            string IdSolicitud = Request.QueryString["id"];
            var consulta = from DE in BDBecasUAC.TDocumentoEntregado
                           where DE.IdSolicitud == IdSolicitud && DE.Estado == "Revisado"
                           select DE;
            int nroDocRevisados = consulta.Count();
            var consulta1 = from S in BDBecasUAC.TSolicitudBeca
                            join M in BDBecasUAC.TModalidadBeca on S.IdModalidadBeca equals M.IdModalidadBeca
                            join RB in BDBecasUAC.TRequisitosBeca on M.IdModalidadBeca equals RB.IdModalidadBeca
                            where S.IdSolicitud == IdSolicitud 
                            select new { 
                                RB
                            };
            
            int nroDocRequetidos = consulta1.Count();
            if (nroDocRevisados.Equals(nroDocRequetidos))
            {
                var consulta2 = (from S in BDBecasUAC.TSolicitudBeca
                                where S.IdSolicitud == IdSolicitud
                                select S).FirstOrDefault();
                consulta2.Estado = "Aprobado";
                string correoDestino = Session["CorreoEstudiante"].ToString();
                string mensaje = "Su solicitud de beca ha sido aprobada, comuníquese con jsantos@uandina.edu.pe para realizar el proceso de aceptación de beca.";
                mandarCorreo("SU SOLICITUD FUE APROBADA | BECAS UAC", correoDestino, mensaje);
                BDBecasUAC.SubmitChanges();
                divObservar.Visible = false;
                btnAprobar.Visible = false;
                alertaLogin.Visible = false;
                btnDenegarSolicitud.Visible = false;
                btnAprobarSolicitud.Visible = false;
                Response.Redirect("Solicitud?id=" + IdSolicitud);
            }
            else
            {
                alertaLogin.Visible = true;
                cargarNavBar();
                cargarDocumento();
            }
        }
    }
}