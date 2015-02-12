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
    /// Summary description for CongregationServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CongregationServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int ID, int LocationID, string CongregationCenterName, CongregationCenterType CongregationCenterType, PrayerTiming PrayerTiming, Sect sect, PreachingType Preachingtype, Address Address, GPSLOC GPSLOC, int Street, City City, State State, Country Country)
        {
            return new CongregationData().Add(new Congregation() {ID=ID,LocationID=LocationID,CongregaionCenterName=CongregationCenterName,CongregationCenterType=CongregationCenterType,PrayerTiming=PrayerTiming,sect=sect,PreachingTiming=Preachingtype,Address=Address,GPSLOC=GPSLOC,Street=Street,City=City,State=State,Country=Country });
        }
        [WebMethod]
        public int Update(int ID, int LocationID, string CongregationCenterName, CongregationCenterType CongregationCenterType, PrayerTiming PrayerTiming, Sect sect, PreachingType Preachingtype, Address Address, GPSLOC GPSLOC, int Street, City City, State State, Country Country)
        {
            return new CongregationData().Update(new Congregation() { ID = ID, LocationID = LocationID, CongregaionCenterName = CongregationCenterName, CongregationCenterType = CongregationCenterType, PrayerTiming = PrayerTiming, sect = sect, PreachingTiming = Preachingtype, Address = Address, GPSLOC = GPSLOC, Street = Street, City = City, State = State, Country = Country });
        }
    }
}
