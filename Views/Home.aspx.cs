using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSDProject.Controller;
namespace PSDProject.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CardRepeater.DataSource = ItemController.GetAllItems();
            CardRepeater.DataBind();
        }
    }
}