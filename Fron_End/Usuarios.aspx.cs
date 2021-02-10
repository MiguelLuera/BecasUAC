using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class Usuarios : System.Web.UI.Page
    {
        BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        private void Listar()
        {
            var consulta = from U in BDBecasUAC.TUsuario
                           where U.IdUsuario.StartsWith("E")
                           select new
                           {
                               U.IdUsuario,
                               U.Nombres,
                               U.Apellidos,
                               U.Direccion,
                               U.Celular,
                               U.Correo,
                               U.NumDocIdentidad
                           };
            gvUsuario.DataSource = consulta;
            gvUsuario.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    if(Session["cargo"] != null)
                    {
                        if (Session["cargo"].ToString() == "Encargado")
                        {
                            Listar();
                        }
                        else
                        {
                            Response.Redirect("Inicio.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?url=Usuarios");
                }
            }

        }

        

        protected void gvUsuario_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsuario.EditIndex = e.NewEditIndex;
            Listar();
        }

        protected void gvUsuario_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string IdUsuario = gvUsuario.DataKeys[e.RowIndex].Value.ToString();
            var resultado = (from U in BDBecasUAC.TUsuario
                            where U.IdUsuario == IdUsuario
                            select U).FirstOrDefault();
            resultado.estado = "INACTIVO";
            BDBecasUAC.SubmitChanges();
            gvUsuario.EditIndex = -1;
            Listar();
        }

        protected void gvUsuario_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string IdUsuario = (gvUsuario.Rows[e.RowIndex].FindControl("txtIdUsuario") as Label).Text.Trim();
            string Nombres = (gvUsuario.Rows[e.RowIndex].FindControl("txtNombres") as TextBox).Text.Trim();
            string Apellidos = (gvUsuario.Rows[e.RowIndex].FindControl("txtApellidos") as TextBox).Text.Trim();
            string Direccion = (gvUsuario.Rows[e.RowIndex].FindControl("txtDireccion") as TextBox).Text.Trim();
            string Celular = (gvUsuario.Rows[e.RowIndex].FindControl("txtCelular") as TextBox).Text.Trim();
            string Correo = (gvUsuario.Rows[e.RowIndex].FindControl("txtCorreo") as TextBox).Text.Trim();
            string DNI = (gvUsuario.Rows[e.RowIndex].FindControl("txtDNI") as TextBox).Text.Trim();
            var consulta = (from U in BDBecasUAC.TUsuario where U.IdUsuario == IdUsuario select U).FirstOrDefault();
            consulta.Nombres = Nombres;
            consulta.Apellidos = Apellidos;
            consulta.Direccion = Direccion;
            consulta.Celular = Celular;
            consulta.Correo = Correo;
            consulta.NumDocIdentidad= DNI;
            BDBecasUAC.SubmitChanges();
            gvUsuario.EditIndex = -1;
            Listar();
        }

        protected void gvUsuario_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsuario.EditIndex = -1;
            Listar();
        }

    }
}