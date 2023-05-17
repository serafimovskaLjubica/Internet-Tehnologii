using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2_zadaca2b

{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSignedUp.Visible = false;

            if (!Page.IsPostBack)
            {
                caBirthDate.SelectedDate = DateTime.Now.Date;
            }
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblSignedUp.Visible = true;

            if (IsValid)
            {
                if (ddlZanimanje.SelectedItem.Text != "Друго" && int.Parse(txtGodini.Text) >= 5)
                {
                    lblSignedUp.Text = String.Format("Вашата корисничка сметка е:\nИме: {0}\nПрезиме: {1}\nФИНКИ ID: {2}",
                        txtIme.Text, txtPrezime.Text, txtFinkiID.Text);
                }
                else
                {
                    lblSignedUp.Text = "Не може да се издаде сметка на корисникот!!!";
                }
            }
        }
    }
}