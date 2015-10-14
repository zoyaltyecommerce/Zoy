using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class WINDERINSERT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SUBMIT_Click(object sender, EventArgs e)
        {
            ADMINLOGINS obj = new ADMINLOGINS();
            obj.USER_NAME =  BLL.ReplaceQuote(TXTUSERNAME.Text.Trim());
            obj.USER_PASSWORD = BLL.ReplaceQuote(TXTPASSWORD.Text.Trim());
            obj.USER_EMAIL = BLL.ReplaceQuote(TXTEMAIL.Text.Trim());
            obj.USER_CREATEDBY = 1;
           
            obj.USER_MODIFIEDBY = TXTMODIFIEDP.Text.ToString();
         
          //  obj.USER_LOCATIONID = TXTLOCATION.Text.ToString();
            obj.USER_MOBILE = TXTMOBILE.Text.ToString();
           // obj.USER_STATUSID = TXTSTATUS.Text.ToString();
            obj.USER_ADDRESS = BLL.ReplaceQuote(TXTADDRESS.Text.Trim());
            obj.USER_ADMIN = false;
            obj.USER_ORGANIZATIONNAME = BLL.ReplaceQuote(ORGANIZATION.Text.Trim());

            bool status = BLL.winderinsert(obj);
        }
    }
}