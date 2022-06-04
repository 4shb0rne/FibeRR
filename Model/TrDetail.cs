using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Model
{
    public partial class TrDetail
    {
        public int TransactionID { get; set; }
        public int ItemID { get; set; }
        public Nullable<int> Quantity { get; set; }

        public virtual Item Item { get; set; }
        public virtual TrHeader TrHeader { get; set; }
    }
}