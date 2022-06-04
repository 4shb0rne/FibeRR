using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Model
{
    public partial class Item
    {
        public Item()
        {
            this.TrDetails = new HashSet<TrDetail>();
        }
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public int ItemPrice { get; set; }
        public string ItemPicture { get; set; }

        public Nullable<int> ItemTypeID { get; set; }

        public virtual ItemType ItemType { get; set; }

        public virtual ICollection<TrDetail> TrDetails { get; set; }
    }
}