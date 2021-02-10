using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class PostulacionBecas : System.Web.UI.Page
    {
        private BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
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
                    alertaCorrecto.Visible = false;
                    alertaError.Visible = false;
                    alertaSolicitudVigente.Visible = false;
                    if (Session["cargo"] != null)
                    {
                        if (Session["cargo"].ToString() == "Encargado")
                        {
                            Response.Redirect("Inicio.aspx");
                        }
                        else
                        {
                            if (Request.QueryString["mensaje"] != null)
                            {
                                string codMensaje = Request.QueryString["mensaje"];
                                if (codMensaje == "0")
                                {
                                    alertaCorrecto.Visible = true;
                                }else if(codMensaje == "1")
                                {
                                    alertaSolicitudVigente.Visible = true;
                                }
                                else
                                {
                                    alertaError.Visible = true;
                                }
                            }
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?url=PostulacionBecas");
                }
            }
        }
    }
}