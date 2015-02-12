using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
    public class Rights
    {
        public int ID { get; set; }
        public string Right { get; set; }
        public Role Role { get; set; }
    }
}
