using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class Usuario : System.Web.UI.Page
    {
        BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    if (Session["cargo"].ToString() == "Encargado")
                    {
                        alertaDatosIncompletos.Visible = false;
                        alertaContrasenas.Visible = false;
                        alertaError.Visible = false;
                    }
                    else
                    {
                        Response.Redirect("Inicio.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (Session["correo"] != null)
            {
                if (!String.IsNullOrEmpty(txtNombres.Text) && !String.IsNullOrEmpty(txtApellidos.Text) && !String.IsNullOrEmpty(txtTelefono.Text) &&
                !String.IsNullOrEmpty(txtEmail.Text) && !String.IsNullOrEmpty(txtDireccion.Text) && !String.IsNullOrEmpty(txtDNI.Text)
                && !String.IsNullOrEmpty(txtContrasena.Text) && !String.IsNullOrEmpty(txtContrasena2.Text))
                {
                    alertaDatosIncompletos.Visible = false;
                    string Nombres = txtNombres.Text.Trim();
                    string Apellidos = txtApellidos.Text.Trim();
                    string Direccion = txtDireccion.Text.Trim();
                    string Celular = txtTelefono.Text.Trim();
                    string Correo = txtEmail.Text.Trim();
                    string Contrasena = txtContrasena.Text.Trim();
                    string Contrasena2 = txtContrasena2.Text.Trim();
                    string DNI = txtDNI.Text.Trim();
                    if (!Contrasena.Equals(Contrasena2))
                    {
                        alertaContrasenas.Visible = true;
                    }
                    else
                    {
                        alertaContrasenas.Visible = false;
                        var resultado = from U in BDBecasUAC.spAgregarEncargado(Correo, Nombres, Apellidos, Celular, Direccion, "1", DNI, Contrasena)
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
                            txtNombres.Text = "";
                            txtApellidos.Text = "";
                            txtDireccion.Text = "";
                            txtTelefono.Text = "";
                            txtEmail.Text = "";
                            txtContrasena.Text = "";
                            txtContrasena2.Text = "";
                            txtDNI.Text = "";
                            Response.Redirect("Usuarios.aspx");
                        }
                        else
                        {
                            alertaError.Visible = true;
                        }
                    }
                }
                else
                {
                    alertaDatosIncompletos.Visible = true;
                }
            }
            else
            {
                Response.Redirect("Login.aspx?url=RegistroUsuario");
            }
        }
    }
}