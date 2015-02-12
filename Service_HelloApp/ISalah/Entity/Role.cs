using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
    public class Role
    {
        public int ID { get; set; }
        public string UserRole { get; set; }
        public User User { get; set; }
    }
}
