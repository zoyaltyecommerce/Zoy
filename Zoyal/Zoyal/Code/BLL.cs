using System.Collections.Generic;
using System.Web.Security;
using Microsoft.Win32;
using System.Security.Cryptography;
using System;
using System.Text;
using System.Web.UI;
using System.Web;
using System.Data;
using System.Text.RegularExpressions;
using System.Diagnostics;
using System.Configuration;
using System.Data.SqlClient;
using Zoyal.Code;
namespace Zoyal.Code
{
    public class BLL
    {
        #region Messages

        public const string msg_Saved = "Information saved successfully";
        public const string msg_Updated = "Information updated successfully";
        public const string msg_UnSaved = "Information not saved";
        public const string msg_NotUpdated = "Information not Updated";
        public const string msg_ImageNotUploaded = "Please Upload Image";
        public const string msg_ImageRestrict = "Only .jpeg and .png files are allowed!";

        public string MyProperty { get; set; }

        #endregion

        #region crypto  Methods to Encrypt and Decrypt

        static string myKey = "3d5900ae-111a-45be-96b3-d9e4606ca793";
        static TripleDESCryptoServiceProvider cryptDES3 = new TripleDESCryptoServiceProvider();
        static MD5CryptoServiceProvider cryptMD5Hash = new MD5CryptoServiceProvider();

        internal static string Decrypt(string myString)
        {
            cryptDES3.Key = cryptMD5Hash.ComputeHash(ASCIIEncoding.ASCII.GetBytes(myKey));
            cryptDES3.Mode = CipherMode.ECB;
            ICryptoTransform desdencrypt = cryptDES3.CreateDecryptor();
            byte[] buff = Convert.FromBase64String(myString);
            return ASCIIEncoding.ASCII.GetString(desdencrypt.TransformFinalBlock(buff, 0, buff.Length));
        }

        internal static string Encrypt(string myString)
        {
            cryptDES3.Key = cryptMD5Hash.ComputeHash(ASCIIEncoding.ASCII.GetBytes(myKey));
            cryptDES3.Mode = CipherMode.ECB;
            ICryptoTransform desdencrypt = cryptDES3.CreateEncryptor();
            object MyASCIIEncoding = new ASCIIEncoding();
            byte[] buff = ASCIIEncoding.ASCII.GetBytes(myString);
            return Convert.ToBase64String(desdencrypt.TransformFinalBlock(buff, 0, buff.Length));
        }

        #endregion

        internal static DataTable ExecuteQuery(string Query)
        {
            return Dal.ExecuteQuery(Query);
        }


        internal static bool ExecuteNonQuery(string Query)
        {
            return Dal.ExecuteNonQuery(Query);
        }
        internal static void ShowMessage(Control ctrl, string Msg)
        {
            ScriptManager.RegisterStartupScript(ctrl, ctrl.GetType(), Guid.NewGuid().ToString(), "alert('" + Msg + "');", true);
        }

        internal static string ReplaceQuote(string str)
        {
            return str.Replace("'", "''");
        }

        public static DataTable createuser(LBR_SIGNUP obj)
        {

            DataTable status = BLL.ExecuteQuery("EXEC USP_LBR_SIGNUP @OPERATION='signup',@LBR_FIRSTNAME='" + obj.LBR_FIRSTNAME + "',@LBR_LASTNAME='" + obj.LBR_LASTNAME + "',@LBR_EMAILID='" + obj.LBR_EMAILID + "',@LBR_PASSWORD='" + BLL.Encrypt(obj.LBR_PASSWORD) + "',@LBR_PHONENUMBER='" + obj.LBR_PHONENUMBER + "',@LBR_ADDRESS='" + obj.LBR_ADDRESS + "',@LBR_CREATEDBY=1,@LBR_MODIFIEDBY=1,@LBR_MODIFIEDTYPE=1,@LBR_LOGINTYPE='" + obj.LBR_LOGINTYPE + "'");
            return status;
        }
        

       
    }
}