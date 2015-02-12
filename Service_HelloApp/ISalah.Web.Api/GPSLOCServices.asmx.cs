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
    /// Summary description for GPSLOCServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GPSLOCServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int ID, float Latitude, float Longitude, string Name)
        {
            return new GPSLOCData().Add(new GPSLOC() { ID=ID,Latitude=Latitude,Longitude=Longitude,Name=Name});
        }
        [WebMethod]
        public int Update(int ID, float Latitude, float Longitude, string Name)
        {
            return new GPSLOCData().Update(new GPSLOC() { ID = ID, Latitude = Latitude, Longitude = Longitude, Name = Name });
        }
    }
}
