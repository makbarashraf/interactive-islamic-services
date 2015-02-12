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
    /// Summary description for UserType
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UserTypeService : System.Web.Services.WebService
    {
        [WebMethod]
        public void Add(int ID,string USerTypes)
        {
            return new UserTypeData().Add(new UserType() {ID=ID,UserTypes=USerTypes });
        }
        [WebMethod]
        public void Update(int ID, string USerTypes)
        {
            return new UserTypeData().Update(new UserType() { ID = ID, UserTypes = USerTypes });
        }

    }
}
