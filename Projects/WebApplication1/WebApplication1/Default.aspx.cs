using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            txtControl.Value = "This Text Stays";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtAsp.Text = txtControl.Value;
        }
        protected void htmlButton_Click(object sender, EventArgs e)

        {

            txtAsp.Text = "Submitted";
        }
    }
}