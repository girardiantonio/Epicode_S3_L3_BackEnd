using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicode_S3_L3_BackEnd
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = ConfigurationManager.AppSettings["username"];
            string password = ConfigurationManager.AppSettings["password"];

            if (username == inputUsername.Text && password == inputPassword.Text)
            {
                FormsAuthentication.SetAuthCookie(inputUsername.Text, false);
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                errore.Visible = true;
            }
        }
    }
}