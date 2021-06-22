using SirketOtomasyonAspNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SirketOtomasyonAspNet.AdminPaneli
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["Admin"]!=null)
            {
                string username = Session["Admin"].ToString();
                var model = db.Kullanicilars.FirstOrDefault(x => x.KullaniciAdi == username);
                lblAdSoyad.Text = model.Adi + "" + model.Soyadi;
                lblAdSoyad2.Text = model.Adi + "" + model.Soyadi;
                lblYetki.Text = model.Yetkilendirme.Yetki;
            }
            else if(Session["Admin"]==null)
            {
                Response.Redirect("/Default.aspx");
            }
        }
    }
}