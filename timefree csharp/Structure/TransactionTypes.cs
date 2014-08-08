using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeFree_csharp.Structure
{
    public class TransactionTypes
    {
        public int SLA { get; set; }
        public String groupType { get; set; }
        public String iconName { get; set; }
        public String info { get; set; }
        public int prefix { get; set; }
        public String status { get; set; }
        public String tranType { get; set; }

        public int waitingCustomers { get; set; }
    }
}