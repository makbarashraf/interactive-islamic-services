using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
   public class CongregationData:DataLayer
    {
        public int Add(Congregation congregation)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Congregation_Add {0},{1},'{2}',{3},{4},{5},{6},'{7}',{8},'{9}',{10},{11},{12}", congregation.ID, congregation.LocationID, congregation.CongregaionCenterName, congregation.CongregationCenterType.Id, congregation.PrayerTiming.ID, congregation.sect.ID, congregation.PreachingTiming, congregation.Address, congregation.GPSLOC, congregation.Street, congregation.City, congregation.State, congregation.Country));
        }
        public int Update(Congregation congregation)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Congregation_Update {0},{1},'{2}',{3},{4},{5},{6},'{7}',{8},'{9}',{10},{11},{12}",congregation.ID,congregation.LocationID,congregation.CongregaionCenterName,congregation.CongregationCenterType.Id, congregation.PrayerTiming.ID,congregation.sect.ID, congregation.PreachingTiming,congregation.Address,congregation.GPSLOC,congregation.Street,congregation.City,congregation.State,congregation.Country));
        }

    }
}
