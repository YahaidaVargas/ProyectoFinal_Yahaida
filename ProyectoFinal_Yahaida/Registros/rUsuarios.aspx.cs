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
        Usuarios us = new Usuarios();
        bool fotoOk = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            us.Fecha = DateTime.Now.ToString(txtFecha.Text);
            us.Nombres = txtNombres.Text;
            us.Usuario = txtUsuario.Text;
            us.Email = txtEmail.Text;
            us.Clave = txtContrasena.Text;
            us.Repclave = txtRepContrasena.Text;
            us.Nivel = DdNiveles.SelectedValue;
            subFoto();
            if (fotoOk) { us.Foto = FUFoto.FileName; }
            
            
            //comparacion de los campos contrasena
            if (txtContrasena.Text ==txtRepContrasena.Text)
            {
                us.Insertar();
                Utilitarios.ShowToastr(Page, "Registro guardado", "Mensaje", "info");
                Limpiar();
            }
            else if(txtContrasena.Text != txtRepContrasena.Text) {
                Utilitarios.ShowToastr(Page, "Los campos contraseña son diferentes", "Mensaje", "Error");
            }
        }

        //boton nuevo
        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        //Metodo Limpiar
        public void Limpiar()
        {
           
            txtFecha.Text= txtNombres.Text= txtUsuario.Text = txtEmail.Text = txtContrasena.Text = DdNiveles.Text= string.Empty;
        }

        //boton eliminar
        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            us.IdUsuario = Convert.ToInt32(TextBoxId.Text);
            us.Eliminar();
            Utilitarios.ShowToastr(this, "No Existe dicho registro", "ERROR", "error");
        }

        //boton buscar
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Consultas/cUsuarios.aspx");

            //Limpiar();
           //Usuarios  us= new Usuarios();

           

            /*if (TextBoxId.Text != string.Empty)

                if (us.Buscar(Convert.ToInt32(TextBoxId.Text)))
                {
                    txtFecha.Text= us.Fecha;
                    txtFecha.Text = us.Fecha;
                    txtNombres.Text = us.Nombres;
                    txtUsuario.Text = us.Usuario;
                    txtEmail.Text = us.Email;
                    txtContrasena.Text = us.Clave;
                    txtRepContrasena.Text = us.Repclave;
                    DdNiveles.SelectedValue= us.Nivel;
                   // FUFoto.FileName = us.Foto.ToString;
                    
                     
                }
                else
                {
                    Utilitarios.ShowToastr(this, "No Existe dicho registro", "ERROR", "error");

                }
                */
        }
    }
}