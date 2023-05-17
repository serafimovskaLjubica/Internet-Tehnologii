using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2._3
{
    public partial class GlavnaStranica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogged"].Equals(false))
                txtUser.Text = "Не сте најавени!!!!";

            else
                txtUser.Text = Session["korisnik"].ToString();
        }

        protected void btnOdjava_Click(object sender, EventArgs e)
        {
            Session["isLogged"] = false;
            Response.Redirect("Odjava.aspx");
        }
    }
}