using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSDProject.Model;
using PSDProject.Controller;
namespace PSDProject.Views
{
    public partial class ItemDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["Id"];
                Item item = ItemController.GetOneItem(id);

                if (item == null)
                {
                    Response.Redirect("~/Views/Home.aspx");
                }
                else
                {
                    ClothLbl.Text = item.ItemName;
                    PriceLbl.Text = "$ " + item.ItemPrice;
                    DescLbl.Text = item.ItemDescription;
                    CategoryLbl.Text = item.ItemType.ItemTypeName;
                    Image.ImageUrl = item.ItemPicture;
                }
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["Id"];
            Response.Redirect("~/Views/UpdateItem.aspx?id=" + id);
        }
    }
}