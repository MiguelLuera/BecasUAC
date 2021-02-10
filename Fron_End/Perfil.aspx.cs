using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class Perfil : System.Web.UI.Page
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
                    lblUsuario.Text = consulta.Nombres+" "+consulta.Apellidos;
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
    }
}