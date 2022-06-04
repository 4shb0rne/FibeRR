using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Model
{
    public class TrHeader
    {
        public TrHeader()
        {
            this.TrDetails = new HashSet<TrDetail>();
        }

        public int TransactionID { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<System.DateTime> TransactionDate { get; set; }

        public virtual User User { get; set; }

        public virtual ICollection<TrDetail> TrDetails { get; set; }
    }
}