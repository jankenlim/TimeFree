using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeFree_csharp.Structure
{
    public class getAllTranTypesJSONResults
    {
        public String ResponseCode { get; set; }
        public String ResponseMessage { get; set; }
        public List<TransactionTypes> TransactionTypes { get; set; }
    }
}