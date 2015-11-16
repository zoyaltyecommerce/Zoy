using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class logincheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            try
            {
                Session["ZOYALUSER"] = null;
               // string productid = Request.QueryString["id"].ToString();
               // DataTable dt_product = BLL.GETPRODUCTBYID(productid);
                USERS obj = new USERS();
                obj.USER_EMAILID = txt_username.Text.ToString().Trim();
                obj.USER_PASSWORD = txt_password.Text.ToString().Trim();


                DataTable dt_user = new DataTable();

                dt_user = BLL.LOGIN(obj);
                if (dt_user.Rows.Count > 0)
                {
                    Session["ZOYALUSER"] = dt_user;
                    BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                    //Session["CART"] = dt_product;
                    Response.Redirect("shop-cart-full.aspx");

                   



                }
                else
                {
                    BLL.ShowMessage(this, "incorrect email or password");
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}