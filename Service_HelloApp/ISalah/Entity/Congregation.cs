using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
   public class Congregation
    {
        public int ID { get; set; }
        public int LocationID { get; set; }
        public string CongregaionCenterName { get; set; }
        public CongregationCenterType CongregationCenterType { get; set; }
        public PrayerTiming PrayerTiming { get; set; }
        public Sect sect { get; set; }
        public PreachingType PreachingTiming { get; set; }
        public Address Address { get; set; }
        public GPSLOC GPSLOC { get; set; }
        public int Street { get; set; }
        public City City { get; set; }
        public State State { get; set; }
        public Country Country { get; set; }
    }
}
