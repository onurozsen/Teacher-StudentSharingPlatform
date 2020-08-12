using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class dokümandeneme1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)//Kullanıcı fileupload ile bir dosya seçmiş ise işlemleri gerçekleştir.
            {
                if (FileUpload1.PostedFile.ContentType == "application/pdf") //Sadece jpeg dosyalarını yüklenmesine izin veriyoruz.
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000) //Maksimum 1MB'lık dosyaların yüklenmesine izin veriyoruz.
                    {
                        string isim = Guid.NewGuid().ToString();
                        //Benzersiz bir isim oluşturduk.İsimlendirme için farklı yöntemlerde kullanabilirsiniz.
                        FileUpload1.SaveAs(Server.MapPath("~/deneme/") + isim + ".pdf");
                        //Sunucuda ki resimler klasörünün içerisine seçilen resmi oluşturduğumuz benzersiz isim ile kaydediyoruz.
                        lblMesaj.Text = "Dosya yüklendi. Alınan dosyanın detayları:<br>" +
                            "Dosya Türü:" + FileUpload1.PostedFile.ContentType + "<br>" +
                            "Dosya Boyutu:" + FileUpload1.PostedFile.ContentLength;
                        //Detaylı bir bilgi mesajı verdik.  
                    }
                    else
                        lblMesaj.Text = "Dsya boyutu maximum 1MB olmalıdır.";
                }
                else
                    lblMesaj.Text = "Sadece jpeg uzantılı dosyalar yüklenebilir.";
            }
            else
                lblMesaj.Text = "Lütfen bir dosya seçiniz.";

        }
    }
    }