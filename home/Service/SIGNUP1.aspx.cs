using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace home.Service
{
    public partial class SIGNUP1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Visible = false;

            }
            else
            {
                GridView1.DataSourceID = "SEVER2";
                var DDL = FormView1.FindControl("DropDownList1");
                

                
                GridView1.Visible = true;
            }
                


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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