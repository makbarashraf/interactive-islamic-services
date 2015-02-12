using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ISalah.Entity;

namespace ISalah.Manager
{
    public class VotesData:DataLayer
    {
        public int Add(Votes votes)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Votes_Add {0},'{1}','{2}','{3}','{4}'", votes.ID, votes.VotesTo, votes.VotesBy, votes.Date_Time, votes.Comments));

        }
        public int Update(Votes votes)
        {
            return base.ExecuteNonQuery(string.Format("EXEC Votes_Update {0},'{1}','{2}','{3}','{4}'", votes.ID, votes.VotesTo, votes.VotesBy, votes.Date_Time, votes.Comments));
        }

    }
}
