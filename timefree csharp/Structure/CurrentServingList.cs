using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeFree_csharp.Structure
{
    public class CurrentServingList
    {
        public int ServingID { get; set; }
					public int TFUserID {get; set;}
					public String counterNo {get; set;}
					public String customerName {get; set;}
					public String mobileNo {get; set;}
					public String queueNo {get; set;}
					public String timeStamp {get; set;}
                    public String tranType { get; set; }
    }
}