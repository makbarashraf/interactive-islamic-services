using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
   public class RoleData:DataLayer
    {
        public int Add(Role role)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Role_Add {0},'{1}',{2}", role.ID, role.UserRole, role.User.ID));

        }
        public int Update(Role role)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Role_Update {0},'{1}',{2}", role.ID, role.UserRole, role.User.ID));
        }
    }
}
