using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
 public   class GPSLOCData:DataLayer
    {
        public int Add(GPSLOC gpsloc)
        {
            return base.ExecuteNonQuery(string.Format("EXEC GPSLOC_Add {0},{1},{2},'{3}'", gpsloc.ID, gpsloc.Latitude, gpsloc.Longitude, gpsloc.Name));
        }
        public int Update(GPSLOC gpsloc)
        {
            return base.ExecuteNonQuery(string.Format("EXEC GPSLOC_Update{0},{1},{2},'{3}'", gpsloc.ID, gpsloc.Latitude, gpsloc.Longitude, gpsloc.Name));
        }
    }
}
