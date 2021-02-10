using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Fron_End
{
    public partial class RevisionSolicitud : System.Web.UI.Page
    {
        BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    string correo = Session["correo"].ToString();
                    var consulta = (from U in BDBecasUAC.TUsuario
                                    where U.Correo == correo
                                    select new
                                    {
                                        U.IdUsuario,
                                        Usuario = U.Nombres,
                                        U.urlImagen
                                    }).FirstOrDefault();
                    string IdUsuario = consulta.IdUsuario;
                    Session["IdUsuario"] = IdUsuario;
                    if (Session["cargo"] != null)
                    {
                        if (Session["cargo"].ToString() == "Encargado")
                        {
                            Response.Redirect("Inicio.aspx");
                        }
                        else
                        {
                            if (Request.QueryString["id"] != null)
                            {
                                cargarNavBar();
                                cargarCardSuperior();
                                cargarDocumento();
                            }
                            else {
                                Response.Redirect("Inicio.aspx");
                            }
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?url=RevisionSolicitud.aspx");
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
            
            string IdUsuario = Session["IdUsuario"].ToString();
            var consultaSol = (from U in BDBecasUAC.TSolicitudBeca
                               where U.IdUsuario == IdUsuario select U).FirstOrDefault();
            string IdSolicitud = consultaSol.IdSolicitud;
            var consulta1 = from A in BDBecasUAC.spListarDocumentosPorUsuario(IdUsuario) select A;
            string mod = string.Empty;
            foreach (var columna in consulta1)
            {
                string IdDocumentoRequisito = columna.idDocumentoRequisito;
                string link = "RevisionSolicitud?id=" + IdSolicitud + "&&documento=" + IdDocumentoRequisito;
                string arriba2 = "<a href=\"" + link + "\" class=\"navi-link py-4\">";
                string nombreModalidad = columna.nombre;
                string abajo = "<span class=\"navi-text font-size-lg\">" + nombreModalidad + "</span>";
                navbarSolicitud.Controls.Add(new Literal()
                {
                    Text = arriba + arriba2 + icono + abajo + abajo1
                });
            }
        }
        protected void cargarCardSuperior()
        {
            string IdUsuario = Session["IdUsuario"].ToString();
            string IdSolicitud = Request.QueryString["id"];
            var consulta = (from SB in BDBecasUAC.TSolicitudBeca
                            join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                            join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                            join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                            join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                            where SB.IdUsuario == IdUsuario
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
            string urlImagen = consulta.urlImagen;
            if (urlImagen != null)
            {
                imgEstudiante1.ImageUrl = urlImagen;
            }
            lblNombresEstudiante.Text = consulta.Nombres + " " + consulta.Apellidos;
            lblEmail.Text = consulta.Correo;
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
                btnAprobar.Visible = false;
                divObservacion.Visible = false;
                if (estado == "Pendiente")
                {
                    lblEstadoDocumento.CssClass = "label label-inline label-light-primary font-weight-bold";
                }
                else if (estado == "Revisado")
                {
                    lblEstadoDocumento.CssClass = "label label-inline label-light-info font-weight-bold";
                }
                else if (estado == "Observado")
                {
                    divObservacion.Visible = true;
                    btnAprobar.Visible = true;
                    lblEstadoDocumento.CssClass = "label label-inline label-light-warning font-weight-bold";
                }
                else if (estado == "Denegado")
                {
                    lblEstadoDocumento.CssClass = "label label-inline label-light-danger font-weight-bold";
                }
            }
            else
            {
                divContenido.Visible = false;
            }

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (fuRequisito.HasFile)
            {
                string IdUsuario = Session["IdUsuario"].ToString();
                string IdSolicitud = Request.QueryString["id"];
                string IdDocumentoRequisito = Request.QueryString["documento"];
                string ruta1 = "docs/solicitudes/" + IdUsuario + "/DocSubsanado/";
                string enlace = ruta1 + IdSolicitud + "_" + IdDocumentoRequisito + "s.pdf";
                if (!Directory.Exists(Server.MapPath(ruta1)))
                {
                    Directory.CreateDirectory(Server.MapPath(ruta1));
                }
                fuRequisito.SaveAs(Server.MapPath(enlace));
                var consulta = (from DE in BDBecasUAC.TDocumentoEntregado
                                where DE.IdSolicitud == IdSolicitud && DE.idRequisitos == IdDocumentoRequisito
                                select DE).FirstOrDefault();
                consulta.Estado = "Pendiente";
                consulta.enlace = enlace;
                BDBecasUAC.SubmitChanges();
                Response.Redirect("RevisionSolicitud?id=" + IdSolicitud + "&&documento=" + IdDocumentoRequisito);
                cargarCardSuperior();
                cargarNavBar();
                cargarDocumento();
                Response.Redirect("RevisionSolicitud?id=" + IdSolicitud + "&&documento=" + IdDocumentoRequisito);
            }
        }
        protected void cargarObservacion()
        {
            string IdUsuario = Session["IdUsuario"].ToString();
            string IdSolicitud = Request.QueryString["id"];
            string IdDocumentoRequisito = Request.QueryString["documento"];
            var consulta = (from O in BDBecasUAC.TObservacion
                            join DE in BDBecasUAC.TDocumentoEntregado on O.idDocumentoEntregado equals DE.idDocumentoEntregado
                            where DE.IdSolicitud == IdSolicitud && DE.idRequisitos == IdDocumentoRequisito
                            select new {
                                O.Descripcion
                            }).FirstOrDefault();
            txtObservacion.Text = consulta.Descripcion;
            txtObservacion2.Text = consulta.Descripcion;
            var consulta1 = (from A in BDBecasUAC.spListarDocumentosPorUsuario(IdUsuario) select A).FirstOrDefault();
            string nombreModalidad = consulta1.nombre;
            lblDocumentoNombre.Text = nombreModalidad;
        }
    }
}