using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class CambiarContrasena : System.Web.UI.Page
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
                                    select U).FirstOrDefault();
                    string IdUsuario = consulta.IdUsuario;
                    //Labels
                    lblUsuario.Text = consulta.Nombres + " " + consulta.Apellidos;
                    lblEmail.Text = consulta.Correo;
                    lblTelefono.Text = consulta.Celular;
                    lblDireccion.Text = consulta.Direccion;
                    alertaContrasenas.Visible = false;
                    alertaLogin.Visible = false;
                    //TextBox
                    /*
                    txtNombres.Text = consulta.Nombres;
                    txtApellidos.Text = consulta.Apellidos;
                    txtDNI.Text = consulta.NumDocIdentidad;
                    txtDireccion.Text = consulta.Direccion;
                    txtTelefono.Text = consulta.Celular;
                    txtEmail.Text = consulta.Correo;*/
                    string urlImagen = consulta.urlImagen;
                    if (urlImagen != null)
                    {
                        imagenPerfil1.Attributes.Add("style", "background-image: url(" + urlImagen + ")");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?url=Perfil");
                }
            }
        }

        protected void btnGurdarCambios_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtContrasenaActual.Text) && !String.IsNullOrEmpty(txtContrasenaNueva.Text) && !String.IsNullOrEmpty(txtContrasenaNueva2.Text))
            {
                string correo = Session["correo"].ToString();
                string contrasenaActual = txtContrasenaActual.Text.Trim();
                string contrasenaNueva1 = txtContrasenaNueva.Text.Trim();
                string contrasenaNueva2 = txtContrasenaNueva2.Text.Trim();
                var resultado = from U in BDBecasUAC.spLoginUsuario(correo, contrasenaActual)
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
                    alertaContrasenas.Visible = false;
                    if (contrasenaNueva1.Equals(contrasenaNueva2))
                    {
                        alertaContrasenas.Visible = false;
                        var consulta = from U in BDBecasUAC.TUsuario
                                       where U.Correo == correo
                                       select U;
                        consulta.FirstOrDefault().Contrasena = contrasenaNueva1;
                        BDBecasUAC.SubmitChanges();
                        Response.Redirect("Perfil.aspx");
                    }
                    else
                    {
                        alertaContrasenas.Visible = true;
                    }
                }
                else
                {
                    alertaLogin.Visible = true;
                }
            }
        }

        protected void btnCancelarCambios_Click(object sender, EventArgs e)
        {
            
        }
    }
}