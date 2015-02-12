using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
   public class RightsData:DataLayer
    {
        public int Add(Rights rights)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Rights_Add {0},'{1}',{2}", rights.ID, rights.Right, rights.Role.ID));

        }
        public int Update(Rights rights)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Rights_Update {0},'{1}',{2}", rights.ID, rights.Right, rights.Role.ID));
        }

    }
}
