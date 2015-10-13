using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

namespace Zoyal
{
    public partial class _Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    clearcontrols();
                }
                catch (Exception exe)
                {

                }
            }
        }

        public void clearcontrols()
        {
                try
                 {
                txt_fullname.Text = "";
                txt_email.Text = "";
                txt_pwd.Text = "";
                txt_phonenumber.Text = "";

                 }
                 catch(Exception exe)
                 {
                        
                        
                 }
            }
        protected void btn_signup_Click(object sender, EventArgs e)
        {
            try
            {
                USERS obj = new USERS();
                obj.USER_FIRSTNAME = BLL.ReplaceQuote(txt_fullname.Text);
                obj.USER_EMAILID = BLL.ReplaceQuote(txt_email.Text);
                obj.USER_USERNAME = BLL.ReplaceQuote(txt_email.Text);
                obj.USER_PASSWORD = BLL.Encrypt(BLL.ReplaceQuote(txt_pwd.Text));
                obj.USER_PHONE = BLL.ReplaceQuote(txt_phonenumber.Text);
                obj.USER_MODIFIEDBY = 1;
                DataTable dt = BLL.checkusers(obj);
                DataTable dt_user = new DataTable();
                if (dt.Rows.Count == 0)
                {
                    dt_user = BLL.INSERTUSER(obj);
                    if (dt_user.Rows.Count > 0)
                    {
                        BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY CREATED");
                        clearcontrols();
                    }
                    else
                    {
                        BLL.ShowMessage(this, "contact admin");
                    }
                }
                else
                {
                    lbl_emailcheck.Visible = true;
                }


                MailMessage mailmessage = new MailMessage();
                mailmessage.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("linkskart.com");
                client.Credentials = new System.Net.NetworkCredential("info@linkskart.com", ".santhu143");
                mailmessage.From = new System.Net.Mail.MailAddress("info@linkskart.com");
                // mailmessage.From = new MailAddress("santhosh@pragatipadh.com");
                mailmessage.To.Add(dt_user.Rows[0]["USER_EMAILID"].ToString());
                // mailmessage.CC.Add(emailid);
                mailmessage.Subject = "your account is created";
                mailmessage.Body = "<p> Dear " + dt_user.Rows[0]["USER_EMAILID"].ToString() + " " + ",<br /> <br />Your account is successfully created " + BLL.Decrypt(dt_user.Rows[0]["USER_EMAILID"].ToString()) + " please <a href=\"http://www.linkskart.com\">Click Here</a> to visit LINKSKART.</p></div>";
                client.EnableSsl = false;
                try
                {
                    client.Send(mailmessage);
                    //SmtpMail.Send(eMail);
                }
                catch (Exception ae)
                {
                    // Label1.Text = ae.Message;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            USERS obj = new USERS();
            obj.USER_EMAILID = txt_username.Text.ToString().Trim();
            obj.USER_PASSWORD = txt_password.Text.ToString().Trim();
          
            
            DataTable dt_user = new DataTable();
           
                dt_user = BLL.LOGIN(obj);
                if (dt_user.Rows.Count > 0)
                {
                    BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                    clearcontrols();
                    lbllogin.Visible = false;
                    myaccount.Visible = true;
                    

            }
            else
                {
                    BLL.ShowMessage(this, "incorrect email or password");
                }
           
        }

        protected void btn_forget_Click(object sender, EventArgs e)
        {

            USERS obj = new USERS();
            obj.USER_EMAILID = txt_forgetemail.Text;
            MailMessage mailmessage = new MailMessage();
            DataTable dt_user = BLL.FORGETPWD(obj);
            mailmessage.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("linkskart.com");
            client.Credentials = new System.Net.NetworkCredential("info@linkskart.com", ".santhu143");
            mailmessage.From = new System.Net.Mail.MailAddress("info@linkskart.com");
            // mailmessage.From = new MailAddress("santhosh@pragatipadh.com");
            mailmessage.To.Add(dt_user.Rows[0]["USER_EMAILID"].ToString());
            // mailmessage.CC.Add(emailid);
            mailmessage.Subject = "Password request";
            mailmessage.Body = "<p> Dear " + dt_user.Rows[0]["USER_FIRSTNAME"].ToString() + ",<br /> <br />You password is " +BLL.Decrypt( dt_user.Rows[0]["USER_PASSWORD"].ToString()) + " please <a href=\"http://www.linkskart.com\">Click Here</a> to visit LINKSKART.</p></div>";
            client.EnableSsl = false;
            try
            {
                client.Send(mailmessage);
                //SmtpMail.Send(eMail);
            }
            catch (Exception ae)
            {
                // Label1.Text = ae.Message;
            }

        }
    }
}