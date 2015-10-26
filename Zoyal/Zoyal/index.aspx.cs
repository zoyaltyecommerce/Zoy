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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                   // if (Session["PRODUCTIMAGE"]!=null)
                  //  {
                        DataTable dt_img = BLL.GETALLPRODUCTS();
                    if(dt_img.Rows.Count>0)
                    { 
                        string images = "";
                        for (int i = 0; i < dt_img.Rows.Count; i++)
                        {

                            images = images + " <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.aspx?id="+ dt_img.Rows[i]["PRODUCT_ID"] + "' class='add-to-cart-product' onclick ='cart_visible();'> <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='imaheight' class='img-responsive' src='" + dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>"+dt_img.Rows[i]["PRODUCT_PRICE"]+"/Rs</span><h4><a href='shop-product-detail2.html'>" + dt_img.Rows[i]["PRODUCT_IMAGETITLE"].ToString() + "</a></h4> <span class='item-cat'><small><a href='#'>" + dt_img.Rows[i]["PRODUCT_NAME"].ToString()+" </a></small></span></div></div></div></div>";
                            // images = images + "<div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'> <span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product'><span><i class='fa fa-shopping-cart'></i></span></a></span><img alt='' class='img-responsive'  src='"+ dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div> </div>/div></div>";
                            //images = images + "<li><a href=''>" + dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "</a></li>";
                        }
                       // ClientScript.RegisterStartupScript(GetType(), "hiya", "document.getElementById('owl-product-slide').innerHTML =\""+ images +"\"", true);
                        product_img.InnerHtml = images;
                        // }
                    }
                    else
                    {

                    }

                }
                catch(Exception exe)
                {

                }
            }
        }
        [WebMethod]
        public static string GetCurrentTime(string name)
        {
            return "Hello " + name + Environment.NewLine + "The Current Time is: "
                    + DateTime.Now.ToString();
        }
        [WebMethod]
        public static string GETPRODUCTS(string name)
        {
            string images = "";
            DataTable dt_img = BLL.GETALLPRODUCTS();
            if (dt_img.Rows.Count > 0)
            {
                
                for (int i = 0; i < dt_img.Rows.Count; i++)
                {

                    images = images + "<div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product' onclick ='cart_visible();'> <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>";
                    // images = images + "<div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'> <span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product'><span><i class='fa fa-shopping-cart'></i></span></a></span><img alt='' class='img-responsive'  src='"+ dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div> </div>/div></div>";
                    //images = images + "<li><a href=''>" + dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "</a></li>";
                }
                //  PRODUCT_IMG.InnerHtml = images;
                // }
            }
            return images;

        }

    }
}