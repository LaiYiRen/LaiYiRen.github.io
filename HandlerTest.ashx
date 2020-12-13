<%@ WebHandler Language="C#" Class="HandlerTest" %>

using System;
using System.Web;

public class HandlerTest : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
         context.Response.ContentType = "text/plain";
            string dateTime = DateTime.Now.ToString();
            context.Response.Write("Hello World," + dateTime);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}