using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
  public  class CityData:DataLayer
    {
        public int Add(City city)
        {
            return base.ExecuteNonQuery(string.Format("EXEC City_Add '{0}'", city.CityName));
        }
        public int Update(City city)
        {
            return base.ExecuteNonQuery(string.Format("EXEC City_Update {0},'{1}'", city.ID, city.CityName));
        }
    }
}
