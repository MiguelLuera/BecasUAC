using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.IO;

namespace Fron_End
{
    public partial class CambiarInformación : System.Web.UI.Page
    {
        private BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            fuImagen.Attributes["onchange"] = "CargarImagen(this)";
            if (!Page.IsPostBack)
            {
                alertaError.Visible = false;
                alertaDatosIncompletos.Visible = false;
                if (Session["correo"] != null)
                {
                    string correo = Session["correo"].ToString();
                    var consulta = (from U in BDBecasUAC.TUsuario
                                    where U.Correo == correo
                                    select U).FirstOrDefault();
                    string IdUsuario = consulta.IdUsuario;
                    //Labels
                    lblUsuario.Text = consulta.Nombres + " " + consulta.Apellidos;
                    lblEmail.Text = consulta.Correo;
                    lblTelefono.Text = consulta.Celular;
                    lblDireccion.Text = consulta.Direccion;
                    //TextBox
                    txtNombres.Text = consulta.Nombres;
                    txtApellidos.Text = consulta.Apellidos;
                    txtDNI.Text = consulta.NumDocIdentidad;
                    txtDireccion.Text = consulta.Direccion;
                    txtTelefono.Text = consulta.Celular;
                    txtEmail.Text = consulta.Correo;
                    string urlImagen = consulta.urlImagen;
                    if(urlImagen != null) {
                        imagenPerfil1.Attributes.Add("style", "background-image: url(" + urlImagen + ")");
                        imagenPerfil2.Attributes.Add("style", "background-image: url(" + urlImagen + ")");
                    }
                        
                }
                else
                {
                    Response.Redirect("Login.aspx?url=CambiarInformacion");
                }
            }
        }

        protected void btnCancelar_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx");
        }

        protected void btnEliminar_ServerClick(object sender, EventArgs e)
        {
            string IdUsuario = getIdUsuario();
            var resultado = (from U in BDBecasUAC.TUsuario
                             where U.IdUsuario == IdUsuario
                             select U).FirstOrDefault();
            resultado.urlImagen = null;
            BDBecasUAC.SubmitChanges();
            Response.Redirect("Perfil.aspx");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string IdUsuario = getIdUsuario();
            //string url = "assets/media/imagenesPerfil/" + Path.GetFileName(fuImagen.FileName);
            string url = "assets/media/imagenesPerfil/" + IdUsuario + Path.GetExtension(fuImagen.FileName);
            fuImagen.SaveAs(Server.MapPath(url));
            kt_profile_avatar.Attributes.Add("style", "background-image: url("+ url+")");
            imagenPerfil2.Attributes.Add("style", "background-image: url(" + url + ")");
            Session["url"] = url;
        }

        protected void btnGurdarCambios_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtNombres.Text) && !String.IsNullOrEmpty(txtApellidos.Text) && !String.IsNullOrEmpty(txtDNI.Text) &&
                !String.IsNullOrEmpty(txtDireccion.Text) && !String.IsNullOrEmpty(txtTelefono.Text) && !String.IsNullOrEmpty(txtEmail.Text))
            {
                alertaDatosIncompletos.Visible = false;
                string Nombres = txtNombres.Text.Trim();
                string Apellidos = txtApellidos.Text.Trim();
                string DNI = txtDNI.Text.Trim();
                string Direccion = txtDireccion.Text.Trim();
                string Telefono = txtTelefono.Text.Trim();
                string Email = txtEmail.Text.Trim();
                string IdUsuario = getIdUsuario();
                string url = null;
                if (Session["url"] != null)
                {
                    url = Session["url"].ToString();
                }
                else
                {
                    var consulta = from U in BDBecasUAC.TUsuario
                                   where U.IdUsuario == IdUsuario
                                   select U;
                    url = consulta.FirstOrDefault().urlImagen;
                }
                
                var resultado = from U in BDBecasUAC.spModificarUsuario(IdUsuario, Nombres, Apellidos, DNI, Direccion, Telefono, Email, url)
                                select U;
                byte codError = 0;
                string mensaje = string.Empty;
                foreach (var X in resultado)
                {
                    codError = Convert.ToByte(X.CodError);
                    mensaje = X.Mensaje;
                }
                if (codError == 0)
                {
                    alertaError.Visible = false;
                    Response.Redirect("Perfil.aspx");
                }
                else
                {
                    lblError.Text = mensaje;
                    alertaError.Visible = true;
                }
            }else
            {
                alertaDatosIncompletos.Visible = true;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelarCambios_Click(object sender, EventArgs e)
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

    }
}