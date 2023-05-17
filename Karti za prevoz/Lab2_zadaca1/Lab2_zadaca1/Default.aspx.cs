using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2_zadaca1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fill_in_Months();
                fill_in_Days();
                fill_in_Years();
            }
        }

        private void fill_in_Months()
        {
            List<string> months = new List<string>() {
                "Јанурари", "Февруари", "Март", "Април", "Мај", "Јуни",
                "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември"
            };

            foreach (string month in months)
                ddlMesec.Items.Add(month);
        }

        private void fill_in_Days()
        {
            for (int i = 1; i <= 31; i++)
                ddlDen.Items.Add(i.ToString());
        }

        private void fill_in_Years()
        {
            for (int i = DateTime.Now.Year; i < DateTime.Now.Year + 5; i++)
                ddlGodina.Items.Add(i.ToString());
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            lblPrevoz.Text = lstPrevoz.SelectedValue.ToString();
            lblOd.Text = ddlOd.SelectedValue.ToString();
            lblDo.Text = ddlDo.SelectedValue.ToString();
            lblVreme.Text = ddlDen.SelectedValue.ToString() + "." + ddlMesec.SelectedValue.ToString() +
                "." + ddlGodina.SelectedValue.ToString() + " во " + ddlVreme.SelectedValue.ToString();
            lblZona.Text = rblZona.SelectedValue.ToString();
            lblKlasa.Text = rblKlasa.SelectedValue.ToString();
            lblPosluga.Text = "";
            cblPosluga.Items.Cast<ListItem>()
                .Where(li => li.Selected)
                .ToList()
                .ForEach(item => lblPosluga.Text += item + " ");

            imgPrevoz.Width = 200;
            imgPrevoz.Height = 200;

            if (lstPrevoz.SelectedValue.ToString() == "Авион")
                imgPrevoz.ImageUrl = "images/plane_image.png";

            else
                imgPrevoz.ImageUrl = "images/train_image.png";
        }
    }
}