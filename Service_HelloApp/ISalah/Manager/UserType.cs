using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
  public  class UserTypeData:DataLayer
    {
      public int Add(UserType usertype)
      {
          return base.ExecuteNonQuery(string.Format("EXEC UserType_Add {0} ,'{1}'",usertype.ID,usertype.UserTypes);

      }
      public int Update(UserType usertype)
      {
          return base.ExecuteNonQuery(string.Format("EXEC UserType_Update{0},'{1}'",usertype.ID,usertype.UserTypes);
      }

    }
}
