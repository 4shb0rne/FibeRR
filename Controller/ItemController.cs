using PSDProject.Handler;
using PSDProject.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace PSDProject.Controller
{
    public class ItemController
    {
        public static dynamic GetAllItems()
        {
            return ItemHandler.GetAllItems();
        }

        public static List<string> GetAllItemType()
        {
            return ItemHandler.GetAllItemType();
        }

        public static string InsertFlower(string name, FileUpload imageFile,
            string description, int type, string price)
        {
            string error = ItemValidation(name, imageFile, description, type, price);

            if (error == null)
            {
                ItemHandler.CreateItem(name, imageFile, description, type + 1, int.Parse(price));
            }
            return error;
        }

        private static string ItemValidation(string name, FileUpload imageFile, string description, int type, string price)
        {
            if (name.Length < 5)
            {
                return "Must be filled and minimal length is 5 characters";
            }
            if (!imageFile.HasFile)
            {
                return "You must input the Image";
            }
            else
            {
                if (!imageFile.FileName.EndsWith(".jpg"))
                {
                    return "Extention must ends with \".jpg\"";
                }
            }
            if (description.Length <= 50)
            {
                return "Description must be longer than 50 characters";
            }
            if (type == -1)
            {
                return "Item Type must be Filled";
            }
            int realPrice;
            if (!int.TryParse(price, out realPrice))
            {
                return "Price must be numeric";
            }
            return null;
        }

        public static string DeleteFlower(string arg)
        {

            if (!int.TryParse(arg, out int idx))
            {
                return "Invalid Item index";
            }

            if (!ItemHandler.DeleteItem(idx))
            {
                return "Item not available";
            }
            return null;
        }

        public static Item GetOneFlower(string idx)
        {
            if (!int.TryParse(idx, out int realIdx))
            {
                return null;
            }
            return ItemHandler.GetOneItem(int.Parse(idx));
        }

        public static string UpdateFlower(int flowerID, string name,
            FileUpload imageFile, string description,
            int type, string price)
        {
            string error = ItemValidation(name, imageFile, description, type, price);

            if (error == null)
            {
                ItemHandler.UpdateItem(flowerID, name, imageFile, description, type + 1, int.Parse(price));
            }
            return error;
        }
    }
}