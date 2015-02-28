using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac_1._2b
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String answer;
            if (yes.Checked == true)
            {
                
                answer = "You do want to join :)";
            }
            else
            {
                answer = "You donot want to join :( ";
            }


            String displayMusic = "";
            foreach(ListItem fruitItem in selFruit.Items)
            {
                if (fruitItem.Selected)
                {
                    displayMusic += fruitItem.Value + "<br/>";
                } 
            }
            displayAll.InnerHtml = "Your name is : " + txtName.Value.ToUpper() + "<br/>" + "Your email is : " + txtEmail.Value.ToUpper() + "<br/>" +"You choose following genres: <br/> " +" " +displayMusic.ToUpper() + "<br/>"+ answer.ToUpper() ;
          
          
        }
    }
}