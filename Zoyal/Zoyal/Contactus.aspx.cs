using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class Contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            try
            {
                clearcontrols();
            }
            catch(Exception ex)
            {

            }
            }
        }

        public void clearcontrols()
        {
            try
            { 
            txt_email.Text="";
            txt_name.Text="";
            txt_phonenumber.Text="";
            txt_message.Text = "";
            txt_subject.Text="";
                }
            catch(Exception ex)
            {

            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                CONTACTUS obj = new CONTACTUS();
                obj.CONTACT_NAME = txt_name.Text;
                obj.CONTACT_EMAIL = txt_email.Text;
                obj.CONTACT_MESSAGE = txt_message.Text;
                obj.CONTACT_MODIFIEDBY = 1;
                obj.CONTACT_PHONENUMBER = txt_phonenumber.Text;
                obj.CONTACT_SUBJECT = txt_subject.Text;
                bool status = BLL.INSERTCONTACT(obj);
                if(status==true)
                {
                    BLL.ShowMessage(this,"Thank you for contacting us, one of our executive will reach you soon");
                    clearcontrols();
                }
                else
                {
                    BLL.ShowMessage(this, "Please contact administrator");
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}