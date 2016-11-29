using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace ProyectoFinal_Yahaida.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        
        bool fotoOk = false;
        bool editar = false;
        int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Request.QueryString.Count > 0)
            {                
                id = Convert.ToInt32(Request.QueryString["id"]);
                llenarCampos(id);
                editar = true;
            }
           
        }
        //subiir foto
        void subFoto()
        {
            if (IsPostBack)
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/fotos/");
                if (FUFoto.HasFile)
                {
                    String fileExtension =
                        System.IO.Path.GetExtension(FUFoto.FileName).ToLower();
                    String[] allowedExtensions =
                        {".gif", ".png", ".jpeg", ".jpg"};
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }

                if (fileOK)
                {
                    try
                    {
                        FUFoto.PostedFile.SaveAs(path
                            + FUFoto.FileName);
                       // Label1.Text = "File uploaded!";
                    }
                    catch (Exception ex)
                    {
                        //Label1.Text = "File could not be uploaded.";
                    }
                }
                else
                {
                    //Label1.Text = "Cannot accept files of this type.";
                }fotoOk = fileOK;
            }
            
        }

        //boton Guardar
        protected void guardar_Click(object sender, EventArgs e)
        {
            Usuarios us = new Usuarios();
            Datos();
            subFoto();
            if (fotoOk) { us.Foto = FUFoto.FileName; }


            //comparacion de los campos contrasena
            if (txtContrasena.Text == txtRepContrasena.Text)
            {
            
                if (editar)
                {

                    us.IdUsuario = id;
                    if (us.Editar())
                    {
                        Utilitarios.ShowToastr(Page, "Registro Editado", "Mensaje", "info"); 
                    }
                }
                else
                {
                    //  us.Insertar();
                    Datos();
                    Utilitarios.ShowToastr(Page, "Registro guardado", "Mensaje", "info");
                }


                Limpiar();
            }
            else if (txtContrasena.Text != txtRepContrasena.Text)
            {
                Utilitarios.ShowToastr(Page, "Los campos contraseña son diferentes", "Mensaje", "Error");
            }
        }

        private void Datos()// Metodo datos del usuario para guardar
        {

            Empleados empleado = new Empleados();
            Usuarios us = new Usuarios();
            
            empleado.Nombre = txtNombres.Text;
            empleado.Apellido = txtApellido.Text;
            empleado.Direccion = TextBoxDireccion.Text;
            empleado.Telefono = TextBoxTelefono.Text;
            empleado.Celular = TextBoxCelular.Text;
            empleado.Cedula = TextBoxCedula.Text;
            

         if (empleado.Insertar())
            {
                us.IdEmpleado = empleado.IdEmpleado;
                us.Usuario = txtUsuario.Text;
                us.Email = txtEmail.Text;
                us.Clave = txtContrasena.Text;
                //us.Repclave = txtRepContrasena.Text;
                us.Nivel = DdNiveles.SelectedValue;
                us.Insertar();
            }
        }

        //metodo para llenar los campos de acuerdo al ID recibido de la consulta
        private void llenarCampos(int idRecibida)
        {
            Usuarios us = new Usuarios();
            Empleados emp = new Empleados();



            if (us.Buscar(id)) {
                btnGuardar.Text = "Editar";
            }

            emp.Buscar(us.IdEmpleado);

            TextBoxId.Text = us.IdUsuario.ToString();
            txtNombres.Text = emp.Nombre;
            txtApellido.Text = emp.Apellido;
            TextBoxDireccion.Text = emp.Direccion;
            TextBoxCelular.Text = emp.Celular;
            TextBoxCedula.Text = emp.Cedula;
            txtUsuario.Text = us.Usuario;
            txtEmail.Text = us.Email;
            txtContrasena.Text = txtRepContrasena.Text = us.Clave;
            DdNiveles.Text = us.Nivel;

            txtNombres.Text = emp.Nombre;

        }

        //boton nuevo
        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            btnGuardar.Text = "Guardar";
            Limpiar();
        }

        //Metodo Limpiar
        public void Limpiar()
        {           
            txtNombres.Text= txtUsuario.Text = txtEmail.Text = txtContrasena.Text = string.Empty;
            txtNombres.Text = txtApellido.Text = TextBoxDireccion.Text = TextBoxCelular.Text = TextBoxCedula.Text = string.Empty;
        }

        //boton eliminar
        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            Usuarios us = new Usuarios();
            us.IdUsuario = Convert.ToInt32(TextBoxId.Text);
            us.Eliminar();
            Utilitarios.ShowToastr(this, "No Existe dicho registro", "ERROR", "error");
        }

        //boton buscar
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

            //Response.Redirect("/Consultas/cUsuarios.aspx");
            
        }

        protected void DdNiveles_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdNiveles.SelectedIndex == 2)
            {
                RequiredFieldValidator5.Enabled = true;
                PlaceHolderMateria.Visible = true;
            }
            else
            {
                RequiredFieldValidator5.Enabled = false;
                PlaceHolderMateria.Visible = false;
            }
        }
    }
}