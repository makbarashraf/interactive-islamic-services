using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
    public class SourceData : DataLayer
    {
        public int Add(Source source)
        {
            return base.ExecuteNonQuery(string.Format("EXEC SOURCE_ADD '{0}'", source.Name));
        }

        public int Update(Source source)
        {
            return base.ExecuteNonQuery(string.Format("EXEC SOURCE_UPDATE {0},'{1}'",source.ID, source.Name));
        }
    }
}
