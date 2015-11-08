using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class shop_cart_full : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {

                    if (Request.QueryString["id"] != null)
                    {
                        string productid = Request.QueryString["id"].ToString();
                        DataTable dt_product = BLL.GETPRODUCTBYID(productid);
                        if (Session["CART"] == null)
                        {

                            Session["CART"] = dt_product;

                        }
                        else
                        {
                            DataTable dt_temp = (DataTable)Session["CART"];
                            bool sta = false;
                            for (int i = 0; i < dt_temp.Rows.Count; i++)
                            {
                                if (dt_temp.Rows[i]["PRODUCT_ID"].ToString() == Request.QueryString["id"])
                                {
                                    sta = true;
                                }
                            }
                            if (sta == false)
                            {
                                DataTable dt_allpro = (DataTable)Session["CART"];
                                dt_product.Merge(dt_allpro);
                                // dt_allpro.Merge(dt_product);
                                Session["CART"] = dt_product;
                            }
                        }

                    }
                    if (Session["CART"] != null)
                    {

                        DataTable dt_productall = (DataTable)Session["CART"];
                        string html = parsehtmlcart(dt_productall);

                        tb_cart.InnerHtml = html;

                    }
                    else
                    {

                    }


                }
                catch (Exception exe)
                {

                }
                clearcontrol();

            }


        }

        public string parsehtmlcart(DataTable dt_product)
        {
            string content = "";
            for (int i = 0; i < dt_product.Rows.Count; i++)
            {
                content = content + "<tr id='delete_product" + dt_product.Rows[i]["PRODUCT_ID"] + "' class='cart_table_item'><td class='product-thumbnail'><img alt='' width='80' src='" + dt_product.Rows[i]["PRODUCT_IMAGEURL"] + "'/></td><td class='product-name'><a href='shop-product-sidebar.html' >" + dt_product.Rows[i]["PRODUCT_IMAGETITLE"] + "</a></td><td class='product-price'><span id='price_" + dt_product.Rows[i]["PRODUCT_PRICE"] + "' class='amount'>RS" + dt_product.Rows[i]["PRODUCT_PRICE"] + "</span></td><td class='product-quantity'><div class='quantity'><input type = 'button' class='minus' value='-' onclick='qtyminus(" + dt_product.Rows[i]["product_id"] + "," + dt_product.Rows[i]["PRODUCT_PRICE"] + ");'> <input type='text' ID='txtqty_" + dt_product.Rows[i]["PRODUCT_ID"] + "' class='input-text qty text' title='Qty' name='quantity'  value='1'  ><input type='button' ID='increement' class='plus' value='+' onclick='qtyincrees(" + dt_product.Rows[i]["PRODUCT_ID"] + "," + dt_product.Rows[i]["PRODUCT_PRICE"] + ");'></div></td><td class='product-subtotal'><span id='sub_amount_" + dt_product.Rows[i]["PRODUCT_ID"] + "' class='amount'>RS" + dt_product.Rows[i]["PRODUCT_PRICE"] + "</span></td><td class='product-remove'><a title = 'Remove this item'  class='remove' onclick='delete_cartitem(" + dt_product.Rows[i]["PRODUCT_ID"] + ");' href='#'><i class='fa fa-times-circle'></i></a></td></tr>";
            }
            return content;
        }
        public void clearcontrol()
        {
            try
            {
                txt_name.Text = "";
                txt_email.Text = "";
                txt_phonenumber.Text = "";
                txt_altphonenumber.Text = "";
                ddlcontry.SelectedIndex = 0;

                txt_state.Text = "";
                txt_city.Text = "";
                txt_addline1.Text = "";
                txt_addline2.Text = "";



            }
            catch (Exception ex)
            {

            }

        }
        protected void btn_procedchekout_Click(object sender, EventArgs e)
        {
            try
            {
                SHIPPINGADDRESS DA = new SHIPPINGADDRESS();
                DA.ADD_FIRSTNAME = txt_name.Text;
                DA.ADD_EMAILID = txt_email.Text;
                DA.ADD_PRIMARYPHONE = txt_phonenumber.Text;
                DA.ADD_ALTERNATEPHONE = txt_altphonenumber.Text;
                DA.ADD_COUNTRY = ddlcontry.SelectedItem.ToString();
                DA.ADD_STATE = txt_state.Text;
                DA.ADD_CITY = txt_city.Text;
                DA.ADD_ADDRESS = txt_addline1.Text;
                DA.ADD_ADDRESS2 = txt_addline2.Text;
                DA.ADD_CREATEDBY = 1;

                bool status = BLL.INSERTADDRESS(DA);
                if (status == true)
                {
                    BLL.ShowMessage(this, "your successfully inserted");
                    clearcontrol();
                }
                else
                {
                    BLL.ShowMessage(this, "contact to admin");
                }
            }
            catch (Exception exe)
            {

            }
        }

        protected void btn_conshaping_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("index.aspx");
            }
            catch (Exception ex)
            {

            }
        }

        [WebMethod]
        public static string delete_cartitemweb(int id)
        {

            DataTable dt_cart = (DataTable)HttpContext.Current.Session["CART"];


            string productid = id.ToString();

            DataRow[] result = dt_cart.Select("PRODUCT_ID = "+ id +"");
            foreach (DataRow row in result)
            {
                if (row["PRODUCT_ID"].ToString().Equals(""+ productid +""))
                { 
                    dt_cart.Rows.Remove(row);
                }
            }
            HttpContext.Current.Session["CART"] = dt_cart;
            return "true";

        }
    }
    
}