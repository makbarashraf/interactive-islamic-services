using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ISalah.Entity;
using ISalah.Manager;

namespace ISalah.Web.Api
{
    /// <summary>
    /// Summary description for RightServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class RightServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int id, string right,Role role)
        {
            return new RightsData().Add(new Rights() {ID=id,Right=right,Role=role});
        }
        [WebMethod]
        public int Update(int id, string right, string role)
        {
            return new RightsData().Update(new Rights() { ID = id, Right = right, Role=role});
        }
    }
}
