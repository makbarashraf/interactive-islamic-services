using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
   public class AddressData:DataLayer
    {
        public int Add(Address addess)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Address_Add {0},'{1}','{2}','{3}','{4}'", addess.User.ID, addess.StreetAddress, addess.City.ID, addess.State.ID, addess.Country.ID));
        }
        public int Update(Address address)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Address_Update {0},{1},'{2}',{3},{4} ", address.Id, address.User.ID, address.StreetAddress, address.City.ID, address.State.ID, address.Country.ID));
        }

    }
}
