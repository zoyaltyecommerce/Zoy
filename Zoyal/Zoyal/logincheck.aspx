<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logincheck.aspx.cs" Inherits="Zoyal.logincheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body class="gray-bg">
<form id="form1" runat="server">   

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

             <h4><img src="Images/logo.png" class="logo-name" alt="Flatize"></h4>  

            </div>
            <h3>Welcome to Admin</h3>
            <h2 id="lblmsg" style="display:none">Enter your Email_id</h2>
          <%--  <p>Login in. To see it in action.</p>--%>
            <div class="m-t" >
                <div class="form-group">
                    <asp:TextBox ID="txt_username" runat="server" class="form-control" placeholder="Username" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="login"
                                                        ControlToValidate="txt_username" ErrorMessage="Enter valid Email" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="Dynamic" ForeColor="red" ID="RegularExpressionValidator2" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_username" >
 </asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control" placeholder="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="login"
                                                        ControlToValidate="txt_password" ErrorMessage="Enter valid password" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txt_fogetpassword" runat="server" class="form-control" placeholder="Username" style="display:none"  ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="forget"
                                                        ControlToValidate="txt_fogetpassword" ErrorMessage="Enter valid Email" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="Dynamic" ForeColor="red" ID="RegularExpressionValidator1" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_fogetpassword" >
 </asp:RegularExpressionValidator>
                </div>
                 <asp:Button ID="btn_submit" runat="server" class="btn btn-primary block full-width m-b" Text="Login" OnClick="btn_submit_Click1"  />
                <asp:Button ID="btn_forget" runat="server" class="btn btn-primary block full-width m-b" Text="send"   style="display:none" />

                <a id="forget" runat="server" href="#"  onclick="forgetpwd();" ><small>Forgot password?</small></a>
                 <a id="backlogin" runat="server" href="#"  onclick="backtologin();" style="display:none" ><small>Back to Login</small></a>
               
              
                
            </div>
            <p class="m-t"> <small>KonnectsU Technologies&copy; 2015</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    </form>
</body>
</html>
