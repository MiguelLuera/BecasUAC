using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class SiteMaster : MasterPage
    {
        private BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    string correo = Session["correo"].ToString();
                    ddlicono.Visible = false;
                    iniciarSesionddl.Visible = false;
                    //topbarSesion.Visible = false;
                    //topbarUsuario.Visible = true;
                    var consulta = (from U in BDBecasUAC.TUsuario
                                    where U.Correo == correo
                                    select new
                                    {
                                        U.IdUsuario,
                                        Usuario = U.Nombres,
                                        U.urlImagen
                                    }).FirstOrDefault();
                    string IdUsuario = consulta.IdUsuario;
                    if(BDBecasUAC.TEncargado_BU.Where(BU => BU.IdUsuario == IdUsuario).Any())
                    {
                        itemSolicitudE.Visible = false;
                        Session["cargo"] = "Encargado";
                    }else if (BDBecasUAC.TEstudiante.Where(E => E.IdUsuario == IdUsuario).Any())
                    {
                        itemSolicitudBU1.Visible = false;
                        itemSolicitudBU2.Visible = false;
                        //Si no hay solicitudes registradas
                        if (!BDBecasUAC.TSolicitudBeca.Where(S => S.IdUsuario == IdUsuario).Any())
                        {
                            itemSolicitudE.Visible = false;
                        }
                        else
                        {
                            var consultaSol = from S in BDBecasUAC.TSolicitudBeca where S.IdUsuario == IdUsuario
                                              select S;
                            asolicitud.Attributes.Add("href", "RevisionSolicitud.aspx?id=" + consultaSol.FirstOrDefault().IdSolicitud);
                        }
                        Session["cargo"] = "Estudiante";
                    }
                    lblUsuario.Text = consulta.Usuario;
                    lblInicial.Text = consulta.Usuario.Substring(0, 1);
                    string urlImagen = consulta.urlImagen;
                    if (urlImagen != null)
                    {
                        imgPerfil2.Attributes.Add("src", urlImagen);
                    }
                }
                else
                {
                    //sin sesion
                    lblHola.Visible = false;
                    lblUsuario.Visible = false;
                    fotoPerfilddl.Visible = false;
                    opcionesddl.Visible = false;
                }
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Inicio.aspx");
        }
    }
}