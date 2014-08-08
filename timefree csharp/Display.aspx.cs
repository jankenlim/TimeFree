using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization.Json;
using TimeFree_csharp.Structure;
using System.Web.Script.Serialization;
using TimeFree_csharp.KioskServiceReference;

namespace TimeFree_csharp
{
    public partial class Display : System.Web.UI.Page
    {
        /*
        public CurrentlyServing servednum;
        public kiosk kioskService;
        public TFCurrentServingListResponse currResponse;
        public CurrentServingList currentServing;*/
        protected void Page_Load(object sender, EventArgs e)
        {
            /*kioskService = new kiosk();
            servednum = new CurrentlyServing();
            currResponse = new TFCurrentServingListResponse();
            currResponse = kioskService.getCurrentServingList();

            servednum.CurrentServingList = new List<CurrentServingList>();

            foreach (TFCurrentServing name in currResponse.CurrentServingList)
            {

                currentServing = new CurrentServingList();
                currentServing.counterNo = name.counterNo;
                currentServing.customerName = name.counterNo;
                currentServing.mobileNo = name.mobileNo;
                currentServing.queueNo = name.queueNo;
                currentServing.ServingID = name.ServingID;
                currentServing.TFUserID = name.TFUserID;
                currentServing.timeStamp = name.timeStamp;
                currentServing.tranType = name.tranType;
                servednum.CurrentServingList.Add(currentServing);


            }*/

            



            //var w = new WebClient();
            //string url = "http://tfqmsservicessit.azurewebsites.net/kioskJSON.svc/getCurrentServingListJSON";
            //var jsondata = string.Empty;
            //jsondata = w.DownloadString(url);
            //System.Diagnostics.Debug.WriteLine("laman ng url "+jsondata);
            ////getCurrentServingListJSONResult Result = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<getCurrentServingListJSONResult>(jsondata);
            //JavaScriptSerializer js = new JavaScriptSerializer();
            //servednum = js.Deserialize<CurrentlyServing>(jsondata);
            //System.Diagnostics.Debug.WriteLine("hi "+servednum.getCurrentServingListJSONResult.ResponseMessage);
        }

    }
}