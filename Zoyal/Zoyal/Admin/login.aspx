<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Zoyal.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Zoyalty</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">
<form id="form1" runat="server">   

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

             <h4><img src="img/logo.png" class="logo-name" alt="Flatize"></h4>   

            </div>
            <h3>Welcome to Admin</h3>
          <%--  <p>Login in. To see it in action.</p>--%>
            <div class="m-t" >
                <div class="form-group">
                    <asp:TextBox ID="txt_username" runat="server" class="form-control" placeholder="Username" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control" placeholder="Password" ></asp:TextBox>
                </div>
                 <asp:Button ID="btn_submit" runat="server" class="btn btn-primary block full-width m-b" Text="Login" OnClick="btn_submit_Click" />

                <a href="#"><small>Forgot password?</small></a>
                
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
