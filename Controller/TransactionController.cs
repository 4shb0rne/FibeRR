using PSDProject.Handler;
using PSDProject.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Controller
{
    public class TransactionController
    {
        public static string InsertTransaction(int UserID, int ItemID, int quantity)
        {
            string error = null;

            if (quantity < 1 || quantity > 1000)
            {
                error = "Quantity must be between 1 and 1000";
                return error;
            }
            else
            {
                TrHeader header = TransactionHandler.CreateTrHeader(UserID, DateTime.Now);
                TransactionHandler.CreateTrDetail(header.Id, ItemID, quantity);
            }

            return error;
        }

        public static List<TrHeader> GetAllTransaction(int UserID)
        {
            return TransactionHandler.GetAllTransaction(UserID);
        }

        public static List<TrDetail> GetAllTransactionDetail(int TransactionID)
        {
            return TransactionHandler.GetAllTransactionDetail(TransactionID);
        }
    }
}