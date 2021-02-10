using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class Login : System.Web.UI.Page
    {
        private BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    Response.Redirect("Inicio.aspx");
                }
                alertaLogin.Visible = false;
                alertaDatosIncompletos.Visible = false;
                alertaDatosIncompletosRegistro.Visible = false;
                alertaErrorRegistro.Visible = false;
                alertaContrasenas.Visible = false;
                cargarEscuelas();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(!String.IsNullOrEmpty(txtEmail.Text) && !String.IsNullOrEmpty(txtContrasena.Text))
            {
                alertaDatosIncompletos.Visible = false;
                string Email = txtEmail.Text.Trim();
                string Contrasena = txtContrasena.Text.Trim();
                var resultado = from C in BDBecasUAC.spLoginUsuario(Email, Contrasena)
                                select C;
                byte codError = 0;
                string mensaje = string.Empty;
                foreach (var X in resultado)
                {
                    codError = Convert.ToByte(X.CodError);
                    mensaje = X.Mensaje;
                }
                if (codError == 0)
                {
                    alertaLogin.Visible = false;
                    Session["correo"] = Email;
                    var consulta = (from U in BDBecasUAC.TUsuario
                                    where U.Correo == Email
                                    select new
                                    {
                                        U.IdUsuario,
                                        Usuario = U.Nombres,
                                        U.urlImagen
                                    }).FirstOrDefault();
                    string IdUsuario = consulta.IdUsuario;
                    if (BDBecasUAC.TEncargado_BU.Where(BU => BU.IdUsuario == IdUsuario).Any())
                    {
                        Session["cargo"] = "Encargado";
                    }
                    else if (BDBecasUAC.TEstudiante.Where(E => E.IdUsuario == IdUsuario).Any())
                    {
                        Session["cargo"] = "Estudiante";
                    }


                    if (Request.QueryString["url"] != null)
                    {
                        string url = Request.QueryString["url"];
                        Response.Redirect(url);
                    }
                    else
                    {
                        Response.Redirect("Inicio.aspx");
                    }
                    
                }
                else
                {
                    alertaLogin.Visible = true;
                }
            }
            else
            {
                alertaLogin.Visible = false;
                alertaDatosIncompletos.Visible = true;
            }
        }

        protected void kt_login_signup_submit_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtNombre.Text) && !String.IsNullOrEmpty(txtApellidos.Text) &&
                !String.IsNullOrEmpty(txtEmailRegistro.Text) && !String.IsNullOrEmpty(txtContrasenaRegistro.Text) &&
                !String.IsNullOrEmpty(txtContrasenaConfirmar.Text) && !String.IsNullOrEmpty(txtCelular.Text) &&
                !String.IsNullOrEmpty(txtDireccion.Text) && !String.IsNullOrEmpty(txtDNI.Text) &&
                !(ddlEscuelaProfesional.SelectedValue.Equals("SNVAL")))
            {
                alertaDatosIncompletosRegistro.Visible = false;
                string nombre = txtNombre.Text.Trim();
                string apellidos = txtApellidos.Text.Trim();
                string email = txtEmailRegistro.Text.Trim() + "@uandina.edu.pe";
                string contrasena = txtContrasenaRegistro.Text.Trim();
                string contrasena2 = txtContrasenaConfirmar.Text.Trim();
                string celular = txtCelular.Text.Trim();
                string direccion = txtDireccion.Text;
                string dni = txtDNI.Text.Trim();
                string escuela = ddlEscuelaProfesional.SelectedValue;
                if (contrasena.Equals(contrasena2))
                {
                    alertaContrasenas.Visible = false;
                    var resultado = from C in BDBecasUAC.spAgregarEstudiante(email, nombre, apellidos, celular, direccion, "1", dni, contrasena, escuela)
                                    select C;
                    byte codError = 0;
                    string mensaje = string.Empty;
                    foreach (var X in resultado)
                    {
                        codError = Convert.ToByte(X.CodError);
                        mensaje = X.Mensaje;
                    }
                    if (codError == 0)
                    {
                        alertaErrorRegistro.Visible = false;
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        alertaErrorRegistro.Visible = true;
                    }
                }
                else
                {
                    alertaContrasenas.Visible = true;
                }
            }
            else
            {
                alertaDatosIncompletosRegistro.Visible = true;
            }
        }
    }
}