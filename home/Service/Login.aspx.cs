using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace home.Service
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var response = base.Response;
            // Redirect temporarily.
            // ... Don't throw an HttpException to terminate.
            response.Redirect("https://localhost:44308/Service/Orders", false);
        }
    }
}