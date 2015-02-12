using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
   public class PrayerTiming
    {
        public int ID { get; set; }
        public string prayertime { get; set; }
        public Prayer Prayer { get; set; }
        public Congregation Congregation { get; set; }
        public User user { get; set; }
    }
}