using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSDProject.Controller;
namespace PSDProject.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            string email = EmailTxt.Text;
            string password = PasswordTxt.Text;
            string username = UsernameTxt.Text;

            List<string> msgs = UserController.CreateMember(email, password, username);
            EmailLbl.Text = msgs[0];
            PasswordLbl.Text = msgs[1];
            UsernameLbl.Text = msgs[2];

            if(msgs[0] == "" && msgs[1] == "" && msgs[2] == "")
            {
                Response.Redirect("~/Views/Login.aspx");
            } else
            {
                if(msgs[0] != "")
                {
                    EmailLbl.Visible = true;
                }
                if (msgs[1] != "")
                {
                    PasswordLbl.Visible = true;
                }
                if (msgs[2] != "")
                {
                    UsernameLbl.Visible = true;
                }
            }
        }
    }
}