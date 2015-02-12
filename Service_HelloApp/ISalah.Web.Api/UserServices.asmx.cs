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
    /// Summary description for UserServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UserServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Register(int id, string firstName, string lastName, string password, Address address, UserType userType, Source source, string createdBy, string createdOn, string voided, string voidedBy, string voidedOn, string reasonVoided, string Email, int CNIC, string Gender, Sect sect, GPSLOC gpsloc)
        {
            return new UserData().Register(new User() { ID = id, FirstName = firstName, LastName = lastName, Password = password, Address = address, UserType = userType, Source = source, CreatedBy = createdBy, CreatedOn = createdOn,  VoidedBy = voidedBy, VoidedOn = voidedOn, ReasonVoided = reasonVoided, Email = Email, CNIC = CNIC, Gender = Gender, Sect = sect, GPSLOC = gpsloc });
        }
        [WebMethod]
        public bool Authenticate(string userName, string password)
        {
            return new UserData().Authenticate(userName,password);
        }
        
    }
}
