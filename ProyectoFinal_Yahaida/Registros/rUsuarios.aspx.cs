using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal_Yahaida.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void subFoto()
        {
            if (IsPostBack)
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/UploadedImages/");
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
                }
            }
        }
    }
}