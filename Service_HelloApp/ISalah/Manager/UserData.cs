using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
    public class UserData : DataLayer
    {
        public bool Authenticate(string userName, string password)
        {
            return Convert.ToBoolean(base.ExecuteScalar(string.Format("EXEC User_Authenticate {0},'{1}'",userName,password)));
        }

        public int Register(User user)
        {
            return base.ExecuteNonQuery(string.Format("EXEC USER_ADD {0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}'",user.FirstName,user.LastName,user.Password,user.Address.Id,user.UserType.ID,user.Source.ID,user.CreatedBy,user.CreatedOn,user.Voided,user.VoidedOn,user.ReasonVoided));
        }

       
    }
}
