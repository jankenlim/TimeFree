using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization.Json;
using TimeFree_csharp.Structure;
using System.Web.Script.Serialization;
using System.Net;
using TimeFree_csharp.KioskServiceReference;
using System.Web.Services;
using System.Web.Script.Services;

namespace TimeFree_csharp
{
    public partial class KioskFewer : System.Web.UI.Page
    {
        public Transactions Transaction;
        public kiosk kioskService;
        public TFTranTypeDtlListResponse tranResponse;
        public TFUserResponse userResponse;
        public TransactionTypes tranTypes;
        public TFUserDetails userDetails;
        public string waitmsg;

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                
                kioskService = new kiosk();
                Transaction = new Transactions();
                tranResponse = new TFTranTypeDtlListResponse();
                userResponse = new TFUserResponse();
                userDetails = new TFUserDetails();                


                tranResponse = kioskService.getAllTranTypes();
                
                Transaction.Transactionlist = new List<TransactionTypes>();
                foreach (TFTranTypeDetails name in tranResponse.TransactionTypes)
                {
                    if (name.status == "Active")
                    {
                        tranTypes = new TransactionTypes();
                        tranTypes.groupType = name.groupType;
                        tranTypes.iconName = name.iconName;
                        tranTypes.info = name.info;
                        tranTypes.prefix = name.prefix;
                        tranTypes.SLA = name.SLA;
                        tranTypes.status = name.status;
                        tranTypes.tranType = name.tranType;
                        tranTypes.waitingCustomers = kioskService.getKioskWaitingCount(name.tranType).waitingCount;
                        Transaction.Transactionlist.Add(tranTypes);
                    }

                }
                
            }
            catch (Exception)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Pop", "<script type='text/javascript'>checkNet()</script>");
            }
        }

        protected void submitform(object sender, EventArgs e)
        {
            // mobilenumber.Text = mobile number input of user
            // nameholder.Text = 
            userResponse = new TFUserResponse();
            userDetails = new TFUserDetails();
            waitmsg = "You will be served in about";
            if (nameholder.Text.Trim() == "")
            {
                userDetails.customerName = "Guest";
            }
            else
            {
                userDetails.customerName = nameholder.Text;
            }
            userDetails.mobileNo = mobilenumber.Text;            
            userDetails.tranType = trantypehidden.Value;

            userResponse = kioskService.addTFUser(userDetails);
            userDetails.queueNo = userResponse.UserDetails.queueNo;
            userDetails.awt = userResponse.UserDetails.awt;
            if (int.Parse(userDetails.awt) == 0)
            {
                waitmsg = "You will be served shortly";
            }
            else if (int.Parse(userDetails.awt) > 0 && int.Parse(userDetails.awt) < 60)
            {
                userDetails.awt = userDetails.awt + " minutes.";
            }
            else if (int.Parse(userDetails.awt) == 60)
            {
                userDetails.awt = "1 hour.";
            }
            else
            {
                userDetails.awt = (int.Parse(userDetails.awt) / 60) + " Hours and " + (int.Parse(userDetails.awt) % 60) + " minutes.";
            }
            Transaction.Transactionlist = new List<TransactionTypes>();
            foreach (TFTranTypeDetails name in tranResponse.TransactionTypes)
            {
                if (name.status == "Active")
                {
                    tranTypes = new TransactionTypes();
                    tranTypes.groupType = name.groupType;
                    tranTypes.iconName = name.iconName;
                    tranTypes.info = name.info;
                    tranTypes.prefix = name.prefix;
                    tranTypes.SLA = name.SLA;
                    tranTypes.status = name.status;
                    tranTypes.tranType = name.tranType;
                    tranTypes.waitingCustomers = kioskService.getKioskWaitingCount(name.tranType).waitingCount;
                    Transaction.Transactionlist.Add(tranTypes);
                }

            }


            ClientScript.RegisterStartupScript(this.GetType(), "Pop", "<script type='text/javascript'>openModal()</script>");
        }

        


    }
}