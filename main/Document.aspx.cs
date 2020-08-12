using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Linq;
using System.Data;
using System.Net;

namespace WebApplication6
{
    public partial class Document : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                LoadData();
                
            }
        }

        void LoadData()
        {
            var st = from s in db.tblDokumanlars select s;
            GridView1.DataSource = st;
            GridView1.DataBind();

        }

        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fname = FileUpload1.FileName;
            string flocation = "PDFFile/";
            string pathstring = System.IO.Path.Combine(flocation, fname);
            var st = new tblDokumanlar
            {
                FileName = TextBox1.Text,
                FileLocation = pathstring,
            };
            db.tblDokumanlars.InsertOnSubmit(st);
            db.SubmitChanges();
            FileUpload1.SaveAs(MapPath(pathstring));
            Label1.Text = "Başarılı √";
            LoadData();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            //pdf dosyasını açmak için
            int rowIndex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            string filelocation = GridView1.Rows[rowIndex].Cells[3].Text;
            string FilePath = Server.MapPath("~/"+filelocation);


            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);    

            if(FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }

        }
    }
}