using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSDProject.Controller;
using PSDProject.Model;

namespace PSDProject.Views
{
    public partial class UpdateItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Role"] == null)
                {
                    Response.Redirect("~/View/Guest/Login.aspx");
                }
            }
            categorySelect.DataSource = ItemController.GetAllItemType();
            categorySelect.DataBind();
            categorySelect.DataTextField = "ItemTypeName";
            categorySelect.DataValueField = "Id";
            categorySelect.DataBind();

            string id = Request.QueryString["Id"];
            Item item = ItemController.GetOneItem(id);

            if(item == null)
            {
                Response.Redirect("~/Views/Home.aspx");
            }
            else
            {
                clothesnameTxt.Text = item.ItemName;
                priceTxt.Text = item.ItemPrice.ToString();
                descriptionTxt.Text = item.ItemDescription;
                categorySelect.SelectedIndex = item.ItemTypeID;
            }
        }
    }
}