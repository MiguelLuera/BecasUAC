using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class RevisionBecas : System.Web.UI.Page
    {
        BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        private void Listar()
        {
            var consulta = from SB in BDBecasUAC.TSolicitudBeca 
                           join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                           join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                           join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                           join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                           select new
                           {
                               SB.IdSolicitud,
                               Nombres = U.Nombres,
                               Apellidos = U.Apellidos,
                               EscuelaProfesional = (Es.Nombre),
                               Modalidad = (M.Nombre_Modalidad),
                               FechaRegistro = (SB.FecRegistro.Day+"/"+ SB.FecRegistro.Month+"/"+SB.FecRegistro.Year),
                               SB.Estado
                           };
            gvBecas.DataSource = consulta;
            gvBecas.DataBind();
        }
        private void Listar2(string IdEscuela, string IdModalidad, string Estado)
        {
            if (IdEscuela.Equals("SNVAL"))
            {
                if (Estado.Equals("SNVAL"))
                {
                    var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                   join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                   join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                   join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                   join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                   where SB.IdModalidadBeca == IdModalidad
                                   select new
                                   {
                                       SB.IdSolicitud,
                                       Nombres = U.Nombres,
                                       Apellidos = U.Apellidos,
                                       EscuelaProfesional = (Es.Nombre),
                                       Modalidad = (M.Nombre_Modalidad),
                                       FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                       SB.Estado
                                   };
                    gvBecas.DataSource = consulta;
                    gvBecas.DataBind();
                }
                else
                {
                    if (IdModalidad.Equals("SNVAL"))
                    {
                        var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                       join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                       join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                       join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                       join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                       where SB.Estado == Estado
                                       select new
                                       {
                                           SB.IdSolicitud,
                                           Nombres = U.Nombres,
                                           Apellidos = U.Apellidos,
                                           EscuelaProfesional = (Es.Nombre),
                                           Modalidad = (M.Nombre_Modalidad),
                                           FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                           SB.Estado
                                       };
                        gvBecas.DataSource = consulta;
                        gvBecas.DataBind();
                    }
                    else
                    {
                        var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                       join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                       join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                       join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                       join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                       where SB.IdModalidadBeca == IdModalidad && SB.Estado == Estado
                                       select new
                                       {
                                           SB.IdSolicitud,
                                           Nombres = U.Nombres,
                                           Apellidos = U.Apellidos,
                                           EscuelaProfesional = (Es.Nombre),
                                           Modalidad = (M.Nombre_Modalidad),
                                           FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                           SB.Estado
                                       };
                        gvBecas.DataSource = consulta;
                        gvBecas.DataBind();
                    }
                }
            }else if (IdModalidad.Equals("SNVAL"))
            {
                if (Estado.Equals("SNVAL"))
                {
                    var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                   join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                   join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                   join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                   join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                   where E.IdEscuela == IdEscuela 
                                   select new
                                   {
                                       SB.IdSolicitud,
                                       Nombres = U.Nombres,
                                       Apellidos = U.Apellidos,
                                       EscuelaProfesional = (Es.Nombre),
                                       Modalidad = (M.Nombre_Modalidad),
                                       FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                       SB.Estado
                                   };
                    gvBecas.DataSource = consulta;
                    gvBecas.DataBind();
                }
                else
                {
                    var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                   join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                   join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                   join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                   join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                   where E.IdEscuela == IdEscuela && SB.Estado == Estado
                                   select new
                                   {
                                       SB.IdSolicitud,
                                       Nombres = U.Nombres,
                                       Apellidos = U.Apellidos,
                                       EscuelaProfesional = (Es.Nombre),
                                       Modalidad = (M.Nombre_Modalidad),
                                       FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                       SB.Estado
                                   };
                    gvBecas.DataSource = consulta;
                    gvBecas.DataBind();
                }
            }else if (Estado.Equals("SNVAL"))
            {
                if (IdEscuela.Equals("SNVAL"))
                {
                    var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                   join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                   join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                   join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                   join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                   where SB.IdModalidadBeca == IdModalidad
                                   select new
                                   {
                                       SB.IdSolicitud,
                                       Nombres = U.Nombres,
                                       Apellidos = U.Apellidos,
                                       EscuelaProfesional = (Es.Nombre),
                                       Modalidad = (M.Nombre_Modalidad),
                                       FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                       SB.Estado
                                   };
                    gvBecas.DataSource = consulta;
                    gvBecas.DataBind();
                }
                else
                {
                    var consulta = from SB in BDBecasUAC.TSolicitudBeca
                                   join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                                   join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                                   join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                                   join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                                   where E.IdEscuela == IdEscuela && SB.IdModalidadBeca == IdModalidad
                                   select new
                                   {
                                       SB.IdSolicitud,
                                       Nombres = U.Nombres,
                                       Apellidos = U.Apellidos,
                                       EscuelaProfesional = (Es.Nombre),
                                       Modalidad = (M.Nombre_Modalidad),
                                       FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                       SB.Estado
                                   };
                    gvBecas.DataSource = consulta;
                    gvBecas.DataBind();
                }
            }
            else
            {
                var consulta = from SB in BDBecasUAC.TSolicitudBeca
                               join U in BDBecasUAC.TUsuario on SB.IdUsuario equals U.IdUsuario
                               join E in BDBecasUAC.TEstudiante on U.IdUsuario equals E.IdUsuario
                               join Es in BDBecasUAC.TEscuela on E.IdEscuela equals Es.IdEscuela
                               join M in BDBecasUAC.TModalidadBeca on SB.IdModalidadBeca equals M.IdModalidadBeca
                               where E.IdEscuela == IdEscuela && SB.IdModalidadBeca == IdModalidad && SB.Estado == Estado
                               select new
                               {
                                   SB.IdSolicitud,
                                   Nombres = U.Nombres,
                                   Apellidos = U.Apellidos,
                                   EscuelaProfesional = (Es.Nombre),
                                   Modalidad = (M.Nombre_Modalidad),
                                   FechaRegistro = (SB.FecRegistro.Day + "/" + SB.FecRegistro.Month + "/" + SB.FecRegistro.Year),
                                   SB.Estado
                               };
                gvBecas.DataSource = consulta;
                gvBecas.DataBind();
            }
        }
        private void cargarEscuelas()
        {
            var consulta = from Es in BDBecasUAC.TEscuela
                           select new
                           {
                               Nombre = Es.Nombre,
                               IdEscuela = Es.IdEscuela
                           };
            ddlEscuelaProfesional.DataSource = consulta;
            ddlEscuelaProfesional.DataBind();
        }
        private void cargarModalidades()
        {
            var consulta = from M in BDBecasUAC.TModalidadBeca
                           select new
                           {
                               Nombre = M.Nombre_Modalidad,
                               IdModalidad = M.IdModalidadBeca
                           };
            ddlModalidad.DataSource = consulta;
            ddlModalidad.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    if (Session["cargo"] != null)
                    {
                        if (Session["cargo"].ToString() == "Encargado")
                        {
                            Listar();
                            cargarEscuelas();
                            cargarModalidades();
                        }
                        else
                        {
                            Response.Redirect("Inicio.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?url=RevisionBecas.aspx");
                }
            }

        }

        protected void gvBecas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //string IdUsuario = (.FindControl("txtIdUsuario") as TextBox).Text.Trim();
            string IdSolicitud = gvBecas.Rows[e.NewEditIndex].Cells[0].Text;
            Response.Redirect("Solicitud.aspx?id=" + IdSolicitud);
        }

        protected void gvBecas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                for(int i=0; i<e.Row.Cells.Count; i++)
                {
                    if (e.Row.FindControl("lblEstado")!=null)
                    {
                        Label lbl1 = (Label)e.Row.FindControl("lblEstado");
                        if (lbl1.Text == "Analizando")
                        {
                            lbl1.CssClass = "label label-inline label-light-primary font-weight-bold";
                        }
                        else if (lbl1.Text == "Aprobado")
                        {
                            lbl1.CssClass = "label label-inline label-light-success font-weight-bold";
                        }
                        else if (lbl1.Text == "Denegado")
                        {
                            lbl1.CssClass = "label label-inline label-light-danger font-weight-bold";
                        }
                        else if (lbl1.Text == "Observado")
                        {
                            lbl1.CssClass = "label label-inline label-light-warning font-weight-bold";
                        }
                        else if (lbl1.Text == "Revisado")
                        {
                            lbl1.CssClass = "label label-inline label-light-info font-weight-bold";
                        }
                    }
                }
            }
            //Cambiar el fondo de labels
            //Guía postulacion.aspx
        }

        protected void ddlEscuelaProfesional_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlEscuelaProfesional.SelectedValue== "SNVAL" && ddlModalidad.SelectedValue == "SNVAL" && ddlEstados.SelectedValue == "SNVAL")
            {
                Listar();
            }
            else
            {
                Listar2(ddlEscuelaProfesional.SelectedValue, ddlModalidad.SelectedValue, ddlEstados.SelectedValue);
            }
        }

        protected void ddlModalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlEscuelaProfesional.SelectedValue == "SNVAL" && ddlModalidad.SelectedValue == "SNVAL" && ddlEstados.SelectedValue == "SNVAL")
            {
                Listar();
            }
            else
            {
                Listar2(ddlEscuelaProfesional.SelectedValue, ddlModalidad.SelectedValue, ddlEstados.SelectedValue);
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ddlEscuelaProfesional.SelectedIndex = 0;
            ddlModalidad.SelectedIndex = 0;
            ddlEstados.SelectedIndex = 0;
            Listar();
        }

        protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlEscuelaProfesional.SelectedValue == "SNVAL" && ddlModalidad.SelectedValue == "SNVAL" && ddlEstados.SelectedValue == "SNVAL")
            {
                Listar();
            }
            else
            {
                Listar2(ddlEscuelaProfesional.SelectedValue, ddlModalidad.SelectedValue, ddlEstados.SelectedValue);
            }
        }
    }
}