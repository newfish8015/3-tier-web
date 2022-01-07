using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace home.Service
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Visible = false;

            }
            else
            {
                GridView1.DataSourceID = "new_order";
                GridView1.Visible = true;
            }
        }

        protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}