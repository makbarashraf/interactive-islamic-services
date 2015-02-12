using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
    public class StateData:DataLayer
    {
        public int Add(State state)
        {
            return base.ExecuteNonQuery(string.Format("EXEC State_Add {0},'{1}'", state.ID, state.NAme));

        }
        public int Update(State state)
        {
            return base.ExecuteNonQuery(string.Format("EXEC State_Update {0},'{1}'", state.ID, state.NAme));
        }
    }
}
