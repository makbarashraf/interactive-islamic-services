using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
  public  class SectData:DataLayer
    {
        public int Add(Sect sect)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Sect_Add {0},'{1}'", sect.ID, sect.SectName));

        }
        public int Update(Sect sect)
        {
            return base.ExecuteNonQuery(string.Format("EXECSect_Update {0},'{1}'", sect.ID, sect.SectName));
        }
    }
}
