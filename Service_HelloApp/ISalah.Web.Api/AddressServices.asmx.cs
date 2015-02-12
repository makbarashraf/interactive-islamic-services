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
    /// Summary description for AddressServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AddressServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int ID, User user, int Myproperty, string StreetAddress, City city, State state, Country country)
        {
            return new AddressData().Add(new Address() { Id=ID,User=user,MyProperty=Myproperty,StreetAddress=StreetAddress,City=city,State=state,Country=country});
        }
        [WebMethod]
        public int Update(int ID, User user, int Myproperty, string StreetAddress, City city, State state, Country country)
        {
            return new AddressData().Update(new Address() { Id = ID, User = user, MyProperty = Myproperty, StreetAddress = StreetAddress, City = city, State = state, Country = country });
        }
    }
}
