using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
   public class CongregationCenterTypeNameData:DataLayer
    {
        public int Add(CongregationCenterType congregationcentertypename)
        {
            return base.ExecuteNonQuery(string.Format("EXEC CongregationCenterTypeName_Add {0},'{1}'", congregationcentertypename.Id, congregationcentertypename.congregationcentertype));

        }
        public int Update(CongregationCenterType congregationcentertypename)
        {
            return base.ExecuteNonQuery(string.Format("EXEC CongregationCenterTypeName_Update {0},'{1}'", congregationcentertypename.Id, congregationcentertypename.congregationcentertype));
        }
    }
}
