using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
  public  class Votes
    {
        public int ID { get; set; }
        public string VotesTo { get; set; }
        public string VotesBy { get; set; }
        public DateTime Date_Time { get; set; }
        public string Comments { get; set; }

    }
}
