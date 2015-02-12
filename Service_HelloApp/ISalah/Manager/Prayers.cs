using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
   public class PrayerData:DataLayer
    {
        public int Add(Prayer prayer)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Prayer_Add {0},'{1}'", prayer.ID, prayer.Name));

        }
        public int Update(Prayer prayer)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Prayer_Update {0},'{1}'", prayer.ID, prayer.Name));
        }
    }
}
