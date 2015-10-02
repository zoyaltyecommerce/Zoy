using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class Partnerwithus1 : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    clearcontrols();
                }
                catch (Exception ex)
                {

                }
            }
        }
        public void clearcontrols()
        {
            try
            {
               txt_yourname .Text = "";
                txt_email.Text = "";
                txt_phonenumber.Text = "";
                txt_subject.Text = "";
                txt_comments.Text = "";
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_partner_Click(object sender, EventArgs e)
        {
            try
            {
                PARTNERS obj = new PARTNERS();
                obj.PARTNER_NAME = txt_yourname.Text;
                obj.PARTNER_EMAIL = txt_email.Text;
                obj.PARTNER_PHONENUMBER = txt_phonenumber.Text;
                obj.PARTNER_SUBJECT = txt_subject.Text;
                obj.PARTNER_MESSAGE = txt_comments.Text;
                obj.PARTNER_MODIFIEDBY = 1;
                bool status = BLL.INSERTPARTNER(obj);
                if (status == true)
                {
                    BLL.ShowMessage(this, "Thank you for contacting us, one of our executive will reach you soon");
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