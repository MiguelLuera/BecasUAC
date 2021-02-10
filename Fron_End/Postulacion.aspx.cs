using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Fron_End
{
    public partial class Postulacion : System.Web.UI.Page
    {
        private BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        private void Listar()
        {
            string modalidad = Request.QueryString["modalidad"];
            var consulta1 = from DR in BDBecasUAC.TDocumentoRequisito
                            join RB in BDBecasUAC.TRequisitosBeca on DR.idDocumentoRequisito equals RB.idDocumentoRequisito
                            where RB.IdModalidadBeca == modalidad orderby DR.idDocumentoRequisito
                            select new
                            {
                                DR.idDocumentoRequisito,
                                DR.nombre,
                                RB.opcional,
                                DR.enlaceFormato
                            };
            gvRequisito.DataSource = consulta1;
            gvRequisito.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                alertaError.Visible = false;
                alertaAdvertencia.Visible = false;
                Listar();
                if (Session["correo"] != null)
                {
                    if (Request.QueryString["modalidad"] == null)
                    {
                        Response.Redirect("PostulacionBecas.aspx");
                    }
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
                    var consulta2 = (from S in BDBecasUAC.TSolicitudBeca
                                     where S.IdUsuario == IdUsuario select S);
                    if (consulta2.Any())
                    {
                        Response.Redirect("PostulacionBecas.aspx?mensaje=1");
                    }
                    string modalidad = Request.QueryString["modalidad"];
                    var consulta1 = from M in BDBecasUAC.TModalidadBeca
                                   where M.IdModalidadBeca == modalidad
                                   select M;
                    lblTituloBeca.Text = consulta1.FirstOrDefault().Nombre_Modalidad;
                    if (Session["cargo"] != null)
                    {
                        if(Session["cargo"].ToString() == "Encargado")
                        {
                            Response.Redirect("Inicio.aspx");
                        }
                    }
                }
                else
                {   
                    if(Request.QueryString["modalidad"]!=null)
                    {
                        string modalidad = Request.QueryString["modalidad"];
                        Response.Redirect("Login.aspx?url=Postulacion.aspx?modalidad" + modalidad);
                    }
                    else
                    {
                        Response.Redirect("Login.aspx?url=PostulacionBecas.aspx");
                    }
                    
                }
            }
        }

        protected void btnPostular_Click(object sender, EventArgs e)
        {
            //Comprobamos que estén todos los archivos obligatorios
            bool error1 = false;
            foreach (GridViewRow gr in gvRequisito.Rows)
            {
                if (gr.Cells[2].Text.Equals("Obligatorio"))
                {
                    FileUpload fileUpLoad = gr.FindControl("fuRequisito") as FileUpload;
                    //string extension = System.IO.Path.GetExtension(fileUpLoad.FileName);
                    if (!fileUpLoad.HasFile)
                    {
                        error1 = true;
                        lblError.Text = "No ha subido todos los archivos obligatorios";
                        alertaError.Visible = true;
                    }
                }
            }
            if (!error1)
            {
                //Creamos solicitud
                string IdUsuario = getIdUsuario();
                string modalidad = Request.QueryString["modalidad"];

                var resultado = from U in BDBecasUAC.spAgregarSolicitud(IdUsuario, modalidad)
                                select U;
                byte codError = 0;
                string mensaje = string.Empty;
                bool error = false;
                foreach (var X in resultado)
                {
                    codError = Convert.ToByte(X.CodError);
                    mensaje = X.Mensaje;
                }
                if (codError == 0)
                {
                    //Añadimos a la base de datos
                    string idSolicitud = mensaje;
                    foreach (GridViewRow gr in gvRequisito.Rows)
                    {
                        FileUpload fileUpLoad = gr.FindControl("fuRequisito") as FileUpload;
                        string idRequisito = gr.Cells[0].Text;
                        string ruta1 = "docs/solicitudes/" + IdUsuario + "/";
                        if (!Directory.Exists(Server.MapPath(ruta1)))
                        {
                            Directory.CreateDirectory(Server.MapPath(ruta1));
                        }                        
                        string enlace =  ruta1 + idSolicitud + "_" + idRequisito + ".pdf";
                        fileUpLoad.SaveAs(Server.MapPath(enlace));
                        var resultado1 = from U in BDBecasUAC.spAgregarDocumentoEntregado(enlace, idSolicitud, idRequisito)
                                         select U;
                        byte codError1 = 0;
                        string mensaje1 = string.Empty;
                        foreach (var X in resultado1)
                        {
                            codError1 = Convert.ToByte(X.CodError);
                            mensaje1 = X.Mensaje;
                        }
                        if (codError1 != 0)
                        {
                            error = true;
                        }
                    }
                    if (error)
                    {
                        Response.Redirect("PostulacionBecas.aspx?mensaje=2");
                        //Falta: Implementar mensaje de error en PostulacionBecas
                    }
                    else
                    {
                        Response.Redirect("PostulacionBecas?mensaje=0");
                    }

                }
                else
                {
                    lblError.Text = "Hubo un error al crear la solicitud, inténtelo más tarde";
                    alertaError.Visible = true;
                }
            }
        }

        protected void gvRequisito_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
        protected string getIdUsuario()
        {
            string correo = Session["correo"].ToString();
            var consulta = (from U in BDBecasUAC.TUsuario
                            where U.Correo == correo
                            select U).FirstOrDefault();
            string IdUsuario = consulta.IdUsuario;
            return IdUsuario;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PostulacionBecas.aspx");
        }
    }
}