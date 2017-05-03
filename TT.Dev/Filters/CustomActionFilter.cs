using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TT.Dev.Models;

namespace TT.Dev.Filters
{
    public class CustomActionFilter: ActionFilterAttribute, IActionFilter
    {
        void IActionFilter.OnActionExecuting(ActionExecutingContext filterContext)
        {
            // Log Action Filter call
            using (MvcMusicStoreEntities storeDb = new MvcMusicStoreEntities())
            {
                ActionLog log = new ActionLog()
                {
                    Controller = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName,
                    Action = string.Concat(filterContext.ActionDescriptor.ActionName, " (Logged By: Custom Action Filter)"),
                    IP = filterContext.HttpContext.Request.UserHostAddress,
                    Datetime = filterContext.HttpContext.Timestamp
                };
                storeDb.ActionLog.Add(log);
                storeDb.SaveChanges();
                OnActionExecuting(filterContext);
            }
        }
    }
}