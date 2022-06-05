using PSDProject.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Factory
{
    public class TransactionFactory
    {
        public static TrHeader CreateTrHeader(int memberID, DateTime transactionDate)
        {
            return new TrHeader
            {
                MemberID = memberID,
                TransactionDate = transactionDate
            };
        }

        public static TrDetail CreateTrDetail(int transactionID, int flowerID, int quantity)
        {
            return new TrDetail
            {
                TransactionID = transactionID,
                FlowerID = flowerID,
                Quantity = quantity
            };
        }
    }
}