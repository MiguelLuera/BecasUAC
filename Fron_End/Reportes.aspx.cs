using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fron_End
{
    public partial class Reportes : System.Web.UI.Page
    {
        BDBecasUACDataContext BDBecasUAC = new BDBecasUACDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["correo"] != null)
                {
                    if (Session["cargo"] != null)
                    {
                        if (Session["cargo"].ToString() != "Encargado")
                        {
                            Response.Redirect("Inicio.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?url=Reportes.aspx");
                }
            }

        }
        protected string obtenerDatosModalidad()
        {
            DataTable Datos = new DataTable();
            Datos.Columns.Add(new DataColumn("Modalidad", typeof(string)));
            Datos.Columns.Add(new DataColumn("Número de Solicitudes", typeof(string)));
            var consulta = from vSM in BDBecasUAC.vistaSolicitudesPorModalidad.AsEnumerable()
                                             select vSM;
            foreach(var element in consulta)
            {
                var row = Datos.NewRow();
                Datos.Rows.Add(new Object[] { element.Nombre, element.Cantidad });
            }
            string strDatos;
            strDatos = "[['Modalidad', 'Número de solicitudes'],";
            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'"+dr[0]+"', "+dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";
            return strDatos;
        }
        protected string obtenerDatosEP()
        {
            DataTable Datos = new DataTable();
            Datos.Columns.Add(new DataColumn("Modalidad", typeof(string)));
            Datos.Columns.Add(new DataColumn("Número de Solicitudes", typeof(string)));
            var consulta = from vSM in BDBecasUAC.vistaSolicitudesPorEscuela.AsEnumerable()
                           select vSM;
            foreach (var element in consulta)
            {
                var row = Datos.NewRow();
                Datos.Rows.Add(new Object[] { element.Nombre, element.Cantidad });
            }
            string strDatos;
            strDatos = "[['Modalidad', 'Número de solicitudes'],";
            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "', " + dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";
            return strDatos;
        }
        protected string obtenerDatosEstado()
        {
            DataTable Datos = new DataTable();
            Datos.Columns.Add(new DataColumn("Modalidad", typeof(string)));
            Datos.Columns.Add(new DataColumn("Número de Solicitudes", typeof(string)));
            var consulta = from vSM in BDBecasUAC.vistaSolicitudesPorEstado.AsEnumerable()
                           select vSM;
            foreach (var element in consulta)
            {
                var row = Datos.NewRow();
                Datos.Rows.Add(new Object[] { element.Nombre, element.Cantidad });
            }
            string strDatos;
            strDatos = "[['Modalidad', 'Número de solicitudes'],";
            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "', " + dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";
            return strDatos;
        }
        protected string obtenerDatosEPAprobados()
        {
            DataTable Datos = new DataTable();
            Datos.Columns.Add(new DataColumn("Modalidad", typeof(string)));
            Datos.Columns.Add(new DataColumn("Número de Solicitudes", typeof(string)));
            var consulta = from vSM in BDBecasUAC.vistaSolicitudesAprobadasPorEscuela.AsEnumerable()
                           select vSM;
            foreach (var element in consulta)
            {
                var row = Datos.NewRow();
                Datos.Rows.Add(new Object[] { element.Nombre, element.Cantidad });
            }
            string strDatos;
            strDatos = "[['Modalidad', 'Número de solicitudes'],";
            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "', " + dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";
            return strDatos;
        }
        protected string obtenerDatosModalidadAprobados()
        {
            DataTable Datos = new DataTable();
            Datos.Columns.Add(new DataColumn("Modalidad", typeof(string)));
            Datos.Columns.Add(new DataColumn("Número de Solicitudes", typeof(string)));
            var consulta = from vSM in BDBecasUAC.vistaSolicitudesAprobadasPorModalidad.AsEnumerable()
                           select vSM;
            foreach (var element in consulta)
            {
                var row = Datos.NewRow();
                Datos.Rows.Add(new Object[] { element.Nombre, element.Cantidad });
            }
            string strDatos;
            strDatos = "[['Modalidad', 'Número de solicitudes'],";
            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "', " + dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";
            return strDatos;
        }

    }
}

