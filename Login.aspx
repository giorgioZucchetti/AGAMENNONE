<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LOGIN</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <img src="img/Logo.png" class="img-fluid height:auto" />

                </div>

            </div>
        </div>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">Login</h3>
                                    </div>
                                    <div class="card-body">
                                        <%--<div class="form-floating mb-3">--%>
                                            <asp:Label ID="lblEMAIL" runat="server" Text="Indirizzo Email"></asp:Label>
                                            <asp:TextBox class="form-control" type="email" placeholder="name@example.com" ID="txtEMAIL" runat="server"></asp:TextBox>
                                        <%--</div>--%>
                                        <%--<div class="form-floating mb-3">--%>
                                            <asp:Label ID="lblPWD" runat="server" Text="Password"></asp:Label>
                                            <asp:TextBox class="form-control" ID="txtPWD" type="password" placeholder="Password" runat="server"></asp:TextBox>
                                        <%--</div>--%>
                                        <%--<div class="form-check mb-3">
                                            <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                            <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                        </div>--%>
                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Login" />
  
                                            <%--<a class="small" href="password.html">Forgot Password?</a>--%>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="Registrazione.aspx">Registrati</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <%--<div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                               
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>--%>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
