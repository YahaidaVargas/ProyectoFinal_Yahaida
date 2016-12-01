using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ProyectoFinal_Yahaida.Registros
{
    public partial class rEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = 0;

            if (!IsPostBack)
            {
                Cursos curso = new Cursos();
                DropDownListCursoAsignado.DataSource = curso.ListadoMix();
                DropDownListCursoAsignado.DataValueField = "IdCursos";
                DropDownListCursoAsignado.DataTextField = "Curso";
                DropDownListCursoAsignado.DataBind();

                if (Request.QueryString.Count > 0)
                {
                    id = Convert.ToInt32(Request.QueryString["id"]);
                    llenaCampos(id);
                }

            }

            
        }

               

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Estudiantes estudiante = new Estudiantes();
            DatosSalud datoSalud = new DatosSalud();
            DatosAcademicos datoAcademico = new DatosAcademicos();
            DocumentosRecibidos documentoRecibido = new DocumentosRecibidos();
            Parientes pariente = new Parientes();
            ResponsableCuenta responsableCnta = new ResponsableCuenta();


            #region estudiante
            //Estudiante
            estudiante.Fecha = txtFecha.Text;
            estudiante.Matricula = TextBoxMatricula.Text;
            estudiante.Nombre = txtNombre.Text;
            estudiante.Apellido = TextBoxApellido.Text;
            estudiante.FechaNacimiento = TextBoxFechaNacimiento.Text;
            estudiante.LugarNacimiento = TextBoxLugarNacimiento.Text;
            estudiante.Religion = TextBoxReligion.Text;
            estudiante.DeporteOpasatiempo = TextBoxDeporteOPasatiempo.Text;
            estudiante.Foto = "No Foto";
            
            estudiante.IdCursos = Convert.ToInt32(DropDownListCursoAsignado.SelectedValue);
            #endregion

            if (estudiante.Insertar())
            {
                //datos de salud
                datoSalud.IdEstudiantes = estudiante.IdEstudiantes;
                datoSalud.Enfermedades = TextBoxEnfermedades.Text;
                datoSalud.Alergias = TextBoxAlergias.Text;
                datoSalud.TratamientosMedicos = TextBoxTratamientosMedicos.Text;
                datoSalud.Insertar();

                //Datos academicos
                datoAcademico.IdEstudiantes = estudiante.IdEstudiantes;
                datoAcademico.GradoActual = DropDownListGradoActual.SelectedValue;
                datoAcademico.GradoAnterior = DropDownListGradoAnterior.SelectedValue;
                datoAcademico.EscuelaAnterior = TextBoxEscuelaAnterior.Text;
                datoAcademico.Insertar();

                //Documentos recibidos
                Dictionary<string, bool> docs = radioBDocumentos();

                documentoRecibido.IdEstudiantes = estudiante.IdEstudiantes;
                documentoRecibido.ActaNacimiento = docs["actNac"];
                documentoRecibido.CartonNotas = docs["cartNota"];
                documentoRecibido.CertificadoGrados = docs["cartNota"];
                documentoRecibido.CertificadoOctavo = docs["certOct"];
                documentoRecibido.CertificadoMedico = docs["certMed"];
                documentoRecibido.CartaBuenaConducta = docs["cartBuenCond"];
                documentoRecibido.CopiaTarjetaVacuna = docs["tarjVacun"];
                documentoRecibido.Insertar();

                //Parientes
                pariente.IdEstudiantes = estudiante.IdEstudiantes;
                pariente.Nombres = TextBoxNombresPadre.Text;
                pariente.Parentesco = TextBoxParentesco.Text;
                pariente.Profesion = TextBoxProfesionOficioPadre.Text;
                pariente.Direccion = TextBoxDireccionPadre.Text;
                pariente.Cedula = TextBoxNumDecedulaPadre.Text;
                pariente.Telefono = TextBoxNumerosTelefonoPadre.Text;
                pariente.Pasatiempo = TextBoxDeportePasatiempoPadre.Text;
                pariente.Responsable = (RadioButtonResponsableDeCuentaTrue.Checked)? true : false;
                pariente.Insertar();

                //Responsable Cuenta
                if (RadioButtonResponsableDeCuentaTrue.Checked)
                {
                    responsableCnta.IdEstudiantes = estudiante.IdEstudiantes;
                    responsableCnta.Nombres = TextBoxNombreResponsable.Text;
                    responsableCnta.Cedula = TextBoxCedulaResponsable.Text;
                    responsableCnta.Telefonos = TextBoxTelefonoResponsable.Text;
                    responsableCnta.Direccion = TextBoxDirecionResponsable.Text;
                    responsableCnta.Email = EmailResponsable.Text;
                    responsableCnta.Insertar();
                }
                 Utilitarios.ShowToastr(Page, "Registro guardado", "Mensaje", "info");
                limpiar();

            }

           

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            limpiar();
        }


        void limpiar()
        {
            //estudiante
            TextBoxId.Text = string.Empty;
            txtFecha.Text = string.Empty;
            TextBoxMatricula.Text = string.Empty;
            txtNombre.Text = string.Empty;
            TextBoxApellido.Text = string.Empty;
            TextBoxFechaNacimiento.Text = string.Empty;
            TextBoxLugarNacimiento.Text = string.Empty;
            TextBoxReligion.Text = string.Empty;
            TextBoxDeporteOPasatiempo.Text = string.Empty;

            //datos de salud
            TextBoxEnfermedades.Text = string.Empty;
            TextBoxAlergias.Text = string.Empty;
            TextBoxTratamientosMedicos.Text = string.Empty;

            //datos academicos
            DropDownListGradoActual.SelectedIndex = 0;
            DropDownListGradoAnterior.SelectedIndex = 0;
            TextBoxEscuelaAnterior.Text = string.Empty;

            resetRadioButtons();

            //parientes
            TextBoxNombresPadre.Text = string.Empty;
            TextBoxParentesco.Text = string.Empty;
            TextBoxProfesionOficioPadre.Text = string.Empty;
            TextBoxDireccionPadre.Text = string.Empty;
            TextBoxNumDecedulaPadre.Text = string.Empty;
            TextBoxNumerosTelefonoPadre.Text = string.Empty;
            TextBoxDeportePasatiempoPadre.Text = string.Empty;
            RadioButtonResponsableDeCuentaTrue.Checked = false;

            //responsable de la cuenta
            TextBoxNombreResponsable.Text = string.Empty;
            TextBoxCedulaResponsable.Text = string.Empty;
            TextBoxTelefonoResponsable.Text = string.Empty;
            TextBoxDirecionResponsable.Text = string.Empty;
            EmailResponsable.Text = string.Empty;

            DropDownListCursoAsignado.SelectedIndex = 0;
        }

        void resetRadioButtons() {

            RadioButtonActadeNacimientoTrue.Checked = false;
            RadioButtonActadeNacimientoFalse.Checked = false;
            RadioButtonCartonNotasTrue.Checked = false;
            RadioButtonCartonNotasFalse.Checked = false;
            CertificacionGradoTrue.Checked = false;
            CertificacionGradoFalse.Checked = false;
            RadioButtonCertificacionOctavoTrue.Checked = false;
            RadioButtonCertificacionOctavoFalse.Checked = false;
            RadioButtonCertificadoMedicoTrue.Checked = false;
            RadioButtonCertificadoMedicoFalse.Checked = false;
            RadioButtonCartaBuenaConductaTrue.Checked = false;
            RadioButtonCartaBuenaConductaFalse.Checked = false;
            RadioButtonCopiaTarjetaVacunaTrue.Checked = false;
            RadioButtonCopiaTarjetaVacunaFalse.Checked = false;
           
        }

        void llenarRadioButtons(int IdEstud)
        {
            DocumentosRecibidos docsRec = new DocumentosRecibidos();
            docsRec.Listado("*", "IdEstudiantes = " + IdEstud);

            if (docsRec.ActaNacimiento)
            {
                RadioButtonActadeNacimientoTrue.Checked = true;
            }else {
                RadioButtonActadeNacimientoFalse.Checked = true;
            }


            if (docsRec.CartonNotas)
            {
                RadioButtonCartonNotasTrue.Checked = true;
            }
            else
            {
                RadioButtonCartonNotasFalse.Checked = true;
            }

            if (docsRec.CertificadoGrados)
            {
                CertificacionGradoTrue.Checked = true;
            }
            else {
                CertificacionGradoFalse.Checked = true;
            }


            if (docsRec.CertificadoOctavo)
            {
                RadioButtonCertificacionOctavoTrue.Checked = true;
            }
            else
            {
                RadioButtonCertificacionOctavoFalse.Checked = true;
            }

            if (docsRec.CertificadoMedico)
            {
                RadioButtonCertificadoMedicoTrue.Checked = true;
            }
            else
            {
                RadioButtonCertificadoMedicoFalse.Checked = true;
            }

            if (docsRec.CartaBuenaConducta)
            {
                RadioButtonCartaBuenaConductaTrue.Checked = true;
            }
            else
            {
                RadioButtonCartaBuenaConductaFalse.Checked = true;
            }

            if (docsRec.CopiaTarjetaVacuna)
            {
                RadioButtonCopiaTarjetaVacunaTrue.Checked = true;
            }
            else
            {
                RadioButtonCopiaTarjetaVacunaFalse.Checked = true;
            }            
            
            

        }

        void llenaCampos(int idEst)
        {
            Estudiantes estudiante = new Estudiantes();
            estudiante.Buscar(idEst);

            //estudiante
            TextBoxId.Text = estudiante.IdEstudiantes.ToString();
            txtFecha.Text = estudiante.Fecha;
            TextBoxMatricula.Text = estudiante.Matricula;
            txtNombre.Text = estudiante.Nombre;
            TextBoxApellido.Text = estudiante.Apellido;
            TextBoxFechaNacimiento.Text = estudiante.FechaNacimiento;
            TextBoxLugarNacimiento.Text = estudiante.LugarNacimiento;
            TextBoxReligion.Text = estudiante.Religion;
            TextBoxDeporteOPasatiempo.Text = estudiante.DeporteOpasatiempo;
            DropDownListCursoAsignado.SelectedValue = estudiante.IdCursos.ToString();

            //datos de salud
            DatosSalud datosDeSalud = new DatosSalud();
            datosDeSalud.Listado("*", "IdEstudiantes = " + idEst);

            TextBoxEnfermedades.Text = datosDeSalud.Enfermedades;
            TextBoxAlergias.Text = datosDeSalud.Alergias;
            TextBoxTratamientosMedicos.Text = datosDeSalud.TratamientosMedicos;


            //datos academicos
            DatosAcademicos datosAcademicos = new DatosAcademicos();
            datosAcademicos.Listado("*", "IdEstudiantes = " + idEst);

            DropDownListGradoActual.Text = datosAcademicos.GradoActual;
            DropDownListGradoAnterior.Text = datosAcademicos.GradoAnterior;
            TextBoxEscuelaAnterior.Text = datosAcademicos.EscuelaAnterior;

            //metodo para llenar los radiosbuttons
            llenarRadioButtons(idEst);

            //parientes
            Parientes pariente = new Parientes();
            pariente.Listado("*", "IdEstudiantes = " + idEst);

            TextBoxNombresPadre.Text = pariente.Nombres;
            TextBoxParentesco.Text = pariente.Parentesco;
            TextBoxProfesionOficioPadre.Text = pariente.Profesion;
            TextBoxDireccionPadre.Text = pariente.Direccion;
            TextBoxNumDecedulaPadre.Text = pariente.Cedula;
            TextBoxNumerosTelefonoPadre.Text = pariente.Telefono;
            TextBoxDeportePasatiempoPadre.Text = pariente.Pasatiempo;
            RadioButtonResponsableDeCuentaTrue.Checked = pariente.Responsable;

            //responsable de la cuenta
            ResponsableCuenta respCuenta = new ResponsableCuenta();
            respCuenta.Listado("*", "IdEstudiantes = " + idEst);

            TextBoxNombreResponsable.Text = respCuenta.Nombres;
            TextBoxCedulaResponsable.Text = respCuenta.Cedula;
            TextBoxTelefonoResponsable.Text = respCuenta.Telefonos;
            TextBoxDirecionResponsable.Text = respCuenta.Telefonos;
            EmailResponsable.Text = respCuenta.Email;
                      
        }

        Dictionary<string, bool> radioBDocumentos()
        {
            Dictionary<string, bool> docDic = new Dictionary<string, bool>();

            if (RadioButtonActadeNacimientoTrue.Checked)
            {
                docDic.Add("actNac", true);
            }
            else if (RadioButtonActadeNacimientoFalse.Checked)
            {
                docDic.Add("actNac", false);
            }

            if (RadioButtonCartonNotasTrue.Checked)
            {
                docDic.Add("cartNota", true);
            }
            else if (RadioButtonCartonNotasFalse.Checked)
            {
                docDic.Add("cartNota", false);
            }

            if (CertificacionGradoTrue.Checked)
            {
                docDic.Add("certGrad", true);
            }
            else if (CertificacionGradoFalse.Checked)            
            {
                docDic.Add("certGrad", false);
            }

            if (RadioButtonCertificacionOctavoTrue.Checked)
            {
                docDic.Add("certOct", true);
            }
            else if (RadioButtonCertificacionOctavoFalse.Checked)
            {
                docDic.Add("certOct", false);
            }

            if (RadioButtonCertificadoMedicoTrue.Checked)
            {
                docDic.Add("certMed", true);
            }
            else if (RadioButtonCertificadoMedicoFalse.Checked)
            {
                docDic.Add("certMed", false);
            }

            if (RadioButtonCartaBuenaConductaTrue.Checked)
            {
                docDic.Add("cartBuenCond", true);
            }
            else if (RadioButtonCartaBuenaConductaFalse.Checked)
            {
                docDic.Add("cartBuenCond", false);
            }


           if (RadioButtonCopiaTarjetaVacunaTrue.Checked)
            {
                docDic.Add("tarjVacun", true);
            }
            else if (RadioButtonCopiaTarjetaVacunaFalse.Checked)
            {
                docDic.Add("tarjVacun", false);
            }
           

            return docDic;

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            Estudiantes estudiante = new Estudiantes();
            estudiante.IdEstudiantes = 0;
            estudiante.Eliminar();

            Utilitarios.ShowToastr(this, "Registro Eliminado", "Mensaje", "info");
        }
    }
}