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
    /// Summary description for CityServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CityServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int ID, string CityName)
        {
            return new CityData().Add(new City() {ID=ID,CityName=CityName});
        }
        [WebMethod]
        public int Update(int ID, string CityName)
        {
            return new CityData().Update(new City() { ID=ID,CityName=CityName});
        }
    }
}
