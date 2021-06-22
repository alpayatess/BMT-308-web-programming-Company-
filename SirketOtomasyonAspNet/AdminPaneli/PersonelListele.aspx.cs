using SirketOtomasyonAspNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SirketOtomasyonAspNet.AdminPaneli
{
    public partial class PersonelListele : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Personellers.ToList();
            CollectionPager1.DataSource = model;
            CollectionPager1.BindToControl = Repeater1;
            Repeater1.DataSource = CollectionPager1.DataSourcePaged;
            Repeater1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click2(object sender, EventArgs e)
        {
            var model = db.Personellers.Where(x => x.Adi.Contains(txtSearch.Text) || x.Soyadi.Contains(txtSearch.Text)).ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }
    }

    
}