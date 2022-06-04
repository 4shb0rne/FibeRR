using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Model
{
    public partial class ItemType
    {
        public ItemType()
        {
            this.Items = new HashSet<Item>();
        }
        public int ItemTypeID { get; set; }
        public string ItemTypeName { get; set; }
        public virtual ICollection<Item> Items { get; set; }
    }
}