﻿using SirketOtomasyonAspNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SirketOtomasyonAspNet.Genel
{   
    public partial class birimler : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int id = int.Parse(Request.QueryString["ID"]);
                var model = db.Birimlers.FirstOrDefault(x => x.ID == id);
                lblBirim.Text = model.Birim + "Birimi";
                lblAciklama.Text = model.Aciklama;

                var personeller = db.Personellers.Where(x => x.BirimID == id && x.Isactive == true).ToList();
                Repeater1.DataSource = personeller;
                Repeater1.DataBind();            }

        }
    }
}