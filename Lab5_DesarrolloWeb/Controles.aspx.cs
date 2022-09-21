using Lab5_DesarrolloWeb.MyDataTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5_DesarrolloWeb
{
    public partial class Controles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlTipo.Items.Add(new ListItem("-", "0"));                
                ddlTipo.Items.Add(new ListItem("Pasaporte", "1"));
                ddlSexo.Items.Add(new ListItem("-", "N/A"));
                ddlSexo.Items.Add(new ListItem("Masculino", "M"));
                ddlSexo.Items.Add(new ListItem("Femenino", "F"));
            }                        
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                txtSalida.Text = "ddl:" + ddlTipo.SelectedValue.ToString() + "\n";
                txtSalida.Text += "textbox:" + txtNacionalidad.Text + "\n";
                txtSalida.Text += "textbox:" + txtNombres.Text + "\n";
                txtSalida.Text += "textbox:" + txtApellidos.Text + "\n";
                txtSalida.Text += "ddl:" + ddlSexo.SelectedValue.ToString() + "\n";
                txtSalida.Text += "textbox:" + txtFechaNacimiento.Text + "\n";
                txtSalida.Text += "textbox:" + txtDireccion.Text + "\n";

                if (fuFoto.HasFile)
                {
                    fuFoto.SaveAs(MapPath("Imagenes") + @"\" + fuFoto.FileName);
                    imgFoto.ImageUrl = "./Imagenes/" + fuFoto.FileName;
                }

                txtSalida.Text += "textbox:" + txtSueldo.Text + "\n";
                txtSalida.Text += "textbox:" + txtEmpleador.Text + "\n";
                txtSalida.Text += "textbox:" + txtFechaIngreso.Text + "\n";
                txtSalida.Text += "textbox:" + txtCantidadHijos.Text + "\n";
                txtSalida.Text += "textbox:" + txtCantidadPadres.Text + "\n";
                txtSalida.Text += "checkbox:" + cboAceptar.Checked.ToString() + "\n";

                tblClientesTableAdapter adapter = new tblClientesTableAdapter();
                adapter.Insert(ddlTipo.SelectedValue.ToString(), txtNacionalidad.Text, txtNombres.Text, txtApellidos.Text,
                    ddlSexo.SelectedValue.ToString(), txtFechaNacimiento.Text, txtDireccion.Text, fuFoto.FileName, txtSueldo.Text,
                    txtEmpleador.Text, txtFechaIngreso.Text, txtCantidadHijos.Text, txtCantidadPadres.Text);
            }
            
            

        }
      
    }
}