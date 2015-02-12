using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
  public  class PrayerTimingData:DataLayer
    {
        public int Add(PrayerTiming prayertiming)
        {
            return base.ExecuteNonQuery(string.Format("EXEC PrayerTiming_Add {0},'{1}',{2},{3},{4}", prayertiming.ID, prayertiming.prayertime,prayertiming.Prayer.ID, prayertiming.Congregation.ID, prayertiming.user.ID));
        }
        public int Update(PrayerTiming prayretiming)
        {
            return base.ExecuteNonQuery(string.Format("EXEC PrayerTiming_Update {0},'{1}',{2},{3},{4}",prayretiming.ID,prayretiming.prayertime,prayretiming.Prayer.ID,prayretiming.Congregation.ID,prayretiming.user.ID);
        }

    }
}
