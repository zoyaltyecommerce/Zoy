using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;
using System.Data;
using System.Data.SqlClient;

namespace Zoyal.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
            txt_username.Text = "";
            txt_password.Text = "";
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                ADMINLOGINS obj = new ADMINLOGINS();
                obj.USER_EMAIL = txt_username.Text.Trim();
                obj.USER_PASSWORD = txt_password.Text.Trim();
                DataTable dt_admin = new DataTable();
                dt_admin = BLL.ADMINLOGIN(obj);
                if (dt_admin.Rows.Count > 0)
                {
                    BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                    Response.Redirect("index.aspx");
                    clearcontrols();


                }
                else
                {
                    BLL.ShowMessage(this, "incorrecrt emailid or password");
                    clearcontrols();
                }


                }
            catch (Exception ex)
            {

            }
        }
    }
}