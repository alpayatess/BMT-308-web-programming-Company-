using SirketOtomasyonAspNet.Models;
using System;
using System.Linq;

namespace SirketOtomasyonAspNet.Genel
{
    public partial class iletisim : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Sirkets.FirstOrDefault();
            lblSirketAdi.Text = model.SirketAdi;
            lblTel1.Text = model.Tel_1;
            lblTel2.Text = model.Tel_2;
            lblFax.Text = model.Fax;
            lblEmail.Text = model.Email;
            lblAdres.Text = model.Adres;
            lblTarih.Text = model.KurulusTarihi.Value.ToString("dd-MM-yyyy");
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            Iletisim model = new Iletisim
            {
                AdiSoyadi = txtAdiSoyadi.Text,
                Email = txtBaslik.Text,
                Baslik = txtBaslik.Text,
                Mesaj = txtMesaj.Text,
                Tarih = DateTime.Now
            };
            db.Iletisims.Add(model);
            db.SaveChanges();
            Response.Write("Mesaj İletildi.");

        }
    }
}