using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ISalah.Entity
{
    public class User
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Password { get; set; }
        public Address Address{ get; set; }
        public UserType UserType  { get; set; }
        public Source Source  { get; set; }
        public string CreatedBy { get; set; }
        public string CreatedOn { get; set; }
        public string Voided { get; set; }
        public string VoidedBy { get; set; }
        public string VoidedOn { get; set; }
        public string ReasonVoided { get; set; }
        public string Email { get; set; }
        public int CNIC { get; set; }
        public string Gender { get; set; }
        public Sect Sect { get; set; }
        public GPSLOC GPSLOC { get; set; }


    }
}
