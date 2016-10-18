using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaundaryWebApp
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["IsValid"] = null;
                li_Order.Visible = false;
                order.Visible = false;
            }
        }



        protected void btn_login_ServerClick(object sender, EventArgs e)
        {
            Session["IsValid"] = 1;
            li_Order.Visible = true;
            order.Visible = true;
        }
    }
}