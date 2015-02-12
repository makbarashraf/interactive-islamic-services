using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
    public class Address
    {
        public int Id { get; set; }
        public User User { get; set; }
        public int MyProperty { get; set; }
        public string StreetAddress { get; set; }
        public City City { get; set; }
        public State State { get; set; }
        public Country Country { get; set; }
    }
}
