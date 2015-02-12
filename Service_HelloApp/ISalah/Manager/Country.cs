using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
  public  class CountryData:DataLayer

    {
        public int Add(Country country)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Country_Add {0},'{1}'", country.ID,country.CountryName));
        }
        public int Update(Country country)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Country_Update {0},'{1}' ", country.ID, country.CountryName));
        }
    }
}
