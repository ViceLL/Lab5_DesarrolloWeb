﻿using System.Web;
using System.Web.Mvc;

namespace Lab5_DesarrolloWeb
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
