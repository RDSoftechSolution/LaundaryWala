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
                UserLogout();
        }



        protected void btn_login_ServerClick(object sender, EventArgs e)
        {
            UserLogIn();
        }      

        protected void onLogout_ServerClick(object sender, EventArgs e)
        {
            UserLogout();
        }
        private void UserLogout()
        {
            hdnSession.Value = "";
        }
        private void UserLogIn()
        {
            hdnSession.Value = "1";
        }
    }
}