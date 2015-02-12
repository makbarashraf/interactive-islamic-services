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
    /// Summary description for VotesServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class VotesServices : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int ID, string VotesTO, string VotesBy, DateTime DateTime, string Comments)
        {
            return new VotesData().Add(new Votes() {ID = ID, VotesTo = VotesTO,VotesBy = VotesBy, Date_Time = DateTime, Comments = Comments });
        }
        [WebMethod]
        public int Update(int ID, string VotesTO, string VotesBy, DateTime DateTime, string Comments)
        {
            return new VotesData().Update(new Votes() { ID = ID, VotesTo = VotesTO, VotesBy = VotesBy, Date_Time = DateTime, Comments = Comments });
 
        }
    }
}
