﻿using PSDProject.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSDProject.Controller
{
    public class UserController
    {
        public static string CreateMember(string email, string password, string name)
        {
            if (IsUniqueEmail(email) != null || !email.Contains("@") || email.Contains("@.") || email.Contains(".@") || !email.Contains("."))
            {
                return "Email must be unique and using a correct email format";
            }

            if (password.Length < 3 || password.Length > 20)
            {
                return "Password minimal length is 3 characters and 20 characters is the maximal";
            }

            if (name.Length < 3 || name.Length > 20 || !IsAlphabet(name))
            {
                return "Name minimal length is 3 characters and 20 characters is the maximal and must be letter";
            }

            UserHandler.Register(email, password, name);
            return null;
        }

        public static bool IsAlphabet(string s)
        {
            s = s.ToLower();
            for (int i = 0; i < s.Length; i++)
            {
                if ((s[i] < 'a' || s[i] > 'z') && s[i] != ' ') return false;
            }
            return true;
        }

        public static string LoginUser(string email, string password, bool remember)
        {
            if (!email.Contains("@")
                || email.Contains("@.") || email.Contains(".@")
                || !email.Contains("."))
            {
                return "Email must using a correct email format";
            }

            if (password.Length < 3 || password.Length > 20)
            {
                return "Password must more than 3 characters and less than 20 characters";
            }

            var user = IsValidCredential(email, password);
            if (user == null)
            {
                return "Credential is not valid";
            }
            HttpContext.Current.Session["Role"] = "User";
            HttpContext.Current.Session["Username"] = (user).UserName;
            HttpContext.Current.Session["ID"] = (user).UserID;
            HttpContext.Current.Session["Email"] = email;

            if (remember)
            {
                HttpCookie userCookie = new HttpCookie("UserCookie");
                userCookie.Values.Add("Email", email);
                userCookie.Values.Add("Password", password);
                userCookie.Expires = DateTime.Now.AddHours(24);
                HttpContext.Current.Response.Cookies.Add(userCookie);
            }
            return null;
        }

        public static dynamic IsUniqueEmail(string email)
        {
            return UserHandler.IsUniqueEmail(email);
        }
        public static dynamic IsValidCredential(string email, string password)
        {
            return UserHandler.IsValidCredential(email, password);
        }

    }
}