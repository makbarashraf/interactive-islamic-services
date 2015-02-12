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
    /// Summary description for PrayerTimingServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class PrayerTimingServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int ID, string PrayerTime, Prayer prayer, Congregation congregation, User user)
        {
            return new PrayerTimingData().Add(new PrayerTiming() {ID=ID,prayertime=PrayerTime,Prayer=prayer,Congregation=congregation,user=user });
        }
        [WebMethod]
        public int Update(int ID, string PrayerTime, Prayer prayer, Congregation congregation, User user)
        {
            return new PrayerTimingData().Update(new PrayerTiming() { ID = ID, prayertime = PrayerTime, Prayer = prayer, Congregation = congregation, user = user });
        }
       
    }
}
